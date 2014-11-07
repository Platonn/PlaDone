class Task < ActiveRecord::Base
  belongs_to :user

  belongs_to :project
  belongs_to :context

  validates :name, :presence => true

  extend SoftDeletableStatic
  include SoftDeletable
end
