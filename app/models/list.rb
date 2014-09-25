class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  default_scope { order('created_at DESC') }
end
