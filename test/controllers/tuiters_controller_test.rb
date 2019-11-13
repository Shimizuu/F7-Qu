require 'test_helper'

class TuitersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuiter = tuiters(:one)
  end

  test "should get index" do
    get tuiters_url
    assert_response :success
  end

  test "should get new" do
    get new_tuiter_url
    assert_response :success
  end

  test "should create tuiter" do
    assert_difference('Tuiter.count') do
      post tuiters_url, params: { tuiter: { content: @tuiter.content, user_id: @tuiter.user_id } }
    end

    assert_redirected_to tuiter_url(Tuiter.last)
  end

  test "should show tuiter" do
    get tuiter_url(@tuiter)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuiter_url(@tuiter)
    assert_response :success
  end

  test "should update tuiter" do
    patch tuiter_url(@tuiter), params: { tuiter: { content: @tuiter.content, user_id: @tuiter.user_id } }
    assert_redirected_to tuiter_url(@tuiter)
  end

  test "should destroy tuiter" do
    assert_difference('Tuiter.count', -1) do
      delete tuiter_url(@tuiter)
    end

    assert_redirected_to tuiters_url
  end
end
