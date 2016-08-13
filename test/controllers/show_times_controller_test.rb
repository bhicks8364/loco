require 'test_helper'

class ShowTimesControllerTest < ActionController::TestCase
  setup do
    @show_time = show_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:show_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create show_time" do
    assert_difference('ShowTime.count') do
      post :create, show_time: { band_id: @show_time.band_id, end_time: @show_time.end_time, event_id: @show_time.event_id, start_time: @show_time.start_time }
    end

    assert_redirected_to show_time_path(assigns(:show_time))
  end

  test "should show show_time" do
    get :show, id: @show_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @show_time
    assert_response :success
  end

  test "should update show_time" do
    patch :update, id: @show_time, show_time: { band_id: @show_time.band_id, end_time: @show_time.end_time, event_id: @show_time.event_id, start_time: @show_time.start_time }
    assert_redirected_to show_time_path(assigns(:show_time))
  end

  test "should destroy show_time" do
    assert_difference('ShowTime.count', -1) do
      delete :destroy, id: @show_time
    end

    assert_redirected_to show_times_path
  end
end
