class PcBuildsController < ApplicationController

  def index
    generate_pc_builds
  end

  # Method: generate_pc_builds no_args
  # first attempt at generating all possible pc_builds
  # this means the algorithm may be slow just to see something working
  def generate_pc_builds
    #get arrays of all components
    @cpus          = Cpu.all
    @cpus_1150     = Cpu.lga1150
    @cpus_2011     = Cpu.lga2011
    @cpus_4790k    = Cpu.i74790k
    @motherboards  = Motherboard.all
    @motherboards_1150_z79 = Motherboard.lga1150 
    @motherboards_2011_x99 = Motherboard.lga2011  
    @gpus          = Gpu.all
    @drams         = Dram.all
    @drams_ddr3    = Dram.ddr3
    @drams_ddr4    = Dram.ddr4
    #@drams_ddr3    = Dram.all where 
    @ssds          = Ssd.all
    @hdds          = Hdd.all
    @powersupplies = Powersupply.all
    @towers        = Tower.all
    @pc_builds     = Array.new
    
    iterate_through_possibilities
    
  end

  # Method: iterate_through_possibilities no_args
  # Call iterations for matching sockets and chipsets
  def iterate_through_possibilities
    #iterate_through_z79_possibilities
    iterate_through_x99_possibilities
  end

  # Method: iterate_through_z79_possibilities
  # Initial algorithm
  # ugly brute force
  def iterate_through_z79_possibilities
    @cpus_4790k.each do |cpu|
      @motherboards_1150_z79.each do |motherboard|
	@gpus.each do |gpu|
	  @drams_ddr3.each do |dram|
	    @ssds.each do |ssd|
	      @hdds.each do |hdd|
		@powersupplies.each do |powersupply|
#		  @towers.each do |tower|
		    @pc_builds << {
		      :cpu         => cpu,
		      :motherboard => motherboard,
		      :gpu         => gpu,
		      :dram        => dram,
		      :ssd         => ssd,
		      :hdd         => hdd,
		      :powersupply => powersupply,
#		      :tower       => tower,
#		      :price       => cpu.price + motherboard.price + gpu.price + 4*dram.price + ssd.price + hdd.price + powersupply.price + tower.price
		      :price       => cpu.price + motherboard.price + gpu.price + 2*dram.price + ssd.price + hdd.price + powersupply.price
		    }
		    #careful about the price, has 4 drams hard coded!
		  end
		end
	      end
#	    end
	  end
	end
      end
    end

  end

  def iterate_through_x99_possibilities
    @cpus_2011.each do |cpu|
      @motherboards_2011_x99.each do |motherboard|
	@gpus.each do |gpu|
	  @drams_ddr4.each do |dram|
	    @ssds.each do |ssd|
	      @hdds.each do |hdd|
		@powersupplies.each do |powersupply|
		  @towers.each do |tower|
		    @pc_builds << {
		      :cpu         => cpu,
		      :motherboard => motherboard,
		      :gpu         => gpu,
		      :dram        => dram,
		      :ssd         => ssd,
		      :hdd         => hdd,
		      :powersupply => powersupply,
		      :tower       => tower,
		      :price       => cpu.price + motherboard.price + gpu.price + dram.price + ssd.price + hdd.price + powersupply.price + tower.price
#		      :price       => cpu.price + motherboard.price + gpu.price + 2*dram.price + ssd.price + hdd.price + powersupply.price
		    }
		    #careful about the price, has 4 drams hard coded!
		  end
		end
	      end
	    end
	  end
	end
      end
    end
  end

end
