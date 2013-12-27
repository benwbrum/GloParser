class GloCollectionsController < ApplicationController
  before_action :set_glo_collection, only: [:show, :edit, :update, :destroy]

  # GET /glo_collections
  # GET /glo_collections.json
  def index
    @glo_collections = GloCollection.all
  end

  # GET /glo_collections/1
  # GET /glo_collections/1.json
  def show
  end

  # GET /glo_collections/new
  def new
    @glo_collection = GloCollection.new
  end

  # GET /glo_collections/1/edit
  def edit
  end

  # POST /glo_collections
  # POST /glo_collections.json
  def create
    @glo_collection = GloCollection.new(glo_collection_params)

    respond_to do |format|
      if @glo_collection.save
        format.html { redirect_to @glo_collection, notice: 'Glo collection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @glo_collection }
      else
        format.html { render action: 'new' }
        format.json { render json: @glo_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glo_collections/1
  # PATCH/PUT /glo_collections/1.json
  def update
    respond_to do |format|
      if @glo_collection.update(glo_collection_params)
        format.html { redirect_to @glo_collection, notice: 'Glo collection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @glo_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glo_collections/1
  # DELETE /glo_collections/1.json
  def destroy
    @glo_collection.destroy
    respond_to do |format|
      format.html { redirect_to glo_collections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glo_collection
      @glo_collection = GloCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glo_collection_params
      params.require(:glo_collection).permit(:name)
    end
end
