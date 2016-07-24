require 'test_helper'

class PopcircleTest < ActionDispatch::IntegrationTest
  test 'I got a popcircle' do
    get popcircle_show_path
    assert_select '.popcircle-box', count: 1
    assert_select '.popcircle-trigger', count: 1
    assert_select '.popcircle', count: 1
    assert_select 'ul#pops', count: 1
    assert_select 'ul#pops > li > a[href=""] > i.fa.fa-pencil'
  end
end
