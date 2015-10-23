namespace :spot do
  desc "TODO"
  task populate: :environment do
    File.foreach(Rails.root+'db/data/GroupsLocationsScrubbed.txt') do |line|
      scrubbedName, rawLocation, scrubbedLocation, latitude, longitude = line.split("\t")
      if scrubbedLocation.split(',').count < 4
        city, state, zipcode = scrubbedLocation.split(',')
      else
        add1, city, state, zipcode = scrubbedLocation.split(',')
      end

      if scrubbedName != 'scrubbedName'
        scrubbedName = scrubbedName.strip
        add1 = add1.strip if add1
        city = city.strip if city
        state = state.strip if state
        zipcode = zipcode.strip if zipcode
        spot = Spot.find_or_create_by(name: scrubbedName)
        spot.update_attributes({name: scrubbedName, add1: add1, city: city, state: state, zipcode: zipcode, latitude: latitude, longitude: longitude})
      end
    end   
  end
end
