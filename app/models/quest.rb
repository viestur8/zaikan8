class Quest < ApplicationRecord
  attr_accessor :name, :questions_attributes
  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true
end
