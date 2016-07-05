class User < ActiveRecord::Base
  enum role: [:customer, :agent, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :tickets
  has_many :assigned_tickets,foreign_key: :agent_id,class_name: 'Ticket'

  def set_default_role
    self.role ||= :customer
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
