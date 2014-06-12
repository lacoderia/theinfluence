# -*- encoding : utf-8 -*-
class PurchasesAddon < ActiveRecord::Base
  belongs_to :user
  belongs_to :addon
end
