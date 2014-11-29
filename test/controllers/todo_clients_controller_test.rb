require 'test_helper'

class TodoClientsControllerTest < ActionController::TestCase
  setup do
    @todo_client = todo_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:todo_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create todo_client" do
    assert_difference('TodoClient.count') do
      post :create, todo_client: { notes: @todo_client.notes, title: @todo_client.title }
    end

    assert_redirected_to todo_client_path(assigns(:todo_client))
  end

  test "should show todo_client" do
    get :show, id: @todo_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @todo_client
    assert_response :success
  end

  test "should update todo_client" do
    patch :update, id: @todo_client, todo_client: { notes: @todo_client.notes, title: @todo_client.title }
    assert_redirected_to todo_client_path(assigns(:todo_client))
  end

  test "should destroy todo_client" do
    assert_difference('TodoClient.count', -1) do
      delete :destroy, id: @todo_client
    end

    assert_redirected_to todo_clients_path
  end
end
