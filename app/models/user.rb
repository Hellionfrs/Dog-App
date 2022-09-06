class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :notifications, as: :recipient, dependent: :destroy
  has_one_attached :avatar

  after_commit :add_default_avatar, on: %i[create update]
  
  def avatar_thumbnail
    add_default_avatar()
    avatar.variant(resize_to_limit: [450, 450]).processed
  end
  def avatar_icon
    add_default_avatar()
    avatar.variant(resize_to_limit: [50, 50]).processed
  end
  private

  def add_default_avatar
    return if avatar.attached?

      avatar.attach(
        io:  File.open(Rails.root.join('app','assets', 'images', 'default_profile.jpg')),
        filename: 'default_profile.jpg',
        content_type: 'image/jpg'
      )
  end
end
