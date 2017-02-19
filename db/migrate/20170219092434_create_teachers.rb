class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string  :name, null: false, index: true
      t.integer :age,  null: false
      t.timestamps
    end
  end
end