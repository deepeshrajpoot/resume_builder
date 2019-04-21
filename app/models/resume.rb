class Resume < ApplicationRecord
  has_many :academic_credentials, inverse_of: :resume
  has_many :achievements, inverse_of: :resume
  has_many :projects, inverse_of: :resume
  has_many :skills, inverse_of: :resume
  has_many :hobbies, inverse_of: :resume
  belongs_to :users, optional: :true
  accepts_nested_attributes_for :academic_credentials, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :achievements, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :projects, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :skills, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :hobbies, reject_if: :all_blank, allow_destroy: true
  mount_uploader :image, ImageUploader

end
