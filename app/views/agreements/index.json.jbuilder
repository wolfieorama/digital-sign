json.array!(@agreements) do |agreement|
  json.extract! agreement, :id, :name, :signature
  json.url agreement_url(agreement, format: :json)
end
