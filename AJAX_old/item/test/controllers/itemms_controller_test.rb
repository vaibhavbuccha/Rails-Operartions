require 'test_helper'

class ItemmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @itemm = itemms(:one)
  end

  test "should get index" do
    get itemms_url
    assert_response :success
  end

  test "should get new" do
    get new_itemm_url
    assert_response :success
  end

  test "should create itemm" do
    assert_difference('Itemm.count') do
      post itemms_url, params: { itemm: { capital: @itemm.capital, state: @itemm.state } }
    end

    assert_redirected_to itemm_url(Itemm.last)
  end

  test "should show itemm" do
    get itemm_url(@itemm)
    assert_response :success
  end

  test "should get edit" do
    get edit_itemm_url(@itemm)
    assert_response :success
  end

  test "should update itemm" do
    patch itemm_url(@itemm), params: { itemm: { capital: @itemm.capital, state: @itemm.state } }
    assert_redirected_to itemm_url(@itemm)
  end

  test "should destroy itemm" do
    assert_difference('Itemm.count', -1) do
      delete itemm_url(@itemm)
    end

    assert_redirected_to itemms_url
  end
end
