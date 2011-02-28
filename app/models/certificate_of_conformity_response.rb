class CertificateOfConformityResponse < ActiveRecord::Base
  belongs_to :Certificate_of_conformity, :class_name => "CertificateOfConformity", :foreign_key => "id"
end
