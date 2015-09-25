json.array!(@guys) do |guy|
  json.extract! guy, :id, :name, :person
  json.url guy_url(guy, format: :json)
end
