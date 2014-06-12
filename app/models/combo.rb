class Combo < ActiveRecord::Base
  has_many :addons_combos
  belongs_to :product
  has_many :addons, :through => :addons_combos
  has_many :purchases_combos
end
