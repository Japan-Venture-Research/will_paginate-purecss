require "will_paginate/view_helpers/sinatra"
require "purecss_pagination/purecss_renderer"

module PurecssPagination
  # A custom renderer class for WillPaginate that produces markup suitable for use with Pure.
  class Sinatra < WillPaginate::Sinatra::LinkRenderer
    include PurecssRenderer
  end
end
