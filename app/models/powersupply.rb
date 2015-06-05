class Powersupply < ActiveRecord::Base
  scope :selected, -> {where select: "true"}
end
