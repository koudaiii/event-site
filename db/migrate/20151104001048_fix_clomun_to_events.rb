class FixClomunToEvents < ActiveRecord::Migration
  def change
    change_column :events, :owner_id, :integer, null: false
    change_column :events, :name, :string, null: false, limit: 50
    change_column :events, :place, :string, null: false, limit: 100
    change_column :events, :start_time, :datetime, null: false
    change_column :events, :end_time, :datetime, null: false
    change_column :events, :content, :string, null: false, limit: 2000
  end
end
