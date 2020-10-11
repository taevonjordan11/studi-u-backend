class AddHoursToStudios < ActiveRecord::Migration[6.0]
  def change
    add_column :studios, :hours, :integer
  end
end
