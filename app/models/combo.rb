class Combo < ActiveRecord::Base
  has_many :addons_combos
  belongs_to :product
end
