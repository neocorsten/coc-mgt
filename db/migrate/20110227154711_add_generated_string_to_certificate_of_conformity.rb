class AddGeneratedStringToCertificateOfConformity < ActiveRecord::Migration
  def self.up
    add_column :certificate_of_conformities, :generated_string, :string
  end

  def self.down
    remove_column :certificate_of_conformities, :generated_string
  end
end
