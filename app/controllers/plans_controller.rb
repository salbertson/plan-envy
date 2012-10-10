class PlansController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def new
    @plan = Plan.new
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def create
    @plan = Plan.new(params[:plan])

    if @plan.save
      redirect_to @plan, notice: 'Plan was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @plan = Plan.find(params[:id])

    if @plan.update_attributes(params[:plan])
      redirect_to @plan, notice: 'Plan was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @plan = Plan.find(params[:id])
    @plan.destroy

    redirect_to plans_url
  end
end
