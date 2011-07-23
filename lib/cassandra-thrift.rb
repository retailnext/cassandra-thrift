require 'rubygems'
gem 'thrift_client', '~> 0.6.3'
require 'thrift_client'

here = File.expand_path(File.dirname(__FILE__))

class Cassandra ; end
unless Cassandra.respond_to?(:VERSION)
  require "#{here}/cassandra-thrift/0.7"
end

$LOAD_PATH << "#{here}/cassandra-thrift/#{Cassandra.VERSION}/gen-rb"
require "#{here}/cassandra-thrift/#{Cassandra.VERSION}/gen-rb/cassandra"
