class Enroll < ApplicationRecord
  belongs_to :student
  belongs_to :cource
  validates :student_id,:cource_id, presence: true
end
