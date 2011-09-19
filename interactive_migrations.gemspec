Gem::Specification.new do |s|
 s.name        = "interactive_migrations"
 s.version     = '0.0.1'
 s.authors     = ["James Tippett"]
 s.email       = ["hi@jamestippett.com"]

 s.summary     = "A rake task giving you interactive migrations in your rails 3 project"
 s.description = "If your rails project has migrations, you are prompted to run each one, with a printout of the code which will be run. You have the option of running or skipping the migration. Useful for production deploys where migrations are a delicate task. Extracted from a large production web app."
 s.homepage    = "http://github.com/jtippett/interactive_migrations"
 s.files = `git ls-files`.split("\n")
end