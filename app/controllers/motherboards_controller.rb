class MotherboardsController < ApplicationController
  before_action :set_motherboard, only: [:show, :edit, :update, :destroy]

  # GET /motherboards
  # GET /motherboards.json
  def index
    @motherboards = Motherboard.all
  end

  # GET /motherboards/1
  # GET /motherboards/1.json
  def show
  end

  # GET /motherboards/new
  def new
    @motherboard = Motherboard.new
  end

  # GET /motherboards/1/edit
  def edit
  end

  # POST /motherboards
  # POST /motherboards.json
  def create
    @motherboard = Motherboard.new(motherboard_params)

    respond_to do |format|
      if @motherboard.save
        format.html { redirect_to @motherboard, notice: 'Motherboard was successfully created.' }
        format.json { render action: 'show', status: :created, location: @motherboard }
      else
        format.html { render action: 'new' }
        format.json { render json: @motherboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /motherboards/1
  # PATCH/PUT /motherboards/1.json
  def update
    respond_to do |format|
      if @motherboard.update(motherboard_params)
        format.html { redirect_to @motherboard, notice: 'Motherboard was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @motherboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /motherboards/1
  # DELETE /motherboards/1.json
  def destroy
    @motherboard.destroy
    respond_to do |format|
      format.html { redirect_to motherboards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_motherboard
      @motherboard = Motherboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def motherboard_params
      params.require(:motherboard).permit(:price, :maker, :model, :socket, :wireless, :chipset, :dram_type, :max_dram_speed_supported, :total_dram_allowed, :power_supply_pin_connector, :usb3_ports, :usb2_ports, :pci_ports, :pcie_ports, :power_needed, :dimensions)
    end
end
