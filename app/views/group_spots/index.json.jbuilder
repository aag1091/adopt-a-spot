json.array!(@group_spots) do |group_spot|
  json.extract! group_spot, :id, :group_id, :spot_id
  json.url group_spot_url(group_spot, format: :json)
end
