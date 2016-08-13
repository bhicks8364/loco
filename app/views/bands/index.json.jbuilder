json.array!(@bands) do |band|
  json.extract! band, :id, :name, :phone_number, :contact_name
  json.url band_url(band, format: :json)
end
