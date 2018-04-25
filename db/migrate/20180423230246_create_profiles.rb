class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :d_value
      t.integer :i_value
      t.integer :s_value
      t.integer :s_value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
