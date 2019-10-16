class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.boolean :active
    end
  end
end
