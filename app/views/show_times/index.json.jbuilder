json.array!(@show_times) do |show_time|
  json.extract! show_time, :id, :band_id, :event_id, :start_time, :end_time
  json.url show_time_url(show_time, format: :json)
end
