class Customer < ApplicationRecord
  include HasCustomAttributes

  custom_attrs :email, :city, :phone
end
