class VisitorsController < ApplicationController
  def show
    @visitor = Visitor.find(params[:id])
  end

  def index
    @visitors = Visitor.all
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def update
    @visitor = Visitor.find(params[:id])
    @visitor.update \
      first_name: params[:first_name],
      last_name:  params[:last_name],
      company:    params[:company]

    flash[:success] = 'Visitor successfully updated.'
    render :show
  end

  def destroy
    Visitor.find(params[:id]).destroy

    flash[:success] = 'Visitor successfully deleted.'
    redirect_to visitors_path
  end
end
