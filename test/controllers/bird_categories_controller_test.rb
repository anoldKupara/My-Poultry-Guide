require 'test_helper'

class BirdCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bird_category = bird_categories(:one)
  end

  test "should get index" do
    get bird_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_bird_category_url
    assert_response :success
  end

  test "should create bird_category" do
    assert_difference('BirdCategory.count') do
      post bird_categories_url, params: { bird_category: { breed: @bird_category.breed, name: @bird_category.name, purpose: @bird_category.purpose } }
    end

    assert_redirected_to bird_category_url(BirdCategory.last)
  end

  test "should show bird_category" do
    get bird_category_url(@bird_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_bird_category_url(@bird_category)
    assert_response :success
  end

  test "should update bird_category" do
    patch bird_category_url(@bird_category), params: { bird_category: { breed: @bird_category.breed, name: @bird_category.name, purpose: @bird_category.purpose } }
    assert_redirected_to bird_category_url(@bird_category)
  end

  test "should destroy bird_category" do
    assert_difference('BirdCategory.count', -1) do
      delete bird_category_url(@bird_category)
    end

    assert_redirected_to bird_categories_url
  end
end
