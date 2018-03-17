require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"
require 'csv'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)



module PostconsumptionStats
  class Application < Rails::Application

    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
      
    config.after_initialize do
      # Global var used through the app
      csv_text = File.read(Rails.root.join('lib', 'seeds', 'Proyecciones_de_poblaci_n_por_Departamento_Colombia.csv'))
      csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
      $POPULATION_PER_DEPARTMENT = {}
      csv.each do |row|
        $POPULATION_PER_DEPARTMENT[row[1]] = row[2]
      end
      puts 'Loaded: Proyecciones_de_poblaci_n_por_Departamento_Colombia.csv'
    end
  end
end
