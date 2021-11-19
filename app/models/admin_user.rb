class AdminUser < ApplicationRecord
  has_many :section_edits
  has_many :sections, :through => :section_edits
end
