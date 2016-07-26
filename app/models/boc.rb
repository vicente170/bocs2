class Boc < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, :company, :price, presence: true
  validates :content, presence: true, length: { maximum: 300 }
  
end
