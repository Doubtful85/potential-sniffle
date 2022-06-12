require "kramdown"
require "yard"

module Gcloud
  module Jsondoc
    module MarkupHelper
      # Provides resolve_links
      include YARD::Templates::Helpers::HtmlHelper

      def md s, multi_paragraph = false
        html = Kramdown::Document.new(s.to_s, input: "GFM", hard_wrap: false).to_html.strip
        html = add_anchor_link_directives html
        html = add_css html
        html = unwrap_paragraph(html) unless multi_paragraph
        html = resolve_links(html) if html # in YARD's HtmlHelper
        html
      end

      # Because the gcloud-common Angular app depends on a `data-anchor` attr
      # to navigate to anchors, add it to anchor links now.
      def add_anchor_link_directives html
        html.gsub(/<a href=\"#(.+)\">/, "<a data-anchor=\"\\1\" href=\"#\\1\">")
      end

      def remove_line_breaks html
        html.gsub("\n", " ")
      end

      def unwrap_paragraph html
        html.sub(/\A<p>/, "").sub(/<\/p>\z/, "")
      end

      def add_css html
        # Add the `table` class for correct style in Angular app.
        html.sub("<table>", "<table class=\"table\">")
      end

      # API expected by HtmlHelper; overrides BaseHelper#linkify (not included)
      def linkify(name, title)
        code_obj = YARD::Registry.resolve object.namespace, name, true
        if code_obj.nil?
          name
        elsif code_obj.type == :method
          path = code_obj.namespace.path.gsub("::", "/").downcase
          method_type = get_method_type code_obj
          method_id = "#{code_obj.name}-#{method_type}"
          "<a data-custom-type=\"#{path}\" data-method=\"#{method_id}\">#{title || name}</a>"
        else
          path = code_obj.path.gsub("::", "/").downcase
          "<a data-custom-type=\"#{path}\">#{title || name}</a>"
        end
      end

      def get_method_type code_object
        code_object.constructor? ? "constructor" : code_object.scope.to_s
      end
    end
  end
end
