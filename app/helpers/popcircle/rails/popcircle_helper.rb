module PopcircleHelper
  include ActionView::Helpers::TagHelper

  def popcircle(*circles)
    options        = circles.extract_options!
    options[:list] ||= 'pops'
    tag.div class: 'popcircle-box' do
      tag.div class: 'popcircle-trigger'
      tag.div class: 'popcircle' do
        tag.ul id: options[:list] do
          circles.each do |circle|
            tag.li do
              link_to (circle[:link] ||= '') do
                if circle[:image]
                  image_tag circle[:image]
                elsif circle[:icon]
                  fa_icon circle[:icon]
                end
              end
            end
          end
        end
      end
    end if circles
  end
end

ActiveSupport.on_load(:action_view) do
  include PopcircleHelper
end