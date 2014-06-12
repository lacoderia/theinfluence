# -*- encoding : utf-8 -*-
class Asset < ActiveRecord::Base
  belongs_to :product
end
