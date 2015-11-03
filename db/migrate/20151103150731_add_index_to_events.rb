class AddIndexToEvents < ActiveRecord::Migration
  def change
    add_index :events, [:owner_id]
  end
end
