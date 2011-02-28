class CreateCertificateOfConformities < ActiveRecord::Migration
  def self.up
    create_table :certificate_of_conformities do |t|
      t.integer :customer_id
      t.integer :delivery_note_nb
      t.integer :status_id
      t.string :part_number
      t.string :assembly_code
      t.integer :certificate_type_id


      t.timestamps
    end
  end

  def self.down
    drop_table :certificate_of_conformities
  end
end
