class CreateNums < ActiveRecord::Migration[5.2]
  def change
    create_table :nums do |t|
      t.integer :num
      t.timestamps
    end
  end
end
