class Option < ApplicationRecord
  belongs_to :question
  has_many :sumbissions
end
