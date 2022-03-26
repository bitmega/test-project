class EquipmentController < ApplicationController
  def index
    @equipments = current_user.equipments.all
  end

  def new
    @equipment = current_user.equipments.new
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = current_user.equipments.new(equipment_params)

    if @equipment.save
      redirect_to @equipment
    else
      render :new
    end
  end

  private
  def equipment_params
    params.require(:equipment).permit(:name, :description)
  end
end
