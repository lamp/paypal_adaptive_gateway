require 'rubygems'
require 'bundler'

Bundler.require :default

require Dir.getwd + '/lib/paypal_adaptive_gateway'

$config = {
  :login => 'foo',
  :password => 'asdsad',
  :appid => 'dasdsa',
  :signature => "sdafdsf"
}
