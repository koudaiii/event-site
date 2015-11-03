class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :owner_id
      t.string :name
      t.string :place
      t.datatime :start_time
      t.datatime :end_time
      t.text :content

      t.timestamps null: false
    end
  end
end
