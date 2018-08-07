class CreateModelAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :model_attributes do |t|
      t.string :parent_type
      t.text :m_attributes

      t.timestamps
    end
  end
end
