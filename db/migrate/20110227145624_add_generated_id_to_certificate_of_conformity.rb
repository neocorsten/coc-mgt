class AddGeneratedIdToCertificateOfConformity < ActiveRecord::Migration
  def self.up
    add_column :certificate_of_conformities, :generated_id, :integer
  end

  def self.down
    remove_column :certificate_of_conformities, :generated_id
  end
end
