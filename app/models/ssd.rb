class Ssd < ActiveRecord::Base
    scope :selected, -> {where select: "true"}
end
