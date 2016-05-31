json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :surname, :age
  json.url customer_url(customer, format: :json)
end
