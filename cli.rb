#!/usr/bin/env ruby
# ruby
# frozen_string_literal: true

require 'optparse'
options = {}
OptionParser.new do |parser|
  parser.on('-n', '--name NAME', 'The name of the person') do |value|
    options[:name] = value
  end
end.parse!
puts "Hello #{options[:name] || 'stanger'}"
