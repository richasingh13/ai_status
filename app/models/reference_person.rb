class ReferencePerson < ApplicationRecord
  belongs_to :user,  optional: true
end
