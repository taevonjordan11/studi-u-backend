class CreateStudios < ActiveRecord::Migration[6.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :description
      t.string :image
      t.integer :rating
      t.integer :price

      t.timestamps
    end
  end
end
