class Project < ActiveRecord::Base
  belongs_to :user

  has_many :tasks
  belongs_to :project_category

  validate :name, :presence => true

  extend SoftDeletableStatic
  include SoftDeletable
end
