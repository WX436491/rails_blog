class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    current_user.appear
    # stream_from "some_channel"
  end

  def unsubscribed
    current_user.disappear
    # Any cleanup needed when channel is unsubscribed
  end

  def appear(data)
    current_user.appear(on: data['appearing_on'])
  end

  def away
    current_user.away
  end

end
