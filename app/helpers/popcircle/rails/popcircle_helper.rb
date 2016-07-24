module Popcircle
  module Rails
    module PopcircleHelper
      include ActionView::Helpers::TagHelper
      include FontAwesome::Rails::IconHelper

      def popcircle(circles, options = {})
        # options        = circles.length > 1 ? circles.extract_options! : {}
        raise Exception.new('Argument `circles` not a Hash...') unless circles.is_a? Hash

        if circles[:icons]
          circles = circles[:icons].map { |circle| { icon: circle } }
        elsif circles[:images]
          circles = circles[:images].map { |circle| { image: circle } }
        end
        options[:list] ||= 'pops'
        content_tag :div, class: 'popcircle-box' do
          trigger + list(circles, options)
        end if circles
      end

      private

      def trigger
        content_tag :div, '', class: 'popcircle-trigger'
      end

      def list(circles, options)
        content_tag :div, class: 'popcircle' do
          content_tag :ul, id: options[:list] do
            circles.each do |circle|
              concat list_item(circle)
            end
          end
        end
      end

      def list_item(circle)
        content_tag :li, link_with_image_or_icon(circle).html_safe
      end

      def link_with_image_or_icon(circle)
        link_to (circle[:link] ||= '') do
          if circle[:image]
            image_tag circle[:image]
          elsif circle[:icon]
            fa_icon "#{circle[:icon]} 2x"
          else
            'UH OH'
          end
        end
      end
    end
  end
end