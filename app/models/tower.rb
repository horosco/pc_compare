class Tower < ActiveRecord::Base
    scope :selected, -> {where select: "true"}
end
