class CreateEquipmentImages < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment_images do |t|
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
