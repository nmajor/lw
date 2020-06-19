class TagsController < ApplicationController
  def new
  	@tag = Tag.new
  	@plant = Plant.find(params[:plant_id])
  end

  def create
	# variable with a plant object (objects need to be saved in db)
  	@plant = Plant.find(params[:plant_id])

	# variable with a tag object (objects need to be saved in db)
  	@tag = Tag.new(tag_params)
  	if @tag.save

		# create the join object
		PlantTag.create(plant: @plant, tag: @tag)

  		redirect_to garden_path(@plant.garden)
  	else
  		render :new
  	end
  end

  private

  def tag_params
  	params.require(:tag).permit(:name)
  end
end
