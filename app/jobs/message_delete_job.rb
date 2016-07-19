class MessageDeleteJob < ApplicationJob
  queue_as :default

  def perform(id)
    ActionCable.server.broadcast "room_channel", {action: "delete",id: id}
  end
end
