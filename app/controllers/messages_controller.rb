class MessagesController < ApplicationController

  def create
    @phone = Phone.find_by_id(params[:message][:phone_id])
    @message = @phone.messages.new
    @message.body = params[:message][:body]
    @notification = Gcm::Notification.new
    @device = Gcm::Device.find_by_registration_id(@phone.gcmid)
    @notification.device = @device
    @notification.collapse_key = "updates_available"
    @notification.delay_while_idle = false
    @notification.data = {:registration_ids => [@phone.gcmid], :data => {:message_text => @message.body}}
    @notification.save!

    Gcm::Notification.send_notifications([@notification])

    if @message.save
      flash[:success] = "Message created!"
      redirect_to @phone
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @micropost.destroy
    redirect_to root_path
  end

end
