class RemoveAgeFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :age, :string
  end
end
