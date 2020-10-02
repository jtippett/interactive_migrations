require "interactive_migrations/version"

module InteractiveMigrations
  class Error < StandardError; end

  require 'interactive_migrations/railtie' if defined?(Rails)
end
