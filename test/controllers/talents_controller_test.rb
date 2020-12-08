require 'test_helper'

class TalentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @talent = talents(:one)
  end

  test "should get index" do
    get talents_url, as: :json
    assert_response :success
  end

  test "should create talent" do
    assert_difference('Talent.count') do
      post talents_url, params: { talent: { description: @talent.description, email: @talent.email, image_url: @talent.image_url, name: @talent.name, work_image_url: @talent.work_image_url, work_url: @talent.work_url } }, as: :json
    end

    assert_response 201
  end

  test "should show talent" do
    get talent_url(@talent), as: :json
    assert_response :success
  end

  test "should update talent" do
    patch talent_url(@talent), params: { talent: { description: @talent.description, email: @talent.email, image_url: @talent.image_url, name: @talent.name, work_image_url: @talent.work_image_url, work_url: @talent.work_url } }, as: :json
    assert_response 200
  end

  test "should destroy talent" do
    assert_difference('Talent.count', -1) do
      delete talent_url(@talent), as: :json
    end

    assert_response 204
  end
end
