module Examples
  module Step2
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

      def kick(count = 1)
        if count > 5000
          @air = 0
        else
          @air -= count * 0.002
        end
      end
    end
  end
end
