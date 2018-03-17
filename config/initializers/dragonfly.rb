require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "94f1c75b612b644d05b8e88595cf1063f20486372969a3d380f9dddc4e29b0ac"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end
