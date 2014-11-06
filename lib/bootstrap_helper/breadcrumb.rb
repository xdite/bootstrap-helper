require 'active_support/concern'

module Breadcrumb
  extend ActiveSupport::Concern

  included do
    helper Helpers
    before_filter :init_breadcrumbs
  end

  protected

  def init_breadcrumbs
    @breadcrumbs = BreadcrumbList.new
  end

  def drop_breadcrumb(text, url=nil)
    @breadcrumbs << BreadcrumbItem.new(text, url)
  end

  def no_breadcrumbs
    @breadcrumbs.reset!
  end

  module Helpers
    def render_breadcrumb
      return "" if @breadcrumbs.empty?

      last_index = @breadcrumbs.length - 1

      divider = ' <span class="divider">/</span>'.html_safe

      index = 0

      content_tag(:ul, :class => "breadcrumb") do
        @breadcrumbs.map {|breadcrumb|
          classes = []

          content = ActiveSupport::SafeBuffer.new

          content << (if breadcrumb.url
                        link_to h(breadcrumb.text), breadcrumb.url
                      else
                        h(breadcrumb.text)
                      end)

          if index == last_index
            classes << "active"
          else
            content << divider
          end

          index += 1

          content_tag(:li, content, :class => classes)
        }.join(" ").html_safe
      end
    end
  end

  class BreadcrumbItem
    attr_reader :text, :url

    def initialize(text, url=nil)
      @text = text
      @url = url
    end
  end

  class BreadcrumbList
    include Enumerable

    def initialize
      reset!

      @list << BreadcrumbItem.new("<i class='icon-home'></i>".html_safe, "/")
    end

    def push(item)
      @list << item
    end
    alias :<< :push

    def reset!
      @list = []
    end

    def length
      @list.length
    end

    def empty?
      @list.empty?
    end

    def each(&block)
      @list.each(&block)
    end
  end
end
