class Motherboard < ActiveRecord::Base

  scope :z79, -> {where chipset: 'z79'}
  scope :x99, -> {where chipset: 'x99'}
  scope :lga1150, -> {where socket: 'lga 1150'}
  scope :lga2011, -> {where socket: 'lga 2011-v3'}
  scope :selected, -> {where select: "true"}

end
