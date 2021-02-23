class Relationship < ApplicationRecord
  
   belongs_to :follower, class_name: "User"
   belongs_to :followed, class_name: 'User'
  
   validates :follower_id, presence: true
   validates :followed_id, presence: true
   
   def create_notification_follow!(current_user)
    temp = Notification.where(["visiter_id = ? and visited_id = ? and action = ? ",current_user.id, id, 'follow'])
    if temp.blank?
      notification = current_user.active_notifications.new(
        visited_id: id,
        action: 'follow'
      )
      notification.save if notification.valid?
    end
   end

end
