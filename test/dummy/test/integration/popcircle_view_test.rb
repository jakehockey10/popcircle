require 'test_helper'

class PopcircleViewTest < ActionDispatch::IntegrationTest
  def setup
    get popcircle_show_path
  end

  test 'I have two example popcircles' do
    assert_select '.popcircle-box', count: 3
    assert_select '.popcircle-trigger', count: 3
    assert_select '.popcircle', count: 3
  end

  test 'I got a popcircle with images' do
    assert_select 'ul > li > a[href=""] > img', count: 5
  end

  test 'I got a popcircle with icons' do
    assert_select 'ul > li > a[href=""] > i.fa', count: 5
  end

  test 'I got a popcircle with stacked icons' do
    assert_select 'ul > li > a[href=""] > span.fa-stack > i.fa', count: 10
  end
end
