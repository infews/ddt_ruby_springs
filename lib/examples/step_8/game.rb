module Examples
  module Step8
    class Game
      def use_ball(ball)
        @ball = ball
      end

      def play(kick_count)
        @ball.kick(kick_count)
      end
    end
  end
end
