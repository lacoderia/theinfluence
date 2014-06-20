# -*- encoding : utf-8 -*-
class Addon < ActiveRecord::Base
  has_many :addons_combos
  has_many :combos, :through => :addons_combos
  has_many :purchases_addons
  belongs_to :category
end
