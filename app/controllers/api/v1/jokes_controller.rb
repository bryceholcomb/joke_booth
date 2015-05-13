class Api::V1::JokesController < ApplicationController
  def index
    respond_to do |format|
      format.json { render json: Joke.all }
    end
  end

  def show
    respond_to do |format|
      format.json { render json: Joke.find_by(id: params[:id]) }
    end
  end

  def random
    respond_to do |format|
      format.json { render json: Joke.all.sample }
    end
  end
end
