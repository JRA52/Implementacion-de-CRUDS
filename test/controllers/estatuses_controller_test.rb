require "test_helper"

class EstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estatus = estatuses(:one)
  end

  test "should get index" do
    get estatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_estatus_url
    assert_response :success
  end

  test "should create estatus" do
    assert_difference("Estatus.count") do
      post estatuses_url, params: { estatus: { name: @estatus.name } }
    end

    assert_redirected_to estatus_url(Estatus.last)
  end

  test "should show estatus" do
    get estatus_url(@estatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_estatus_url(@estatus)
    assert_response :success
  end

  test "should update estatus" do
    patch estatus_url(@estatus), params: { estatus: { name: @estatus.name } }
    assert_redirected_to estatus_url(@estatus)
  end

  test "should destroy estatus" do
    assert_difference("Estatus.count", -1) do
      delete estatus_url(@estatus)
    end

    assert_redirected_to estatuses_url
  end
end
