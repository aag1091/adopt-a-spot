namespace :spot do
  desc "TODO"
  task populate: :environment do
    File.foreach(Rails.root+'db/data/GroupsLocationsScrubbed.txt') do |line|
      scrubbedName, rawLocation, scrubbedLocation, latitude, longitude = line.split("\t")
      if scrubbedLocation.split(',').count < 4
        city, state, country = scrubbedLocation.split(',')
      elsif scrubbedLocation.split(',').count < 5
        add1, city, state, country = scrubbedLocation.split(',')
      else
        add1, add2, city, state, country = scrubbedLocation.split(',')
      end
      if state && state.split(' ').count > 1
        state, zipcode = state.split(' ')
      end

      if scrubbedName != 'scrubbedName'
        scrubbedName = scrubbedName.strip
        add1 = add1.strip if add1
        city = city.strip if city
        state = state.strip if state
        zipcode = zipcode.strip if zipcode
        spot = Spot.find_or_create_by(name: scrubbedName)
        category = Category.order("RANDOM()").first
        spot.update_attributes({name: scrubbedName, add1: add1, add2: add2, city: city, state: state, zipcode: zipcode, latitude: latitude, longitude: longitude, status: [true, false].sample, category_id: category.id})
      end
    end   
  end
end
