class Favorite < ApplicationRecord
  belongs_to :issue
  belongs_to :user
end
