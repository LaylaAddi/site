json.array!(@quotes) do |quote|
  json.extract! quote, :id, :client, :pages, :images, :hosting, :domain_name, :design, :terms_conditions, :user_registration, :user_registration_details, :budget, :user_id
  json.url quote_url(quote, format: :json)
end
