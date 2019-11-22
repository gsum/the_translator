class Question < ApplicationRecord
    has_many :options
    has_many :sumbissions
    accepts_nested_attributes_for :options
end
