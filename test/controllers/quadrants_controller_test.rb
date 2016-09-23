require 'test_helper'

class QuadrantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quadrant = quadrants(:one)
  end

  test "should get index" do
    get quadrants_url, as: :json
    assert_response :success
  end

  test "should create quadrant" do
    assert_difference('Quadrant.count') do
      post quadrants_url, params: { quadrant: { color: @quadrant.color, magnitude: @quadrant.magnitude, task_id: @quadrant.task_id, title: @quadrant.title } }, as: :json
    end

    assert_response 201
  end

  test "should show quadrant" do
    get quadrant_url(@quadrant), as: :json
    assert_response :success
  end

  test "should update quadrant" do
    patch quadrant_url(@quadrant), params: { quadrant: { color: @quadrant.color, magnitude: @quadrant.magnitude, task_id: @quadrant.task_id, title: @quadrant.title } }, as: :json
    assert_response 200
  end

  test "should destroy quadrant" do
    assert_difference('Quadrant.count', -1) do
      delete quadrant_url(@quadrant), as: :json
    end

    assert_response 204
  end
end
