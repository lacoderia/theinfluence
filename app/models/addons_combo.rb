# -*- encoding : utf-8 -*-
class AddonsCombo < ActiveRecord::Base
  belongs_to :addon
  belongs_to :combo
end
