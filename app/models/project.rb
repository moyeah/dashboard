class Project < ActiveRecord::Base
  attr_accessible :name, :description

  has_many :units, dependent: :destroy

  before_save { name.capitalize! }

  validates :name, presence: true,
                   uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 160 }
end
