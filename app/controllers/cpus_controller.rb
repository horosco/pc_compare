class CpusController < ApplicationController
  before_action :set_cpu, only: [:show, :edit, :update, :destroy]

  # GET /cpus
  # GET /cpus.json
  def index
    @cpus = Cpu.all

    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.title(:text => "Population vs GDP For 5 Big Countries [2009]")
      f.xAxis(:categories => ["United States", "Japan", "China", "Germany", "France"])
      f.series(:name => "GDP in Billions", :yAxis => 0, :data => [14119, 5068, 4985, 3339, 2656])
      f.series(:name => "Population in Millions", :yAxis => 1, :data => [310, 127, 1340, 81, 65])
    
      f.yAxis [
        {:title => {:text => "GDP in Billions", :margin => 70} },
        {:title => {:text => "Population in Millions"}, :opposite => true},
      ]
    
      f.legend(:align => 'right', :verticalAlign => 'top', :y => 75, :x => -50, :layout => 'vertical',)
      f.chart({:defaultSeriesType=>"column"})
    end
    #render "index" , layout: "application"
  end

  # GET /cpus/1
  # GET /cpus/1.json
  def show
  end

  # GET /cpus/new
  def new
    @cpu = Cpu.new
  end

  # GET /cpus/1/edit
  def edit
  end

  # POST /cpus
  # POST /cpus.json
  def create
    @cpu = Cpu.new(cpu_params)

    respond_to do |format|
      if @cpu.save
        format.html { redirect_to @cpu, notice: 'Cpu was successfully created.' }
        format.json { render :show, status: :created, location: @cpu }
      else
        format.html { render :new }
        format.json { render json: @cpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cpus/1
  # PATCH/PUT /cpus/1.json
  def update
    respond_to do |format|
      if @cpu.update(cpu_params)
        format.html { redirect_to @cpu, notice: 'Cpu was successfully updated.' }
        format.json { render :show, status: :ok, location: @cpu }
      else
        format.html { render :edit }
        format.json { render json: @cpu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cpus/1
  # DELETE /cpus/1.json
  def destroy
    @cpu.destroy
    respond_to do |format|
      format.html { redirect_to cpus_url, notice: 'Cpu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cpu
      @cpu = Cpu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cpu_params
      params.require(:cpu).permit(:price, :name, :model, :socket, :cores, :threads, :operating_frequency, :max_frequency, :l2_cache, :l3_cache, :tech_node, :supports_64bits, :supports_hyper_threading, :supports_virtualization, :integrated_graphics, :graphics_base_frequency, :graphics_max_frequency, :pcie_rev, :max_pcie_lanes, :cooling_device)
    end
end
