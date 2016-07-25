require 'test_helper'

class PopcircleViewTest < ActionDispatch::IntegrationTest
  test 'I have two example popcircles' do
    get popcircle_show_path
    assert_select '.popcircle-box', count: 2
    assert_select '.popcircle-trigger', count: 2
    assert_select '.popcircle', count: 2
  end

  test 'I got a popcircle with images' do
    get popcircle_show_path
    assert_select 'ul > li > a[href=""] > img', count: 5
  end

  test 'I got a popcircle with icons' do
    get popcircle_show_path
    assert_select 'ul > li > a[href=""] > i.fa', count: 5
  end
end
