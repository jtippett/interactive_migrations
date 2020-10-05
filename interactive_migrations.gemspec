require_relative "lib/interactive_migrations/version"

Gem::Specification.new do |spec|
  spec.name = "interactive_migrations"
  spec.version = InteractiveMigrations::VERSION
  spec.authors = ["James Tippett"]
  spec.email = ["james.tippett@gmail.com"]

  spec.summary = "A rake task giving you interactive migrations in your Rails 4 project"
  spec.description = <<-DESCRIPTION
    If your rails project has migrations,
    you are prompted to run each one,
    with a printout of the code which will be run.

    You have the option of running or skipping the migration.
    Useful for production deploys where migrations are a delicate task.
    Extracted from a large production web app.
  DESCRIPTION

  spec.homepage = "http://github.com/jtippett/interactive_migrations"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_runtime_dependency "highline", "~> 1"
end
