require 'bundler/setup'
Bundler.require(:default)

Dir["./app/**/*.rb"].each { |file| require file }