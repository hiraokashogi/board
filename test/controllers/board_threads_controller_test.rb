require 'test_helper'

class BoardThreadsControllerTest < ActionController::TestCase
  setup do
    @board_thread = board_threads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_threads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_thread" do
    assert_difference('BoardThread.count') do
      post :create, board_thread: { name: @board_thread.name, view_flag: @board_thread.view_flag }
    end

    assert_redirected_to board_thread_path(assigns(:board_thread))
  end

  test "should show board_thread" do
    get :show, id: @board_thread
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @board_thread
    assert_response :success
  end

  test "should update board_thread" do
    patch :update, id: @board_thread, board_thread: { name: @board_thread.name, view_flag: @board_thread.view_flag }
    assert_redirected_to board_thread_path(assigns(:board_thread))
  end

  test "should destroy board_thread" do
    assert_difference('BoardThread.count', -1) do
      delete :destroy, id: @board_thread
    end

    assert_redirected_to board_threads_path
  end
end
