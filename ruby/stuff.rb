require 'bundler'
Bundler.require
require 'sinatra'
require 'sinatra/asset_pipeline'
require 'sinatra/advanced_routes'
require 'uglifier'
require 'json'
require 'opal'
require 'opal-sprockets'

class SchoolWebsite < Sinatra::Base
  Slim::Engine.set_default_options streaming: true
  #set :assets_js_compressor, :uglifier if settings.production?
  register Sinatra::AssetPipeline
  register Sinatra::AdvancedRoutes
  Opal.paths.each { |path| SchoolWebsite.sprockets.append_path path }
  SchoolWebsite.sprockets.js_compressor = :uglify if settings.production?
  get '/' do
    slim :index
  end
  get '/about' do
    slim :about
  end
  get '/home' do
    redirect :/
  end
end
