class Parent < ApplicationRecord
  belongs_to :student
  belongs_to :user

  accepts_nested_attributes_for :user
end
