#!/usr/bin/env ruby
# This script accepts one argument and passes i
# The regular expression must be exactly matching a string that starts,

puts ARGV[0].scan(/^h.n$/).join
