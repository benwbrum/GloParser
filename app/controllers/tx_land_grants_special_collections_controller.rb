class TxLandGrantsSpecialCollectionsController < ApplicationController
  before_action :set_tx_land_grants_special_collection, only: [:show, :edit, :update, :destroy]

  # GET /tx_land_grants_special_collections
  # GET /tx_land_grants_special_collections.json
  def index
    @tx_land_grants_special_collections = TxLandGrantsSpecialCollection.all
  end

  # GET /tx_land_grants_special_collections/1
  # GET /tx_land_grants_special_collections/1.json
  def show
  end

  # GET /tx_land_grants_special_collections/new
  def new
    @tx_land_grants_special_collection = TxLandGrantsSpecialCollection.new
  end

  # GET /tx_land_grants_special_collections/1/edit
  def edit
  end

  # POST /tx_land_grants_special_collections
  # POST /tx_land_grants_special_collections.json
  def create
    @tx_land_grants_special_collection = TxLandGrantsSpecialCollection.new(tx_land_grants_special_collection_params)

    respond_to do |format|
      if @tx_land_grants_special_collection.save
        format.html { redirect_to @tx_land_grants_special_collection, notice: 'Tx land grants special collection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tx_land_grants_special_collection }
      else
        format.html { render action: 'new' }
        format.json { render json: @tx_land_grants_special_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tx_land_grants_special_collections/1
  # PATCH/PUT /tx_land_grants_special_collections/1.json
  def update
    respond_to do |format|
      if @tx_land_grants_special_collection.update(tx_land_grants_special_collection_params)
        format.html { redirect_to @tx_land_grants_special_collection, notice: 'Tx land grants special collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tx_land_grants_special_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_land_grants_special_collections/1
  # DELETE /tx_land_grants_special_collections/1.json
  def destroy
    @tx_land_grants_special_collection.destroy
    respond_to do |format|
      format.html { redirect_to tx_land_grants_special_collections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tx_land_grants_special_collection
      @tx_land_grants_special_collection = TxLandGrantsSpecialCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tx_land_grants_special_collection_params
      params.require(:tx_land_grants_special_collection).permit(:control, :glo_id, :district, :county, :page, :abstract, :abstract2, :orig_grantee, :certificate, :patentee, :patent_date, :patent_no, :patent_vol, :part_section, :survey_blk_tsp, :acres, :adj_county, :adj_acres, :class, :file_no, :comment, :page, :class_prefix, :class_suffix, :internal_comment, :external_comment, :collection_type, :title_date, :web_display, :doc_adoptable, :acquittance_date, :acquitttance_no, :acquittance_vol, :acquittance_acres, :pdf_exists, :pdf_size_bytes, :pdf_dir_date, :aka)
    end
end
