class AddGardenerToGarden < ActiveRecord::Migration[6.1]
  def change
    add_column :gardens, :gardener, :string
  end
end
