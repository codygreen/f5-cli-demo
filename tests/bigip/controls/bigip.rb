# copyright: 2018, The Authors

title "BIG-IP Ready"

# ensure the ATC is ready
require_controls 'bigip-atc' do
  control 'bigip-connectivity'
  control 'bigip-application-services'
  control 'bigip-application-services-version'
  control 'bigip-licensed'
end

control "Demo App Ready" do
  impact 1.0
  title "NGINX Demo App"
  describe http("http://10.1.20.10") do
    its('body') { should match /Welcome to nginx/}
  end
end