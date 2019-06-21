class AddColumnNum < ActiveRecord::Migration[5.2]
  def change
    add_column :num, :name, :string
  end
end
