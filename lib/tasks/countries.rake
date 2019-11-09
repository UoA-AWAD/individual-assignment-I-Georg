
require 'faker'
namespace :countries do
  desc "seed countries"
  task seed_countries: :environment do
Country.destroy_all
150.times do |x|
Country.create!(
       country_name: Faker::Address.unique.country,
        lattitude: Faker::Address.latitude, 
        longitude: Faker::Address.longitude)
end
p 'countries faked'
  end

end


