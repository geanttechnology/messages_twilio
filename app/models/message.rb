class Message < ActiveRecord::Base
  before_create :send_message

private

  def send_message
    begin
      response = RestClient::Request.new(
        :method => :post,
        :url => "https://api.twilio.com/2010-04-01/Accounts/AC11e0866641c6d3f3a96a7f9baa6e3ef9/Messages.json",
        :user => 'AC11e0866641c6d3f3a96a7f9baa6e3ef9',
        :password => 'd7ddbab262f597311e94e88a582fb7c1',
        :payload => { :Body => body,
                      :To => to,
                      :From => from }
      ).execute
    rescue RestClient::BadRequest => error
      message = JSON.parse(error.response)['message']
      errors.add(:base, message)
      false
    end
  end
end
