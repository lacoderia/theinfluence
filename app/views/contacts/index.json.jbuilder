json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :business, :phone
  json.url contact_url(contact, format: :json)
end
