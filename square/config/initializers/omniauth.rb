Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "CONSUMERKEY", "SECRET"
end