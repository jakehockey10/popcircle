require 'test_helper'

class PopcircleTest < Minitest::Test

  def test_has_version_number
    refute_nil ::Popcircle::Rails::VERSION
  end

end
