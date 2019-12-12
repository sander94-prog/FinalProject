rails generate controller Sessions create destroy
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '393653398369-5ofbnaejtklhu71kpqvt5akcch6i7f6e.apps.googleusercontent.com', 'IsWxb_uMvKGFqgBANfhrKciA', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
