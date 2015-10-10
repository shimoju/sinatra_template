ENV['RACK_ENV'] ||= 'development'
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

require 'active_support'
Dotenv.load if defined?(Dotenv)

class App < Sinatra::Base
  configure do
    enable :sessions
    register Sinatra::ActiveRecordExtension

    set :assets_css_compressor, :sass
    set :assets_js_compressor, :uglifier
    set :assets_digest, false if settings.development?
    register Sinatra::AssetPipeline
    if defined?(RailsAssets)
      RailsAssets.load_paths.each { |path| settings.sprockets.append_path(path) }
    end
  end

  configure :production do
    set :session_secret, ENV['SESSION_SECRET']
    # use Rack::SSL
  end

  configure :development do
    set :session_secret, 'b666fc9b4d7c33c95d73ca9c11c855b80650c9075cc3df53f08e9e9d3ad3ba43c4a580ad7ad45284159d499087563ff9577c84da09a38a1e8928ed79ca772d4c'
    require 'sinatra/reloader'
    register Sinatra::Reloader
    use Rack::LiveReload
    set :slim, pretty: true, sort_attrs: false
  end

  get '/' do
    slim :index
  end
end
