require 'will_paginate'

if defined?(ActionView)
  require "purecss_pagination/action_view"
end

if defined?(Sinatra)
  require "purecss_pagination/sinatra"
end
