module Fastlane
  module Actions
    class EmojiAppIconAction < Action
      def self.run(params)
        require 'mini_magick'
        font = "/System/Library/Fonts/Apple Color Emoji.ttf"

        icon = MiniMagick::Image.open("Themoji/TemplateAppIcon.png")
        icon.format("png")
        icon.combine_options do |i|
          i.font font
          i.gravity "Center"
          i.pointsize 100
          i.draw "text 0,0 '#{params[:emoji]}'"
        end
        icon.write("LeTiroch.png")
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :emoji)
        ]
      end

      def self.authors
        ["KrauseFx"]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
