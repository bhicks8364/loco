json.array!(@vendors) do |vendor|
  json.extract! vendor, :id, :name, :description, :phone_number, :website, :contact_name, :tagline, :category, :approved_at, :approved_by
  json.url vendor_url(vendor, format: :json)
end
