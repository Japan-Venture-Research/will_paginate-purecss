require "purecss_pagination/version"

module PurecssPagination
  # Contains functionality shared by all renderer classes.
  module PurecssRenderer
    ELLIPSIS = "&hellip;"

    def to_html
      html = pagination.map do |item|
        case item
          when Fixnum
            page_number(item)
          else
            send(item)
        end
      end.join(@options[:link_separator])

      @options[:container] ? html_container(html) : html
    end

    protected

    def page_number(page)
      link_opts = link_options

      if page == current_page
        tag("li", tag("span", page, class: 'pure-button pure-button-active'))
      else
        tag("li", link(page, page, link_opts.merge(rel: rel_value(page))))
      end
    end

    def previous_or_next_page(page, text, classname)
      link_opts = link_options

      if page
        tag("li", link(text, page, link_opts), class: classname)
      else
        tag("li", tag("span", text, class: 'pure-button pure-button-disabled'), class: classname)
      end
    end

    def gap
      tag("li", tag("span", ELLIPSIS, class: 'pure-button pure-button-disabled'))
    end

    def previous_page
      num = @collection.current_page > 1 && @collection.current_page - 1
      previous_or_next_page(num, @options[:previous_label], "prev")
    end

    def next_page
      num = @collection.current_page < @collection.total_pages && @collection.current_page + 1
      previous_or_next_page(num, @options[:next_label], "next")
    end

    def html_container(html)
      tag :ul, html, class: 'pure-paginator'
    end

    def link_options
      @options[:link_options] || { class: 'pure-button' }
    end
  end
end
