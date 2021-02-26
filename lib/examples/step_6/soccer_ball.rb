module Examples
  module Step6
    class SoccerBall
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
        if count > 5000
          @air = 0
        else
          @air -= count * 0.002
        end
        "THUNK!"
      end
    end
  end
end
