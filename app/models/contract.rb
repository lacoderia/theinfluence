# -*- encoding : utf-8 -*-
class Contract < ActiveRecord::Base
  has_and_belongs_to_many :users
end
