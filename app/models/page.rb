class Page < ApplicationRecord
  belongs_to :subject
  has_many :sections

  scope :visible, -> { where(:visible => true )}
  scope :invisible, -> { where(:visible => false )}
  scope :sorted, -> { order("position ASC")}
  scope :newest_first, -> { order("created_at DESC")}
end
