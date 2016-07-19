class Message < ApplicationRecord
  after_create_commit do
    MessageBroadcastJob.perform_later self
  end

  before_destroy do
    MessageDeleteJob.perform_later id
  end
end
