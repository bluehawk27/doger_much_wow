class CreateElephants < ActiveRecord::Migration
  def change
    create_table :elephants do |t|
      t.string :name

      t.timestamps
    end
  end
end
