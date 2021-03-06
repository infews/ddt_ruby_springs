module Examples
  module Step5
    class PlaygroundBall
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

      def kick(count = 1)
        if count > 2000
          @air = 0
        else
          @air -= count * 0.005
        end

        "PING!"
      end

      def smell
        "third grade"
      end
    end
  end
end
