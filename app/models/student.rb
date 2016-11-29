class Student < ApplicationRecord
  has_many :parents
  has_many :grades
  belongs_to :user
end
