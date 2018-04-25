class AddDocumentToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :document, :string, null: false, index: true, unique: true
  end
end
