desc "Run template with defaults"
task :test do
  system "rails new tmp/rails_app -m template.rb"
end

desc "Remove test application"
task :clean do
  system "rm -rf tmp/rails_app"
end

task :test_postgres do
  system "rails new tmp/rails_app -d postgresql -m template.rb"
end

task :default => :test
