class Dram < ActiveRecord::Base
  scope :ddr3, -> {where dram_type: 'ddr3'}
  scope :ddr4, -> {where dram_type: 'ddr4'}
  scope :selected, -> {where select: "true"}
end
