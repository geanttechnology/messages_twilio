class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
    @contacts = Contact.all

  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      format.html do
        if @message.save
          flash[:notice] = "Your message was sent!"
          redirect_to messages_path
        else
          render "new"
        end
      end
      format.js do
        @message.save
      end


    end
  end

  def show
    @message = Message.find(params[:id])
  end

private
  def message_params
    params.require(:message).permit(:to, :from, :body)
  end

end
