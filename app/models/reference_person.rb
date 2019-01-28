class ReferencePerson < ApplicationRecord
  belongs_to :employee,  optional: true
end
