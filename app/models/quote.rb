class Quote < ActiveRecord::Base
  monetize :budget_cents, :budget_currency
  belongs_to :user
      
end
