class MissingPerson < ApplicationRecord
  belongs_to :user
  enum status: {missing: 0, found: 1, deceased: 2}
end
