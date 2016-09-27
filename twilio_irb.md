RestClient.post 'http://example.com/resource', :param1 => 'one', :nested => [ :param2 => 'two']

RestClient.post('https://AC11e0866641c6d3f3a96a7f9baa6e3ef9:d7ddbab262f597311e94e88a582fb7c1@api.twilio.com/2010-04-01/Accounts/AC11e0866641c6d3f3a96a7f9baa6e3ef9/Messages.json',
  :Body => 'Hello world!',
  :To => '9713731374',
  :From => '5038500733'
)





AC11e0866641c6d3f3a96a7f9baa6e3ef9
response = RestClient::Request.new(
    :method => :post,
    :url => 'https://api.twilio.com/2010-04-01/Accounts/AC11e0866641c6d3f3a96a7f9baa6e3ef9/Messages.json',
    :user => 'AC11e0866641c6d3f3a96a7f9baa6e3ef9',
    :password => 'd7ddbab262f597311e94e88a582fb7c1',
    :payload => { :Body => 'Hello world!',
                  :To => '9713731374',
                  :From => '5038500733' }
  ).execute
