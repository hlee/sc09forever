json.array!(@classmates) do |classmate|
  json.extract! classmate, :name, :email, :qq, :description
  json.url classmate_url(classmate, format: :json)
end