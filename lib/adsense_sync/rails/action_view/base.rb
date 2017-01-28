module AdsenseSync
  module Rails    
    module ActionView
      module Base
        extend ActiveSupport::Concern

        def adsense_sync_tag(options)
          args = options.map do |key, value|
            "google_ad_#{key} = #{value.to_json};"
          end
          if ::Rails.env.production?
            data_script(args) + base_script
          else
            dummy_img(options) + base_script
          end
        end

        private

        def data_script(args = nil)
          content_tag(:script, args.join("\n").html_safe, type: 'text/javascript')
        end

        def base_script
          src = "#{request.protocol}pagead2.googlesyndication.com/pagead/show_ads.js"
          content_tag(:script, nil, type: 'text/javascript', src: src)
        end

        def dummy_img(options = nil)
          src = "https://dummyimage.com/120x80/000/fff&text=#{options[:slot]}"
          content_tag(:img, nil, src: src, alt: (options[:client]).to_s)
        end
      end
    end
  end
end
