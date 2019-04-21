class AcademicCredential < ApplicationRecord
  belongs_to :resume, optional: true
end
