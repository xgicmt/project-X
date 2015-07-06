class PropertiesController < ApplicationController
	def index
		@props = Property.all
	end

    def show
       @prop = Property.find(params[:id])
    end
	def create

	end

	def edit
	end


end
