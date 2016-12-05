require 'test_helper'

class StupidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stupid = stupids(:one)
  end

  test "should get index" do
    get stupids_url
    assert_response :success
  end

  test "should get new" do
    get new_stupid_url
    assert_response :success
  end

  test "should create stupid" do
    assert_difference('Stupid.count') do
      post stupids_url, params: { stupid: { name: @stupid.name } }
    end

    assert_redirected_to stupid_url(Stupid.last)
  end

  test "should show stupid" do
    get stupid_url(@stupid)
    assert_response :success
  end

  test "should get edit" do
    get edit_stupid_url(@stupid)
    assert_response :success
  end

  test "should update stupid" do
    patch stupid_url(@stupid), params: { stupid: { name: @stupid.name } }
    assert_redirected_to stupid_url(@stupid)
  end

  test "should destroy stupid" do
    assert_difference('Stupid.count', -1) do
      delete stupid_url(@stupid)
    end

    assert_redirected_to stupids_url
  end
end
