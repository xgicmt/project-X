class SponsorsController < ApplicationController
  def index
    
  end

  def info
    
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def new
  	@sponsor = Sponsor.new
  end

  def create
  	@sponsor = Sponsor.create(sponsor_params)
  	if @sponsor.save
  		redirect_to @sponsor
  	else
  		flash[:alert] = "error creating Sponsor"
  		render :new
  	end
  end

  def destroy
  end

  def edit
  	@sponsor = Sponsor.find(params[:id])
  end

  def update
    @sponsor = Sponsor.find(params[:id])
      if @sponsor.update_attributes(sponsor_params)
      	flash[:notice] = "Update successful"
      	redirect_to sponsor_path
      else
      	flash[:notice] = "Error updating Sponsor"
      	render :new
      end
  end
  private

  def sponsor_params
    params.require(:sponsor).permit(:name, :logo, :synopsis, :address_street, :address_city, :address_state, :address_zipcode, :phone_number, :website)
  end
end
