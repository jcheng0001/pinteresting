class Pin < ActiveRecord::Base
     belongs_to :user
     validates :image, presence: true
     validates :description, presence: true
     has_attached_file :image, :styles => { :medium => "800x800>", :thumb => "300x300>" }
     validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end
