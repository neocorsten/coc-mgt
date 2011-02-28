class CreateCertificateTypes < ActiveRecord::Migration
  def self.up
    create_table :certificate_types do |t|
      t.string :typename

      t.timestamps
    end
  end

  def self.down
    drop_table :certificate_types
  end
end
