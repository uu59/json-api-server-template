require_relative "./app.rb"

namespace :db do
  desc "migration"
  task :migrate do
    system "bundle exec ridgepole -c config/database.yml --apply"
  end

  desc "migration (dry run)"
  task :"migrate:dryrun" do
    system "bundle exec ridgepole -c config/database.yml --apply --dry-run"
  end

  desc "create dummy data"
  task :dummydata do
    p User.find_or_create_by(name: "test")
  end
end

namespace :app do
  desc "start server"
  task :start do
    system "bundle exec puma"
  end

  desc "start server (for development)"
  task :"start:dev" do
    system "bundle exec rerun -b rackup"
  end
end
