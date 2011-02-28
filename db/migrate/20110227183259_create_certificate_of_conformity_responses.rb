class CreateCertificateOfConformityResponses < ActiveRecord::Migration
  def self.up
    create_table :certificate_of_conformity_responses do |t|
      t.string :user_name
      t.string :certificate_of_conformity_id

      t.timestamps
    end
  end

  def self.down
    drop_table :certificate_of_conformity_responses
  end
end
