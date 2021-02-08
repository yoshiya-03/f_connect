class ChatsController < ApplicationController
  
  def show
    @user = User.find(params[:id]) # どのユーザーとチャットするかを取得。
    rooms = current_user.user_rooms.pluck(:room_id) # カレントユーザーのuser_roomにあるroom_idの値の配列をroomsに代入。
    user_rooms = UserRoom.find_by(user_id: @user.id, room_id: rooms)

    unless user_rooms.nil? # もしuser_roomが空でないなら, @roomに上記user_roomのroomを代入
    @room = user_rooms.room
    else  # それ以外は新しくroomを作り、
      @room = Room.new
      @room.save
      UserRoom.create(user_id: current_user.id, room_id: @room.id) # user_roomをカレントユーザー分とチャット相手分を作る
      UserRoom.create(user_id: @user.id, room_id: @room.id)
    end
    @chats = @room.chats
    @chat = Chat.new(room_id: @room.id)
  end
  
  def create
    @chat = current_user.chats.new(chat_params)
    @chat.save
    redirect_to request.referer
  end

  private
  def chat_params
    params.require(:chat).permit(:message, :room_id)
  end
end

