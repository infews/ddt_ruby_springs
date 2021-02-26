module Examples
  module Step7
    class InflatableBall
      def initialize
        @air = 0
      end

      def inflate
        @air = 100
      end

      def full?
        @air >= 90
      end

      def remove_from_storage
        @air -= 50
      end

      def deflate(kick_count, limit, factor)
        if kick_count > limit
          @air = 0
        else
          @air -= kick_count * factor
        end
      end
    end
  end
end
