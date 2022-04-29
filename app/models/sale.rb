class Sale < ApplicationRecord
  belongs_to :payment_method
  belongs_to :currency
end
