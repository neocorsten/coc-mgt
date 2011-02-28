# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Customer.delete_all
Status.delete_all
CertificateType.delete_all

Customer.create(
:name => 'SNCF',
:address => '4 rue qsdqsddf Paris, France',
:country => 'France')
Customer.create(
:name => 'Bombardier',
:address => '234 sqdq, Netphen, Germany',
:country => 'Germany')

Status.create(
:name => 'logged')
Status.create(
:name => 'completed')
