class GpusController < ApplicationController
  before_action :set_gpu, only: [:show, :edit, :update, :destroy]

  # GET /gpus
  # GET /gpus.json
  def index
    @gpus = Gpu.all
  end

  # GET /gpus/1
  # GET /gpus/1.json
  def show
  end

  # GET /gpus/new
  def new
    @gpu = Gpu.new
  end

  # GET /gpus/1/edit
  def edit
  end

  # POST /gpus
  # POST /gpus.json
  def create
    @gpu = Gpu.new(gpu_params)

    respond_to do |format|
      if @gpu.save
        format.html { redirect_to @gpu, notice: 'Gpu was successfully created.' }
        format.json { render :show, status: :created, location: @gpu }
      else
        format.html { render :new }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gpus/1
  # PATCH/PUT /gpus/1.json
  def update
    respond_to do |format|
      if @gpu.update(gpu_params)
        format.html { redirect_to @gpu, notice: 'Gpu was successfully updated.' }
        format.json { render :show, status: :ok, location: @gpu }
      else
        format.html { render :edit }
        format.json { render json: @gpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gpus/1
  # DELETE /gpus/1.json
  def destroy
    @gpu.destroy
    respond_to do |format|
      format.html { redirect_to gpus_url, notice: 'Gpu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gpu
      @gpu = Gpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gpu_params
      params.require(:gpu).permit(:price, :name, :maker, :model, :interface, :gpu_ver, :core_clock, :boost_clock, :cuda_cores, :mem_clock, :memory_size, :mem_interface, :mem_type, :directx_support, :opengl_support, :hdmi_ports, :dvi_i_ports, :dvi_d_ports, :max_resolution, :sli_support, :cooler, :system_reqs)
    end
end
