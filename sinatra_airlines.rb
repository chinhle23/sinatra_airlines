require 'sinatra'
require 'pp' # pretty print
require 'json'
require 'uri'
require 'net/http'

ENV_KEY = ENV['SPREEDLY_ENV_KEY']
ACCESS_SECRET = ENV['SPREEDLY_ACCESS_SECRET']
GATEWAY_TOKEN = ENV['SPREEDLY_GATEWAY_TOKEN']

get '/' do
  @title = 'Home'
  erb :index
end

get '/result' do
  @title = 'Result'
  @payment_token = params[:payment_method_token]
  # build the cURL command mentioned here: https://docs.spreedly.com/basics/purchase/
  # purchase_uri = URI("https://core.spreedly.com/v1/gateways/#{GATEWAY_TOKEN}/purchase.json")
  # purchase_post_request = Net::HTTP::Post.new(purchase_uri)
  # purchase_post_request.basic_auth(ENV_KEY, ACCESS_SECRET)
  # purchase_post_request['Content-Type'] = 'application/json'
  # purchase_post_request.body = {
  #   'transaction' => {
  #     'payment_method_token' => @payment_token,
  #     'amount' => 100,
  #     'currency_code' => 'USD',
  #     'retain_on_success' => true
  #   }
  # }.to_json

  # purchase_response = Net::HTTP.start(purchase_uri.hostname, purchase_uri.port, use_ssl: true) do |http|
  #   http.request(purchase_post_request).body
  # end
  # parsed_purchase_response = JSON.parse(purchase_response)
  # pp parsed_purchase_response
  erb :result
end

get '/spreedly' do
  @title = 'Spreedly'
  erb :spreedly
end



# build the cURL command mentioned here: https://docs.spreedly.com/guides/adding-payment-methods/api/
# payment_method_uri = URI('https://core.spreedly.com/v1/payment_methods.json')
# payment_method_post_request = Net::HTTP::Post.new(payment_method_uri)
# payment_method_post_request.basic_auth(ENV_KEY, ACCESS_SECRET)
# payment_method_post_request['Content-Type'] = 'application/json'
# payment_method_post_request.body = {
#   'payment_method' => {
#     'credit_card' => {
#       'first_name' => 'Joe',
#       'last_name' => 'Jones',
#       'number' => '5555555555554444',
#       'verification_value' => '423',
#       'month' => '3',
#       'year' => '2032'
#     },
#     'email' => 'joey@example.com',
#     'metadata' => {
#       'key' => 'string value',
#       'another_key' => 123,
#       'final_key' => true
#     }
#   }
# }.to_json

# payment_method_response = Net::HTTP.start(payment_method_uri.hostname, payment_method_uri.port, use_ssl: true) do |http|
#   http.request(payment_method_post_request).body
# end
# parsed_payment_method_response = JSON.parse(payment_method_response)
# payment_token = parsed_payment_method_response['transaction']['payment_method']['token']




