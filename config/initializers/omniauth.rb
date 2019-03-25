OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '548388184378-cj2vt49h1bj28kv9esn7hfqat8sddvab.apps.googleusercontent.com', 'uIrtVRbsrLtdNHeJt6OUIFdQ', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end