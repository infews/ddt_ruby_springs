module Examples
  module Step8
    class SoccerBall < InflatableBall
      def kick(count = 1)
        deflate(count, 5000, 0.002)

        "THUNK!"
      end
    end
  end
end
