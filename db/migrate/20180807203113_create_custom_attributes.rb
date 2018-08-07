class CreateCustomAttributes < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_attributes do |t|
      t.integer :parent_id
      t.string :parent_type
      t.text :c_attributes

      t.timestamps
    end
  end
end
