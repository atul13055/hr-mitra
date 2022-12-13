class AddAttrToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :profile_pick, :string
  end
end
