require 'test_helper'

class PopcircleViewTest < ActionDispatch::IntegrationTest
  test 'I got a popcircle' do
    get popcircle_show_path
    assert_select '.popcircle-box', count: 1
    assert_select '.popcircle-trigger', count: 1
    assert_select '.popcircle', count: 1
    assert_select 'ul#pops', count: 1
    assert_select 'ul#pops > li > a[href=""] > img', count: 5
  end
end
