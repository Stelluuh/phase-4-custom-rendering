class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    # render json: cheeses, only: [:name]
    # render json: cheeses, except: [:created_at, :name]
    render json: cheeses, except: [:created_at, :updated_at], methods: [:summary] #summary is in the cheese.rb in the models folder
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
