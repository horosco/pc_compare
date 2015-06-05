class PowersuppliesController < ApplicationController
  before_action :set_powersupply, only: [:show, :edit, :update, :destroy]

  # GET /powersupplies
  # GET /powersupplies.json
  def index
    @powersupplies = Powersupply.all
  end

  # GET /powersupplies/1
  # GET /powersupplies/1.json
  def show
  end

  # GET /powersupplies/new
  def new
    @powersupply = Powersupply.new
  end

  # GET /powersupplies/1/edit
  def edit
  end

  # POST /powersupplies
  # POST /powersupplies.json
  def create
    @powersupply = Powersupply.new(powersupply_params)

    respond_to do |format|
      if @powersupply.save
        format.html { redirect_to @powersupply, notice: 'Powersupply was successfully created.' }
        format.json { render :show, status: :created, location: @powersupply }
      else
        format.html { render :new }
        format.json { render json: @powersupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /powersupplies/1
  # PATCH/PUT /powersupplies/1.json
  def update
    respond_to do |format|
      if @powersupply.update(powersupply_params)
        format.html { redirect_to @powersupply, notice: 'Powersupply was successfully updated.' }
        format.json { render :show, status: :ok, location: @powersupply }
      else
        format.html { render :edit }
        format.json { render json: @powersupply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /powersupplies/1
  # DELETE /powersupplies/1.json
  def destroy
    @powersupply.destroy
    respond_to do |format|
      format.html { redirect_to powersupplies_url, notice: 'Powersupply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_powersupply
      @powersupply = Powersupply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def powersupply_params
      params.require(:powersupply).permit(:select, :price, :maker, :model, :ps_type, :max_power, :connector, :rails_12v, :intel_support, :sli_support, :output_ratings, :dimensions, :notes)
    end
end
