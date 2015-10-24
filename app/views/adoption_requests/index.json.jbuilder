json.array!(@adoption_requests) do |adoption_request|
  json.extract! adoption_request, :id, :group_name, :no_of_volunteers, :first_name, :last_name, :add1, :city, :state, :zipcode, :email, :phone, :category_id
  json.url adoption_request_url(adoption_request, format: :json)
end
