class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  validates :content, :presence => true, :length => { :minimum => 20 }
  validates :title, :presence => true
  validates :name, :presence => true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, :default_url => "avatar.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
