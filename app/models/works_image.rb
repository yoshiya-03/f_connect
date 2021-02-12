class WorksImage < ApplicationRecord
  belongs_to :user
  attachment :works_image
end
