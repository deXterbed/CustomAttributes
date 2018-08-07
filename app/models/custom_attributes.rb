class CustomAttributes < ApplicationRecord
  belongs_to :parent, polymorphic: true, autosave: true
  
  store :c_attributes
end
