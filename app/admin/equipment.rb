ActiveAdmin.register Equipment do
  permit_params :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :image_count do |equipment|
      equipment.equipment_images.count
    end
    actions
  end

  filter :name

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
    end
    f.actions
  end

end
