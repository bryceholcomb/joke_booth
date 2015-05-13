class JokesController < ApplicationController
  def index
    @jokes = Joke.order(:rating).reverse.take(10)
  end

  def show
    @joke = Joke.all.sample
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new(joke_params)
    if @joke.save
      redirect_to jokes_path, alert: "Your joke has been created"
    end
  end

  def update
    @joke = Joke.find_by(id: params[:id])

    if params[:vote] == "up"
      @joke.vote_up
      new_joke
    elsif params[:vote] == "down"
      @joke.vote_down
      new_joke
    end

  end

  private

  def new_joke
    respond_to do |format|
      format.json { render json: Joke.all.sample }
    end
  end

  def joke_params
    params.require(:joke).permit(:body)
  end
end
