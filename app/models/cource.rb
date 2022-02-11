class Cource < ApplicationRecord
  belongs_to :user
  validates :title,:duration,:fee, presence: true
end
