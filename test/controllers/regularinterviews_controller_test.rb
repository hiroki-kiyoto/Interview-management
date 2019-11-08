require 'test_helper'

class RegularinterviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get regularinterviews_index_url
    assert_response :success
  end

  test "should get show" do
    get regularinterviews_show_url
    assert_response :success
  end

  test "should get new" do
    get regularinterviews_new_url
    assert_response :success
  end

  test "should get create" do
    get regularinterviews_create_url
    assert_response :success
  end

  test "should get update" do
    get regularinterviews_update_url
    assert_response :success
  end

  test "should get edit" do
    get regularinterviews_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get regularinterviews_destroy_url
    assert_response :success
  end

end
