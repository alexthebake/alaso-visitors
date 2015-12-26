class VisitsController < ApplicationController
  def show
    @visit = Visit.find(params[:id])
  end

  def index
    @visits = Visit.all
  end

  def create
    @visit = Visit.new \
      visitor: find_or_create_visitor,
      employee: params[:employee]
    if @visit.save
      flash[:success] = 'You successfully checked in!'
      redirect_to root_path
    else
      render :new
    end
  end

  def checkout
    visit = Visit.find(params[:id])
    visit.update(checked_out_at: DateTime.now)

    flash[:success] = 'You successfully checked out!'
    redirect_to root_path
  end

  private

  def find_or_create_visitor
    visitor = Visitor.find_by_first_and_last_name(params[:first_name], params[:last_name])
    return visitor unless visitor.nil?

    Visitor.create \
      first_name: params[:first_name],
      last_name:  params[:last_name],
      company:    params[:company]
  end
end
