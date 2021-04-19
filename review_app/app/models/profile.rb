class Profile < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
end
