#!/usr/bin/env ruby
# This script accepts one argument and passes 
# The regular expression must be only matching: capital letters

puts ARGV[0].scan(/[A-Z]*/).join
