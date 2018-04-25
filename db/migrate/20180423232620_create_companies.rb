class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :document
      t.string :allowed_domains

      t.timestamps
    end
  end
end
