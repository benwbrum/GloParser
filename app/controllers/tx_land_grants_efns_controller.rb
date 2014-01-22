class TxLandGrantsEfnsController < ApplicationController
  before_action :set_tx_land_grants_efn, only: [:show, :edit, :update, :destroy]

  # GET /tx_land_grants_efns
  # GET /tx_land_grants_efns.json
  def index
    @tx_land_grants_efns = TxLandGrantsEfn.all
  end

  # GET /tx_land_grants_efns/1
  # GET /tx_land_grants_efns/1.json
  def show
  end

  # GET /tx_land_grants_efns/new
  def new
    @tx_land_grants_efn = TxLandGrantsEfn.new
  end

  # GET /tx_land_grants_efns/1/edit
  def edit
  end

  # POST /tx_land_grants_efns
  # POST /tx_land_grants_efns.json
  def create
    @tx_land_grants_efn = TxLandGrantsEfn.new(tx_land_grants_efn_params)

    respond_to do |format|
      if @tx_land_grants_efn.save
        format.html { redirect_to @tx_land_grants_efn, notice: 'Tx land grants efn was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tx_land_grants_efn }
      else
        format.html { render action: 'new' }
        format.json { render json: @tx_land_grants_efn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tx_land_grants_efns/1
  # PATCH/PUT /tx_land_grants_efns/1.json
  def update
    respond_to do |format|
      if @tx_land_grants_efn.update(tx_land_grants_efn_params)
        format.html { redirect_to @tx_land_grants_efn, notice: 'Tx land grants efn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tx_land_grants_efn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tx_land_grants_efns/1
  # DELETE /tx_land_grants_efns/1.json
  def destroy
    @tx_land_grants_efn.destroy
    respond_to do |format|
      format.html { redirect_to tx_land_grants_efns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tx_land_grants_efn
      @tx_land_grants_efn = TxLandGrantsEfn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tx_land_grants_efn_params
      params.require(:tx_land_grants_efn).permit(:field_note, :control, :pdf_Exists, :file_no, :type)
    end
end
