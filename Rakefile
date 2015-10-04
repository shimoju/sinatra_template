require_relative 'app'

require 'sinatra/activerecord/rake'
namespace :db do
  task :load_config do
    require_relative 'app'
  end
end

require 'sinatra/asset_pipeline/task'
Sinatra::AssetPipeline::Task.define! App

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
end
