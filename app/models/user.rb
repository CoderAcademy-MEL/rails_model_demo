class User < ApplicationRecord
  validates :job, presence: true
  validates :first_name, length: { in: 2..40 }

  #scope(:producers, -> { where(job: 'Producer')} )
  scope :hamburger, -> (job) { where(job: job) }
  # scope SYMBOL - method name, -> { query to assign }
  scope :with_long_title, -> { where("LENGTH(first_name) > 6") }
end
