class CreateUserDecorators < ActiveRecord::Migration
  def change
    create_table :user_decorators do |t|
      t.string :first_name
      t.string :family_name
      t.string :email

      t.timestamps null: false
    end
  end
end
