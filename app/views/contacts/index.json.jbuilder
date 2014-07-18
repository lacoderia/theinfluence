json.array!(@contacts) do |contact|
  json.extract! contact, :id, :name, :email, :business, :phone, :message
  json.url contact_url(contact, format: :json)
end
