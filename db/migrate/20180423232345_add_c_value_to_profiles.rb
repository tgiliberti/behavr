class AddCValueToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :c_value, :integer
  end
end
