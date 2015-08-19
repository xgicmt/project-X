class PropertiesController < ApplicationController

  def index
    @props = Property.all
  end

  def show
    @prop = Property.find(params[:id])
    @sponsor = @prop.sponsor
    @leaders = Leadership_team_member.where(:sponsor => @sponsor)
    @propimages = @prop.propimages
  end
	
  def new
  	@prop = Property.new
  	@propimages = @prop.propimages.build
  end

  def create
  	@prop = Property.new(property_params)
  	@prop.sponsor_id = current_user.id
  	if @prop.save
  		if params[:propimages].present?
  		  params[:propimages]['images'].each { |image|
 		    @propimages = @prop.propimages.create!(:image_name => image)
 		  }
  		end
  		redirect_to @prop
  	else
  		flash[:alert] = "error creating Property"
  		render :new
  	end
  end

  def edit
  	@prop = Property.find(params[:id])
  	@propimages = @prop.propimages.build
  	@extras = @prop.extras.build
  end

  def update
  	@prop = Property.find(params[:id])
      if @prop.update_attributes(property_params)
      	if params[:propimages].present? #params[:propimages]['images'] 
      		params[:propimages]['images'].each { |image|
      			@propimages = @prop.propimages.create!(:image_name => image)
      		}
      	end
        if params[:extras].present?
        	@extras = @prop.extras.create!
        end
      	flash[:notice] = "Update successful"
      	redirect_to property_path
      else
      	flash[:notice] = "Error updating Sponsor"
      	render :new
      end
  end

private

  def property_params
    params.require(:property).permit(:name, :purchase_price, :min_investment, :targeted_irr, :targeted_hold_period, :targeted_yield, :address_street, :address_city, :address_state, :address_zipcode, :overview, :sponsor_id, propimages_attributes: [:id, :image_name, :property_id], extras_attributes: [:id, :title, :body, :property_id])
  end


end
