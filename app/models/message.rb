class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true

  def username
    user.username
  end
end
