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

  private

  def joke_params
    params.require(:joke).permit(:body)
  end
end
