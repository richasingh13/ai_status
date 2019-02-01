class Document < ApplicationRecord
  belongs_to :employee, optional: true
  mount_uploader :attachment, AvatarUploader
  DOCUMENT_TYPE = ["Identification", "Marksheet", "Reports", "Resume"]
end
