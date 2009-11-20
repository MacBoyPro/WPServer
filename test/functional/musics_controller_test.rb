require 'test_helper'

class MusicsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music" do
    assert_difference('Music.count') do
      post :create, :music => { }
    end

    assert_redirected_to music_path(assigns(:music))
  end

  test "should show music" do
    get :show, :id => musics(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => musics(:one).to_param
    assert_response :success
  end

  test "should update music" do
    put :update, :id => musics(:one).to_param, :music => { }
    assert_redirected_to music_path(assigns(:music))
  end

  test "should destroy music" do
    assert_difference('Music.count', -1) do
      delete :destroy, :id => musics(:one).to_param
    end

    assert_redirected_to musics_path
  end
end
