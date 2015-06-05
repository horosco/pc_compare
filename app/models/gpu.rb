class Gpu < ActiveRecord::Base
    scope :selected, -> {where select: "true"}
end
