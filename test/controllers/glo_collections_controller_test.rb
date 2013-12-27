require 'test_helper'

class GloCollectionsControllerTest < ActionController::TestCase
  setup do
    @glo_collection = glo_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glo_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glo_collection" do
    assert_difference('GloCollection.count') do
      post :create, glo_collection: { name: @glo_collection.name }
    end

    assert_redirected_to glo_collection_path(assigns(:glo_collection))
  end

  test "should show glo_collection" do
    get :show, id: @glo_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glo_collection
    assert_response :success
  end

  test "should update glo_collection" do
    patch :update, id: @glo_collection, glo_collection: { name: @glo_collection.name }
    assert_redirected_to glo_collection_path(assigns(:glo_collection))
  end

  test "should destroy glo_collection" do
    assert_difference('GloCollection.count', -1) do
      delete :destroy, id: @glo_collection
    end

    assert_redirected_to glo_collections_path
  end
end
