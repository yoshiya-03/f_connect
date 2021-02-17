module RoomsHelper

 # 最新メッセージのデータを取得して表示するメソッド
  def most_new_message_preview(room)
    # 最新メッセージのデータを取得する
    chat = room.chats.order(updated_at: :desc).limit(1)
    # 配列から取り出す
    chat = chat[0]
    # メッセージの有無を判定
    if chat.present?
      # メッセージがあれば内容を表示
      tag.p "#{chat.message}", class: "dm_list__content__link__box__chat"
    else
      # メッセージがなければ[ まだメッセージはありません ]を表示
      tag.p "[ まだメッセージはありません ]", class: "dm_list__content__link__box__chat"
    end
  end

  # 相手ユーザー名を取得して表示するメソッド
  def opponent_user(room)
    # 中間テーブルから相手ユーザーのデータを取得
    user_room = room.user_rooms.where.not(user_id: current_user)
    # 相手ユーザーの名前を取得
    name = user_room[0].user.name
    # 名前を表示
    tag.p "#{name}", class: "dm_list__content__link__box__name"
  end

end


