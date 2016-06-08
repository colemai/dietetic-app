json.array!(@measurements) do |measurement|
  json.extract! measurement, :id, :height, :weight, :pal
  json.url measurement_url(measurement, format: :json)
end
