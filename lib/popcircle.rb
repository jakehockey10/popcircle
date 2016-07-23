require 'popcircle/version'

module Popcircle
  class Engine < ::Rails::Engine
    initializer 'popcircle.assets.precompile' do |app|
      app.config.assets.precompile += %w(big_round.png one.png two.png three.png four.png five.png)
    end
  end
end
