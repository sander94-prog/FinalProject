OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '572197625704-0nfmub6dg377nc483kd5cjdnkvm2il1l.apps.googleusercontent.com', 'YugG9aIa64mETa2rUkxX4d7B', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
