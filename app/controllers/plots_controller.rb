class PlotsController < ApplicationController

  def index
    plots = Plot.all
    render json: plots
  end

end
