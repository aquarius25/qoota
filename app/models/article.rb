class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  belongs_to :user

  # gem acts-as-taggable-on
  acts_as_taggable_on :interests # label_list が追加される
  acts_as_taggable            # acts_as_taggable_on :tags のエイリアス
end
