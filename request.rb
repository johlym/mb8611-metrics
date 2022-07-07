# request.rb 
# Returns the JSON output from the MB8611

require 'httparty'
require 'dotenv/load'
require 'json'

# Build headers
headers = {
  'Content-Type': 'application/json',
  'SOAPACTION': 'http://purenetworks.com/HNAP1/GetMultipleHNAPs'
}

# Build request body
body = '{"GetMultipleHNAPs":{"GetMotoStatusStartupSequence":"","GetMotoStatusConnectionInfo":"","GetMotoStatusDownstreamChannelInfo":"","GetMotoStatusUpstreamChannelInfo":"","GetMotoLagStatus":""}}'

# Create POST request and capture response
response = HTTParty.post(
  "https://#{ENV['MODEM_IP_ADDRESS']}", 
  verify: false,
  headers: headers,
  body: body
)

# Parse the response into an OpenStruct
parsed_hnap_response = JSON.parse(response)['GetMultipleHNAPsResponse']

# Assign response objects to variables
hnap_startup_sequence = ['GetMotoStatusStartupSequenceResponse']
hnap_connection_info = parsed_hnap_response['GetMotoStatusConnectionInfoResponse']
hnap_downstream_channel_info = parsed_hnap_response['GetMotoStatusDownstreamChannelInfoResponse']
hnap_upstream_channel_info = parsed_hnap_response['GetMotoStatusUpstreamChannelInfoResponse']
hnap_lag_status = parsed_hnap_response['GetMotoLagStatusResponse']