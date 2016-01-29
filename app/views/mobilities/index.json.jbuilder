json.array!(@mobilities) do |mobility|
  json.extract! mobility, :id, :name, :rank
  json.url mobility_url(mobility, format: :json)
end
