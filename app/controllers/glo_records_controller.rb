class GloRecordsController < ApplicationController
  before_action :set_glo_record, only: [:show, :edit, :update, :destroy]

  # GET /glo_records
  # GET /glo_records.json
  def index
    @glo_records = GloRecord.all
  end

  # GET /glo_records/1
  # GET /glo_records/1.json
  def show
  end

  # GET /glo_records/new
  def new
    @glo_record = GloRecord.new
  end

  # GET /glo_records/1/edit
  def edit
  end

  # POST /glo_records
  # POST /glo_records.json
  def create
    @glo_record = GloRecord.new(glo_record_params)

    respond_to do |format|
      if @glo_record.save
        format.html { redirect_to @glo_record, notice: 'Glo record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @glo_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @glo_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /glo_records/1
  # PATCH/PUT /glo_records/1.json
  def update
    respond_to do |format|
      if @glo_record.update(glo_record_params)
        format.html { redirect_to @glo_record, notice: 'Glo record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @glo_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /glo_records/1
  # DELETE /glo_records/1.json
  def destroy
    @glo_record.destroy
    respond_to do |format|
      format.html { redirect_to glo_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_glo_record
      @glo_record = GloRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def glo_record_params
      params.require(:glo_record).permit(:glo_id, :abstract_url, :collection_name, :file_url, :file_number, :grantee, :patentee, :pdf_url, :remarks, :glo_collection_id)
    end
end
