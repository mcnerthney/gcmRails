class MessagesController < ApplicationController

  def create
    @phone = Phone.find_by_id(params[:message][:phone_id])
    @message = @phone.messages.new
    @message.body = params[:message][:body]
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