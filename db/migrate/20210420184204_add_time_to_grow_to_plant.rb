class AddTimeToGrowToPlant < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :time_to_grow, :integer
  end
end
