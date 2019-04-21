class Hobby < ApplicationRecord
  belongs_to :resume, optional: true
end
