# -*- encoding : utf-8 -*-
class PurchasesCombo < ActiveRecord::Base
  belongs_to :user
  belongs_to :combo
end
