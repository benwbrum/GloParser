require 'test_helper'

class TxLandGrantsSpecialCollectionsControllerTest < ActionController::TestCase
  setup do
    @tx_land_grants_special_collection = tx_land_grants_special_collections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tx_land_grants_special_collections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tx_land_grants_special_collection" do
    assert_difference('TxLandGrantsSpecialCollection.count') do
      post :create, tx_land_grants_special_collection: { abstract2: @tx_land_grants_special_collection.abstract2, abstract: @tx_land_grants_special_collection.abstract, acquittance_acres: @tx_land_grants_special_collection.acquittance_acres, acquittance_date: @tx_land_grants_special_collection.acquittance_date, acquittance_vol: @tx_land_grants_special_collection.acquittance_vol, acquitttance_no: @tx_land_grants_special_collection.acquitttance_no, acres: @tx_land_grants_special_collection.acres, adj_acres: @tx_land_grants_special_collection.adj_acres, adj_county: @tx_land_grants_special_collection.adj_county, aka: @tx_land_grants_special_collection.aka, certificate: @tx_land_grants_special_collection.certificate, class: @tx_land_grants_special_collection.class, class_prefix: @tx_land_grants_special_collection.class_prefix, class_suffix: @tx_land_grants_special_collection.class_suffix, collection_type: @tx_land_grants_special_collection.collection_type, comment: @tx_land_grants_special_collection.comment, control: @tx_land_grants_special_collection.control, county: @tx_land_grants_special_collection.county, district: @tx_land_grants_special_collection.district, doc_adoptable: @tx_land_grants_special_collection.doc_adoptable, external_comment: @tx_land_grants_special_collection.external_comment, file_no: @tx_land_grants_special_collection.file_no, glo_id: @tx_land_grants_special_collection.glo_id, internal_comment: @tx_land_grants_special_collection.internal_comment, orig_grantee: @tx_land_grants_special_collection.orig_grantee, page: @tx_land_grants_special_collection.page, page: @tx_land_grants_special_collection.page, part_section: @tx_land_grants_special_collection.part_section, patent_date: @tx_land_grants_special_collection.patent_date, patent_no: @tx_land_grants_special_collection.patent_no, patent_vol: @tx_land_grants_special_collection.patent_vol, patentee: @tx_land_grants_special_collection.patentee, pdf_dir_date: @tx_land_grants_special_collection.pdf_dir_date, pdf_exists: @tx_land_grants_special_collection.pdf_exists, pdf_size_bytes: @tx_land_grants_special_collection.pdf_size_bytes, survey_blk_tsp: @tx_land_grants_special_collection.survey_blk_tsp, title_date: @tx_land_grants_special_collection.title_date, web_display: @tx_land_grants_special_collection.web_display }
    end

    assert_redirected_to tx_land_grants_special_collection_path(assigns(:tx_land_grants_special_collection))
  end

  test "should show tx_land_grants_special_collection" do
    get :show, id: @tx_land_grants_special_collection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tx_land_grants_special_collection
    assert_response :success
  end

  test "should update tx_land_grants_special_collection" do
    patch :update, id: @tx_land_grants_special_collection, tx_land_grants_special_collection: { abstract2: @tx_land_grants_special_collection.abstract2, abstract: @tx_land_grants_special_collection.abstract, acquittance_acres: @tx_land_grants_special_collection.acquittance_acres, acquittance_date: @tx_land_grants_special_collection.acquittance_date, acquittance_vol: @tx_land_grants_special_collection.acquittance_vol, acquitttance_no: @tx_land_grants_special_collection.acquitttance_no, acres: @tx_land_grants_special_collection.acres, adj_acres: @tx_land_grants_special_collection.adj_acres, adj_county: @tx_land_grants_special_collection.adj_county, aka: @tx_land_grants_special_collection.aka, certificate: @tx_land_grants_special_collection.certificate, class: @tx_land_grants_special_collection.class, class_prefix: @tx_land_grants_special_collection.class_prefix, class_suffix: @tx_land_grants_special_collection.class_suffix, collection_type: @tx_land_grants_special_collection.collection_type, comment: @tx_land_grants_special_collection.comment, control: @tx_land_grants_special_collection.control, county: @tx_land_grants_special_collection.county, district: @tx_land_grants_special_collection.district, doc_adoptable: @tx_land_grants_special_collection.doc_adoptable, external_comment: @tx_land_grants_special_collection.external_comment, file_no: @tx_land_grants_special_collection.file_no, glo_id: @tx_land_grants_special_collection.glo_id, internal_comment: @tx_land_grants_special_collection.internal_comment, orig_grantee: @tx_land_grants_special_collection.orig_grantee, page: @tx_land_grants_special_collection.page, page: @tx_land_grants_special_collection.page, part_section: @tx_land_grants_special_collection.part_section, patent_date: @tx_land_grants_special_collection.patent_date, patent_no: @tx_land_grants_special_collection.patent_no, patent_vol: @tx_land_grants_special_collection.patent_vol, patentee: @tx_land_grants_special_collection.patentee, pdf_dir_date: @tx_land_grants_special_collection.pdf_dir_date, pdf_exists: @tx_land_grants_special_collection.pdf_exists, pdf_size_bytes: @tx_land_grants_special_collection.pdf_size_bytes, survey_blk_tsp: @tx_land_grants_special_collection.survey_blk_tsp, title_date: @tx_land_grants_special_collection.title_date, web_display: @tx_land_grants_special_collection.web_display }
    assert_redirected_to tx_land_grants_special_collection_path(assigns(:tx_land_grants_special_collection))
  end

  test "should destroy tx_land_grants_special_collection" do
    assert_difference('TxLandGrantsSpecialCollection.count', -1) do
      delete :destroy, id: @tx_land_grants_special_collection
    end

    assert_redirected_to tx_land_grants_special_collections_path
  end
end
