require 'test_helper'

class WordingsControllerTest < ActionController::TestCase
  setup do
    @wording = wordings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wordings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wording" do
    assert_difference('Wording.count') do
      post :create, wording: { category_id: @wording.category_id, text: @wording.text, title: @wording.title }
    end

    assert_redirected_to wording_path(assigns(:wording))
  end

  test "should show wording" do
    get :show, id: @wording
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wording
    assert_response :success
  end

  test "should update wording" do
    patch :update, id: @wording, wording: { category_id: @wording.category_id, text: @wording.text, title: @wording.title }
    assert_redirected_to wording_path(assigns(:wording))
  end

  test "should destroy wording" do
    assert_difference('Wording.count', -1) do
      delete :destroy, id: @wording
    end

    assert_redirected_to wordings_path
  end
end
