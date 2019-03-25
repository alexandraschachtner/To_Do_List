class Task < ApplicationRecord
	  validates :who, :name, presence: true
end
