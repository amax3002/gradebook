class Student < ApplicationRecord
  has_many :parents
  has_many :grades
end
