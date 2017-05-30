require 'test_helper'

class HisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hi = his(:one)
  end

  test "should get index" do
    get his_url
    assert_response :success
  end

  test "should get new" do
    get new_hi_url
    assert_response :success
  end

  test "should create hi" do
    assert_difference('Hi.count') do
      post his_url, params: { hi: { count: @hi.count, desc: @hi.desc, name: @hi.name } }
    end

    assert_redirected_to hi_url(Hi.last)
  end

  test "should show hi" do
    get hi_url(@hi)
    assert_response :success
  end

  test "should get edit" do
    get edit_hi_url(@hi)
    assert_response :success
  end

  test "should update hi" do
    patch hi_url(@hi), params: { hi: { count: @hi.count, desc: @hi.desc, name: @hi.name } }
    assert_redirected_to hi_url(@hi)
  end

  test "should destroy hi" do
    assert_difference('Hi.count', -1) do
      delete hi_url(@hi)
    end

    assert_redirected_to his_url
  end
end
