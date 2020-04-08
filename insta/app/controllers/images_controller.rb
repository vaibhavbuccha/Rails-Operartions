class ImagesController < ApplicationController
  def index
  end

  def new
  	@image = Image.new
  end

  def create
  	@image = current_user.images.build(image_params)
  	if @image.save
  		redirect_to image_path(@image.id), notice: "Image uploaded Successfully"
  	else
  		render :new 
  	end

  end

  private
  def image_params
  	params.require(:image).permit(:image,:description)
  end

end
