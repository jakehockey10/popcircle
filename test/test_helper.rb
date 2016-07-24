ENV['RAILS_ENV'] = 'test'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'dummy/config/environment.rb'
require 'rails/test_help'

require 'minitest/autorun'

Rails.backtrace_cleaner.remove_silencers!