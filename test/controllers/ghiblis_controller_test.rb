require "test_helper"

class GhiblisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ghibli = ghiblis(:one)
  end

  test "should get index" do
    get ghiblis_url, as: :json
    assert_response :success
  end

  test "should create ghibli" do
    assert_difference('Ghibli.count') do
      post ghiblis_url, params: { ghibli: { phrase: @ghibli.phrase } }, as: :json
    end

    assert_response 201
  end

  test "should show ghibli" do
    get ghibli_url(@ghibli), as: :json
    assert_response :success
  end

  test "should update ghibli" do
    patch ghibli_url(@ghibli), params: { ghibli: { phrase: @ghibli.phrase } }, as: :json
    assert_response 200
  end

  test "should destroy ghibli" do
    assert_difference('Ghibli.count', -1) do
      delete ghibli_url(@ghibli), as: :json
    end

    assert_response 204
  end
end
