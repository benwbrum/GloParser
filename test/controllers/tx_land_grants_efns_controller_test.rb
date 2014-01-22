require 'test_helper'

class TxLandGrantsEfnsControllerTest < ActionController::TestCase
  setup do
    @tx_land_grants_efn = tx_land_grants_efns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tx_land_grants_efns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tx_land_grants_efn" do
    assert_difference('TxLandGrantsEfn.count') do
      post :create, tx_land_grants_efn: { control: @tx_land_grants_efn.control, field_note: @tx_land_grants_efn.field_note, file_no: @tx_land_grants_efn.file_no, pdf_Exists: @tx_land_grants_efn.pdf_Exists, type: @tx_land_grants_efn.type }
    end

    assert_redirected_to tx_land_grants_efn_path(assigns(:tx_land_grants_efn))
  end

  test "should show tx_land_grants_efn" do
    get :show, id: @tx_land_grants_efn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tx_land_grants_efn
    assert_response :success
  end

  test "should update tx_land_grants_efn" do
    patch :update, id: @tx_land_grants_efn, tx_land_grants_efn: { control: @tx_land_grants_efn.control, field_note: @tx_land_grants_efn.field_note, file_no: @tx_land_grants_efn.file_no, pdf_Exists: @tx_land_grants_efn.pdf_Exists, type: @tx_land_grants_efn.type }
    assert_redirected_to tx_land_grants_efn_path(assigns(:tx_land_grants_efn))
  end

  test "should destroy tx_land_grants_efn" do
    assert_difference('TxLandGrantsEfn.count', -1) do
      delete :destroy, id: @tx_land_grants_efn
    end

    assert_redirected_to tx_land_grants_efns_path
  end
end
