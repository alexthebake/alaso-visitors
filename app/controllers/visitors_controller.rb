class VisitorsController < ApplicationController
  def show
    @visitor = Visitor.find(params[:id])
  end

  def index
    @visitors = Visitor.all
  end
end
