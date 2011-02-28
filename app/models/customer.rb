class Customer < ActiveRecord::Base
  has_many :certificate_of_conformities
end
