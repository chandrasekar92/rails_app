require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FirstApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.assets.paths << Rails.root.join('assets', 'fonts')
    config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/

    #Default URL in Action Mailer view
    config.action_mailer.default_url_options = { host: 'localhost:3030' }

    #Adding images in the Action Mailer view
    config.action_mailer.asset_host = 'http://localhost:3030'
  end
end
