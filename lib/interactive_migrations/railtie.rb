require "interactive_migrations"
require "rails"
module MyPlugin
  class Railtie < Rails::Railtie
    railtie_name :interactive_migrations

    rake_tasks do
      load "tasks/interactive_migrations.rake"
    end
  end
end
