require 'spec_helper.rb'

describe ActiveMerchant::Billing::PaypalAdaptiveGateway do
  
  before :all do
    Rails.env = 'test'
    config = {
      :login => 'foo',
      :password => 'asdsad',
      :appid => 'dasdsa',
      :signature => "sdafdsf"
    }
    @gateway = ActiveMerchant::Billing::PaypalAdaptiveGateway.new config
  end

  describe 'making payments' do

    it "should be ok" do
      @gateway.should_not == nil
    end

    it "should pay" do
      @gateway.pay :reciever_list => [{:email => 'foo@bar.com', :amount => 5,}],
                   :fees_payer => 'PRIMARYRECEIVER',
                   :return_url => 'http://foo.com',
                   :cancel_url => 'http://foo.com',
                   :notify_url => 'http://foo.com'
    end

  end

  describe "refunds" do

  end

  describe "preapproval requests" do

  end
  
end