class AddCompanyReferencesToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :profiles, :company, foreign_key: true
  end
end
