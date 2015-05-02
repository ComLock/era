#OmniAuth.config.logger Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  #option :provider_ignores_state, true
  provider :developer unless Rails.env.production?
  #provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
end
