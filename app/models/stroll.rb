class Stroll < ApplicationRecord
	belongs_to :dog, required: false	
	belongs_to :dogsitter, required: false	
end
