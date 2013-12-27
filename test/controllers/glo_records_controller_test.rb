require 'test_helper'

class GloRecordsControllerTest < ActionController::TestCase
  setup do
    @glo_record = glo_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:glo_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create glo_record" do
    assert_difference('GloRecord.count') do
      post :create, glo_record: { abstract_url: @glo_record.abstract_url, collection_name: @glo_record.collection_name, file_number: @glo_record.file_number, file_url: @glo_record.file_url, glo_collection_id: @glo_record.glo_collection_id, glo_id: @glo_record.glo_id, grantee: @glo_record.grantee, patentee: @glo_record.patentee, pdf_url: @glo_record.pdf_url, remarks: @glo_record.remarks }
    end

    assert_redirected_to glo_record_path(assigns(:glo_record))
  end

  test "should show glo_record" do
    get :show, id: @glo_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @glo_record
    assert_response :success
  end

  test "should update glo_record" do
    patch :update, id: @glo_record, glo_record: { abstract_url: @glo_record.abstract_url, collection_name: @glo_record.collection_name, file_number: @glo_record.file_number, file_url: @glo_record.file_url, glo_collection_id: @glo_record.glo_collection_id, glo_id: @glo_record.glo_id, grantee: @glo_record.grantee, patentee: @glo_record.patentee, pdf_url: @glo_record.pdf_url, remarks: @glo_record.remarks }
    assert_redirected_to glo_record_path(assigns(:glo_record))
  end

  test "should destroy glo_record" do
    assert_difference('GloRecord.count', -1) do
      delete :destroy, id: @glo_record
    end

    assert_redirected_to glo_records_path
  end
end
