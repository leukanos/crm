namespace :db do
  desc "fill database"
  task :populate => :environment do
    require 'faker'

    [Account].each(&:delete_all)
    (1..1000).each do
      a = Account.new
      a.save
      a.name = Faker::Company.name
      at = a.contact_attributes.new
      at.attribute_type = 'mobile'
      at.value = Faker::PhoneNumber.phone_number
      at.save

      at = a.contact_attributes.new
      at.attribute_type = 'email'
      at.value = Faker::Internet.email
      at.save
    end
  end
end