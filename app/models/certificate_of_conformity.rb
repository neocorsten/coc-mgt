class CertificateOfConformity < ActiveRecord::Base
  belongs_to :customer, :class_name => 'Customer', :foreign_key => 'customer_id'
  belongs_to :status, :class_name => 'Status', :foreign_key => 'status_id'
  belongs_to :certificatetype, :class_name => 'CertificateType', :foreign_key => 'certificate_type_id'
  has_many :certificate_of_conformity_response, :class_name => 'CertificateOfConformityResponse', :foreign_key => 'certificate_of_conformity_id'
 
=begin 
  validates_presence_of :customer_id, :on => :create, :message => "can't be blank"
  validates_presence_of :delivery_note_nb, :on => :create, :message => "can't be blank"
  validates_presence_of :part_number, :on => :create, :message => "can't be blank"
  validates_presence_of :assembly_code, :on => :create, :message => "can't be blank"  
  validates_presence_of :certificate_type_id, :on => :create, :message => "can't be blank"
=end
  
  validates :customer_id, :delivery_note_nb, :part_number, :assembly_code, :certificate_type_id, :presence => true  
end
