Paypal Adaptive Payments Library for ActiveMerchant
===================================================

##Supports payments, preapprovals, refunds and currency conversions

##Requirements:

  * Rails (usage without rails is untested)
  * yajl-ruby
  * Builder
  * ActiveMerchant

##to install

  ```gem install paypal-adaptive-gateway```
  
##to use

  ###in application_controller.rb
  ```ruby
    def gateway
      @gateway ||= PaypalAdaptivePaymentGateway.new(
       :login => 'your_email',
       :password => 'your_password',
       :signature => ' your_signature',
       :appid => 'your_app_id'
      )
    end
  ```
  ###in the payment process
  * for chained payments
  ```ruby
    
    def checkout
      recipients = [{:email => 'receiver_email',
                     :amount => some_amount,
                     :primary => true},
                    {:email => 'receiver_email',
                     :amount => recipient_amount,
                     :primary => false}
                     ]
      response = gateway.pay(
        :return_url => url_for(:action => 'action', :only_path => false),
        :cancel_url => url_for(:action => 'action', :only_path => false),
        :notify_url => url_for(:action => 'notify_action', :only_path => false),
        :receiver_list => recipients
      )
      redirect_to response.redirect_url_for
    end
  ```
    set the :primary flag to false for each recipient for a split payment
    
  to debug
  
    use either gateway.debug or response.debug this gives you the json response, the xml sent and the url it was posted to. 
  