require 'test_helper'

class FirstinterviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get firstinterviews_index_url
    assert_response :success
  end

  test "should get show" do
    get firstinterviews_show_url
    assert_response :success
  end

  test "should get new" do
    get firstinterviews_new_url
    assert_response :success
  end

  test "should get create" do
    get firstinterviews_create_url
    assert_response :success
  end

  test "should get update" do
    get firstinterviews_update_url
    assert_response :success
  end

  test "should get edit" do
    get firstinterviews_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get firstinterviews_destroy_url
    assert_response :success
  end

end
