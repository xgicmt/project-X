class ExtrasController < ApplicationController


  def index

  end

  def new
    @prop = Property.find(params[:property_id])
    @extra = Extra.new 
  end

  def create
  	@extra = Extra.new(extras_params)
  	@extra.save
  end

  def edit
  end


private

  def extras_params
    params.require(:extra).permit(:title, :body, :property_id)
  end


end