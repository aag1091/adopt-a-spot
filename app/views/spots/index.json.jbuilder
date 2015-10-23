json.array!(@spots) do |spot|
  json.extract! spot, :id, :name, :add1, :add2, :city, :state, :zipcode, :status, :maintainer
  json.url spot_url(spot, format: :json)
end
