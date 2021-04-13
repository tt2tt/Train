class Document < ApplicationRecord
  mount_uploader :image, PdfUploader
end
