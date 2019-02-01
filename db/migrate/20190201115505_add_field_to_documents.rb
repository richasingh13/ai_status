class AddFieldToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :document_type, :string
    add_column :documents, :attachment, :string
  end
end
