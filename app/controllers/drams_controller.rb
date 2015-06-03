class DramsController < ApplicationController
  before_action :set_dram, only: [:show, :edit, :update, :destroy]

  # GET /drams
  # GET /drams.json
  def index
    @drams = Dram.all
  end

  # GET /drams/1
  # GET /drams/1.json
  def show
  end

  # GET /drams/new
  def new
    @dram = Dram.new
  end

  # GET /drams/1/edit
  def edit
  end

  # POST /drams
  # POST /drams.json
  def create
    @dram = Dram.new(dram_params)

    respond_to do |format|
      if @dram.save
        format.html { redirect_to @dram, notice: 'Dram was successfully created.' }
        format.json { render :show, status: :created, location: @dram }
      else
        format.html { render :new }
        format.json { render json: @dram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drams/1
  # PATCH/PUT /drams/1.json
  def update
    respond_to do |format|
      if @dram.update(dram_params)
        format.html { redirect_to @dram, notice: 'Dram was successfully updated.' }
        format.json { render :show, status: :ok, location: @dram }
      else
        format.html { render :edit }
        format.json { render json: @dram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drams/1
  # DELETE /drams/1.json
  def destroy
    @dram.destroy
    respond_to do |format|
      format.html { redirect_to drams_url, notice: 'Dram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dram
      @dram = Dram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dram_params
      params.require(:dram).permit(:price, :maker, :series, :model, :dram_type, :size, :speed, :cas_latency, :timing, :voltage, :ecc_support, :notes)
    end
end
