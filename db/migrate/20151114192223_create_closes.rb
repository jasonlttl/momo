class CreateCloses < ActiveRecord::Migration
  def change
    create_table :closes do |t|
      t.integer :stock_id
      t.date :date
      t.float :open
      t.float :high
      t.float :low
      t.float :close
      t.float :volume
      t.float :adj_close
      t.timestamps null: false
    end
  end
end
