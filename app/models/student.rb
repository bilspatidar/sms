class Student < ApplicationRecord
  belongs_to :user
  validates :fullname,length: {minimum: 4},presence: true
  validates :email,:mobile ,uniqueness: true,presence: true
 


end
