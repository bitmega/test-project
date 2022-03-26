class EquipmentImagesController < ApplicationController
  before_action :set_equipment

  def new
    @equipment_image = @equipment.equipment_images.new
  end

  def create
    @equipment_image = @equipment.equipment_images.new(equipment_image_params)

    if @equipment_image.save
      redirect_to @equipment
    else
      render :new
    end
  end

  private
  def equipment_image_params
    params.require(:equipment_image).permit(:image)
  end

  def set_equipment
    @equipment = Equipment.find(params[:equipment_id])
  end
end
