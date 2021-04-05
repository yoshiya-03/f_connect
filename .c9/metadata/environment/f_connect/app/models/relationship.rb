{"changed":true,"filter":false,"title":"relationship.rb","tooltip":"/f_connect/app/models/relationship.rb","value":"class Relationship < ApplicationRecord\n  belongs_to :follower, class_name: \"User\"\n  belongs_to :followed, class_name: 'User'\n  validates :follower_id, presence: true\n  validates :followed_id, presence: true\nend\n","undoManager":{"mark":52,"position":52,"stack":[[{"start":{"row":0,"column":38},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":5,"column":39},"action":"insert","lines":["belongs_to :follower, class_name: \"User\""," belongs_to :followed, class_name: 'User'",""," validates :follower_id, presence: true"," validates :followed_id, presence: true"],"id":3}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "],"id":4},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":["　"],"id":5}],[{"start":{"row":1,"column":1},"end":{"row":5,"column":41},"action":"remove","lines":["　 belongs_to :follower, class_name: \"User\"","   belongs_to :followed, class_name: 'User'","  ","   validates :follower_id, presence: true","   validates :followed_id, presence: true"],"id":6}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"remove","lines":[" "],"id":7}],[{"start":{"row":0,"column":38},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":8},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":5,"column":39},"action":"insert","lines":["belongs_to :follower, class_name: \"User\""," belongs_to :followed, class_name: 'User'",""," validates :follower_id, presence: true"," validates :followed_id, presence: true"],"id":9}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "],"id":10},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":["　"],"id":11}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"remove","lines":["　"],"id":12}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":3},"action":"insert","lines":[" "],"id":13}],[{"start":{"row":0,"column":38},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":14},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"remove","lines":["  "],"id":15},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"remove","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "],"id":16},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":6,"column":41},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":17},{"start":{"row":7,"column":0},"end":{"row":7,"column":3},"action":"insert","lines":["   "]},{"start":{"row":7,"column":3},"end":{"row":8,"column":0},"action":"insert","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":3},"action":"insert","lines":["   "]}],[{"start":{"row":8,"column":3},"end":{"row":17,"column":5},"action":"insert","lines":["def create_notification_follow!(current_user)","    temp = Notification.where([\"visiter_id = ? and visited_id = ? and action = ? \",current_user.id, id, 'follow'])","    if temp.blank?","      notification = current_user.active_notifications.new(","        visited_id: id,","        action: 'follow'","      )","      notification.save if notification.valid?","    end","  end"],"id":18}],[{"start":{"row":17,"column":2},"end":{"row":17,"column":3},"action":"insert","lines":["　"],"id":20}],[{"start":{"row":17,"column":2},"end":{"row":17,"column":3},"action":"remove","lines":["　"],"id":21}],[{"start":{"row":17,"column":2},"end":{"row":17,"column":3},"action":"insert","lines":[" "],"id":22}],[{"start":{"row":8,"column":33},"end":{"row":8,"column":34},"action":"insert","lines":["e"],"id":23},{"start":{"row":8,"column":34},"end":{"row":8,"column":35},"action":"insert","lines":["d"]}],[{"start":{"row":9,"column":111},"end":{"row":9,"column":112},"action":"insert","lines":["e"],"id":24},{"start":{"row":9,"column":112},"end":{"row":9,"column":113},"action":"insert","lines":["d"]}],[{"start":{"row":13,"column":23},"end":{"row":13,"column":24},"action":"insert","lines":["e"],"id":25},{"start":{"row":13,"column":24},"end":{"row":13,"column":25},"action":"insert","lines":["d"]}],[{"start":{"row":8,"column":34},"end":{"row":8,"column":35},"action":"remove","lines":["d"],"id":26},{"start":{"row":8,"column":33},"end":{"row":8,"column":34},"action":"remove","lines":["e"]}],[{"start":{"row":9,"column":112},"end":{"row":9,"column":113},"action":"remove","lines":["d"],"id":27},{"start":{"row":9,"column":111},"end":{"row":9,"column":112},"action":"remove","lines":["e"]}],[{"start":{"row":13,"column":24},"end":{"row":13,"column":25},"action":"remove","lines":["d"],"id":28},{"start":{"row":13,"column":23},"end":{"row":13,"column":24},"action":"remove","lines":["e"]}],[{"start":{"row":8,"column":3},"end":{"row":17,"column":6},"action":"remove","lines":["def create_notification_follow!(current_user)","    temp = Notification.where([\"visiter_id = ? and visited_id = ? and action = ? \",current_user.id, id, 'follow'])","    if temp.blank?","      notification = current_user.active_notifications.new(","        visited_id: id,","        action: 'follow'","      )","      notification.save if notification.valid?","    end","   end"],"id":29},{"start":{"row":8,"column":2},"end":{"row":8,"column":3},"action":"remove","lines":[" "]},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]},{"start":{"row":7,"column":3},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"remove","lines":["  "],"id":30},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"remove","lines":["  "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":3},"action":"remove","lines":["   "]}],[{"start":{"row":6,"column":41},"end":{"row":7,"column":0},"action":"remove","lines":["",""],"id":34}],[{"start":{"row":6,"column":41},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":35},{"start":{"row":7,"column":0},"end":{"row":7,"column":3},"action":"insert","lines":["   "]},{"start":{"row":7,"column":3},"end":{"row":8,"column":0},"action":"insert","lines":["",""]},{"start":{"row":8,"column":0},"end":{"row":8,"column":3},"action":"insert","lines":["   "]},{"start":{"row":8,"column":3},"end":{"row":9,"column":0},"action":"insert","lines":["",""]},{"start":{"row":9,"column":0},"end":{"row":9,"column":3},"action":"insert","lines":["   "]}],[{"start":{"row":9,"column":3},"end":{"row":18,"column":5},"action":"insert","lines":["def create_notification_follow!(current_user)","    temp = Notification.where([\"visiter_id = ? and visited_id = ? and action = ? \",current_user.id, id, 'follow'])","    if temp.blank?","      notification = current_user.active_notifications.new(","        visited_id: id,","        action: 'follow'","      )","      notification.save if notification.valid?","    end","  end"],"id":36}],[{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"insert","lines":["　"],"id":37}],[{"start":{"row":18,"column":2},"end":{"row":18,"column":3},"action":"remove","lines":[" "],"id":38}],[{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"remove","lines":["　"],"id":39}],[{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"insert","lines":["　"],"id":40}],[{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"remove","lines":["　"],"id":41},{"start":{"row":18,"column":0},"end":{"row":18,"column":1},"action":"remove","lines":[" "]}],[{"start":{"row":18,"column":0},"end":{"row":18,"column":1},"action":"insert","lines":["　"],"id":42},{"start":{"row":18,"column":1},"end":{"row":18,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":18,"column":5},"end":{"row":19,"column":0},"action":"remove","lines":["",""],"id":43}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"remove","lines":["d"],"id":44},{"start":{"row":19,"column":1},"end":{"row":19,"column":2},"action":"remove","lines":["n"]},{"start":{"row":19,"column":0},"end":{"row":19,"column":1},"action":"remove","lines":["e"]}],[{"start":{"row":19,"column":0},"end":{"row":19,"column":1},"action":"insert","lines":["e"],"id":45},{"start":{"row":19,"column":1},"end":{"row":19,"column":2},"action":"insert","lines":["n"]},{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"insert","lines":["d"]}],[{"start":{"row":7,"column":0},"end":{"row":7,"column":3},"action":"remove","lines":["   "],"id":46},{"start":{"row":8,"column":0},"end":{"row":8,"column":3},"action":"remove","lines":["   "]}],[{"start":{"row":9,"column":2},"end":{"row":18,"column":5},"action":"remove","lines":[" def create_notification_follow!(current_user)","    temp = Notification.where([\"visiter_id = ? and visited_id = ? and action = ? \",current_user.id, id, 'follow'])","    if temp.blank?","      notification = current_user.active_notifications.new(","        visited_id: id,","        action: 'follow'","      )","      notification.save if notification.valid?","    end","　 end"],"id":47},{"start":{"row":9,"column":1},"end":{"row":9,"column":2},"action":"remove","lines":[" "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":1},"action":"remove","lines":[" "]},{"start":{"row":8,"column":0},"end":{"row":9,"column":0},"action":"remove","lines":["",""]},{"start":{"row":7,"column":0},"end":{"row":8,"column":0},"action":"remove","lines":["",""]},{"start":{"row":6,"column":41},"end":{"row":7,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":3},"action":"remove","lines":["   "],"id":48},{"start":{"row":3,"column":0},"end":{"row":3,"column":3},"action":"remove","lines":["   "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":3},"action":"remove","lines":["   "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":3},"action":"remove","lines":["   "]}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":3},"action":"insert","lines":["   "],"id":49},{"start":{"row":3,"column":0},"end":{"row":3,"column":3},"action":"insert","lines":["   "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":3},"action":"insert","lines":["   "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":3},"action":"insert","lines":["   "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":3},"action":"insert","lines":["   "]}],[{"start":{"row":0,"column":38},"end":{"row":1,"column":0},"action":"remove","lines":["",""],"id":50}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":3},"action":"remove","lines":["   "],"id":51}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":[" "],"id":52},{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":3},"action":"remove","lines":["   "],"id":53}],[{"start":{"row":2,"column":0},"end":{"row":2,"column":1},"action":"insert","lines":[" "],"id":54},{"start":{"row":2,"column":1},"end":{"row":2,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":3},"action":"remove","lines":["   "],"id":56},{"start":{"row":5,"column":0},"end":{"row":5,"column":3},"action":"remove","lines":["   "]}],[{"start":{"row":4,"column":0},"end":{"row":4,"column":1},"action":"insert","lines":[" "],"id":57},{"start":{"row":4,"column":1},"end":{"row":4,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":1},"action":"insert","lines":[" "],"id":58},{"start":{"row":5,"column":1},"end":{"row":5,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":3},"action":"remove","lines":["   "],"id":59},{"start":{"row":2,"column":42},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "],"id":62}],[{"start":{"row":6,"column":2},"end":{"row":15,"column":5},"action":"insert","lines":["def create_notification_follow!(current_user)","    temp = Notification.where([\"visiter_id = ? and visited_id = ? and action = ? \",current_user.id, id, 'follow'])","    if temp.blank?","      notification = current_user.active_notifications.new(","        visited_id: id,","        action: 'follow'","      )","      notification.save if notification.valid?","    end","  end"],"id":62}],[{"start":{"row":4,"column":40},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":63},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":4,"column":40},"end":{"row":4,"column":40},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1614764780141}