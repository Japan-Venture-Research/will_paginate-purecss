require "will_paginate/view_helpers/action_view"
require "purecss_pagination/purecss_renderer"

module PurecssPagination
  # A custom renderer class for WillPaginate that produces markup suitable for use with Pure.
  class Rails < WillPaginate::ActionView::LinkRenderer
    include PurecssRenderer
  end
end
