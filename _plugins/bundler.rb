require 'rubygems'
require 'bundler/setup'

Bundler.require :default

# Compass equivalent: `output_style`
Sprockets::Sass.options[:style] = :expanded

# Compass equivalent: `line_comments`
Sprockets::Sass.options[:line_numbers] = true

Sprockets::Helpers.configure do |config|
  config.prefix = '/assets'
  config.digest = true
end
