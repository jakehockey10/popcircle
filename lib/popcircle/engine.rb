require 'font-awesome-rails'
require 'rails'

module Popcircle
  module Rails
    class Railtie < ::Rails::Railtie
    end
    class Engine < ::Rails::Engine
      initializer 'popcircle.assets.precompile' do |app|
        app.config.assets.precompile += %w(
          big_round.png
          one.png
          two.png
          three.png
          four.png
          five.png
        )
      end
      initializer 'popcircle.action_view' do
        ActiveSupport.on_load :action_view do
          include FontAwesome::Rails::IconHelper
        end
      end
    end
  end
end