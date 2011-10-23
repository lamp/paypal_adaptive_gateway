require 'rubygems'
require 'bundler'
Bundler.require :default
require Dir.getwd + '/lib/paypal_adaptive_gateway'

Rails.env = 'test'
$config = {
  :login => 'foo',
  :password => 'asdsad',
  :appid => 'dasdsa',
  :signature => "sdafdsf"
}
