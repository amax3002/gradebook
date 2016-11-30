class Student < ApplicationRecord
  has_many :parents
  has_many :grades
  belongs_to :user

  accepts_nested_attributes_for :user
end
