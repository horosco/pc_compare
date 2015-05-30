class SsdsController < ApplicationController
  before_action :set_ssd, only: [:show, :edit, :update, :destroy]

  # GET /ssds
  # GET /ssds.json
  def index
    @ssds = Ssd.all
  end

  # GET /ssds/1
  # GET /ssds/1.json
  def show
  end

  # GET /ssds/new
  def new
    @ssd = Ssd.new
  end

  # GET /ssds/1/edit
  def edit
  end

  # POST /ssds
  # POST /ssds.json
  def create
    @ssd = Ssd.new(ssd_params)

    respond_to do |format|
      if @ssd.save
        format.html { redirect_to @ssd, notice: 'Ssd was successfully created.' }
        format.json { render :show, status: :created, location: @ssd }
      else
        format.html { render :new }
        format.json { render json: @ssd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ssds/1
  # PATCH/PUT /ssds/1.json
  def update
    respond_to do |format|
      if @ssd.update(ssd_params)
        format.html { redirect_to @ssd, notice: 'Ssd was successfully updated.' }
        format.json { render :show, status: :ok, location: @ssd }
      else
        format.html { render :edit }
        format.json { render json: @ssd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ssds/1
  # DELETE /ssds/1.json
  def destroy
    @ssd.destroy
    respond_to do |format|
      format.html { redirect_to ssds_url, notice: 'Ssd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ssd
      @ssd = Ssd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ssd_params
      params.require(:ssd).permit(:price, :name, :model, :form_factor, :size, :connection)
    end
end
