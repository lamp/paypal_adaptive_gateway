require 'spec_helper.rb'

describe ActiveMerchant::Billing::PaypalAdaptivePaymentGateway do
  
  before :all do
    @gateway = ActiveMerchant::Billing::PaypalAdaptivePaymentGateway.new $config
  end

  describe 'making payments' do

    it "should be ok" do
      @gateway.should_not == nil
    end

    it "should pay" do
      response = @gateway.pay :receiver_list => [{:email => 'foo@bar.com', :amount => 5,}],
                   :fees_payer => 'PRIMARYRECEIVER',
                   :return_url => 'http://foo.com',
                   :cancel_url => 'http://foo.com',
                   :notify_url => 'http://foo.com'
                   
      response.status.should == ''
    end

  end

  describe "refunds" do

  end

  describe "preapproval requests" do

  end
  
end