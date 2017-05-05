require 'bundler/setup'
Bundler.require(:default)

Dir["./app/**/*.rb"].sort.each { |file| require file }