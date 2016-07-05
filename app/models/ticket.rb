class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignee,foreign_key: :agent_id,class_name: 'User'
  enum status: [:opened,:assigned,:solved,:closed]
  after_initialize :set_default_status, :if => :new_record?
  validates_presence_of  :title

  scope :by_user, lambda{ |user| where(user: user) }
  
  def set_default_status
    self.status ||= :opened
  end
end
