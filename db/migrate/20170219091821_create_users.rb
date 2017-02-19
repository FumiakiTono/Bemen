class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string  :name, null: false, index: true
      t.integer :age,  null: false
      t.string  :image
      t.timestamps
    end
  end
end
