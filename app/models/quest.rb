class Quest < ApplicationRecord
  has_many :turns
  has_many :questinfo
end
