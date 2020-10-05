require "highline/import"

namespace :db do
  namespace :migrate do
    desc "Migrate Interactively"
    task interactive: :environment do
      pending_migrations = ActiveRecord::Migrator.open(ActiveRecord::Migrator.migrations_paths).pending_migrations

      logger = Logger.new(Rails.root.join("log", "migrations.log"))

      if pending_migrations.any?
        changed = false
        puts "You have #{pending_migrations.size} pending migrations:"
        pending_migrations.each do |pending_migration|
          puts "--------------------------------"
          puts "%4d %s" % [pending_migration.version, pending_migration.name]
          puts "--------------------------------"
          file = Rails.root.join pending_migration.filename
          puts File.read(file)
          puts "--------------------------------"
          if agree("run this migration? y/n")
            begin
              time = Benchmark.measure { ActiveRecord::Migrator.run(:up, ActiveRecord::Migrator.migrations_paths, pending_migration.version) }
              logger.info ("== %4d %s " % [pending_migration.version, pending_migration.name]).ljust(100, "=") + "\n"
              logger.info File.read(file)
              logger.info ("== Migrated in %.4fs " % time.real).ljust(100, "=") + "\n"
              changed = true
            rescue Exception => e
              puts "Migration #{pending_migration.version} failed or was cancelled and returned this message:"
              puts e
              puts "Continuing.."
            end
          else
            puts "skipping #{pending_migration.name}.\n"
          end
        end
        if changed
          if agree("You have performed one or more migrations. Rewrite schema.rb? y/n")
            Rake::Task["db:schema:dump"].invoke
          end
        end
        puts "done, with #{ActiveRecord::Migrator.open(ActiveRecord::Migrator.migrations_paths).pending_migrations.size} further migrations pending"
      else
        puts "no migrations pending."
      end
    end
  end # :migration
end # :db
