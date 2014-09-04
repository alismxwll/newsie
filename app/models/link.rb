class Link < ActiveRecord::Base
  validates :title, presence: true
  validates :url, presence: true
  validates :content, presence: true

  scope :recent, -> { order("vote DESC") }
end
