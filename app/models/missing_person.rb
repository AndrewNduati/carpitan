class MissingPerson < ApplicationRecord
  enum status: {missing: 0, found: 1, deceased: 2}
end
