class Hdd < ActiveRecord::Base
  scope :selected, -> {where select: "true"}
end
