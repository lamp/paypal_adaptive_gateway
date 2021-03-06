class ConfigDoesNotExist < StandardError; end;

class AttributeNotFound < StandardError; end;

class PaypalAdaptivePaymentsApiError < StandardError
  
  attr_reader :response
  
  def initialize response
    @response = response
  end
  
  def debug
    @response.inspect
  end
  
end
