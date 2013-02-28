class Unit < ActiveRecord::Base
  attr_accessible :description, :name

  belongs_to :project

  before_save { name.capitalize! }

  validates :project_id, presence: true
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false }
  validates :description, length: { maximum: 160 }

  default_scope order: :name
end
