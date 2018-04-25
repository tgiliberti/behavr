class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name, unique: true
      t.integer :d_value, default: 0
      t.integer :i_value, default: 0
      t.integer :s_value, default: 0
      t.integer :c_value, default: 0

      t.timestamps
    end
  end
end
