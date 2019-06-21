class AddNameToNum < ActiveRecord::Migration[5.2]
  def change
    add_column :nums, :name, :string
  end
end
