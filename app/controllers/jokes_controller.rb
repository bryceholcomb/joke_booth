class JokesController < ApplicationController
  def index
    @jokes = Joke.order(:rating).take(10)
  end

  def show
    @joke = Joke.all.sample
  end

  def new
    @joke = Joke.new
  end

  def create
    @joke = Joke.new
    if @joke.save
      redirect_to joke_path(@joke.id), alert: "Your joke has been created"
    end
  end
end
