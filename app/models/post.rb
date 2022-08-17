class Post < ApplicationRecord
  validates :title, presence:true, length: {  minimum: 5, maximum:50}
  validates :body, presence:true, length: {  minimum: 10, maximum:1000}
  belongs_to :user
  has_many  :comments,  dependent: :destroy
  has_many_attached :images

  #Notification config into the Post and set up relationship 
  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
end
