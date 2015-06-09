namespace :db do
  desc "Clear the DB and fill with excellent sample data"
  task :populate => :environment do
    # Give us access to the gems from the rakefile
    require 'populator'
    require 'faker'

    # Clear out the data that we want to clear (maybe we want to keep some tables)

    # # Slow way
    # Owner.destroy_all
    # Dog.destroy_all

    # A better way to do this, but it one line:
    [Owner, Dog].each(&:destroy_all)

    # Add owners
    Owner.populate 30 do |owner|
      owner.name = Faker::Name.name
      owner.phone = Faker::PhoneNumber.phone_number
      # Add Dogs
      Dog.populate 1..3 do |dog|
        dog.owner_id = owner.id
        dog.name = Faker::Name.first_name
        dog.breed = Faker::App.name
        dog.age = rand(0..20)
      end

    end


  end
end