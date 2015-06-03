class Cpu < ActiveRecord::Base
  scope :lga1150, -> {where socket: 'lga 1150'}
  scope :lga2011, -> {where socket: 'lga 2011-v3'} 
  scope :i74790k, -> {where name: 'core i7-4790k'}
end
