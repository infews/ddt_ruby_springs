module Examples
  module Step7
    class PlaygroundBall < InflatableBall
      def kick(count = 1)
        deflate(count, 2000, 0.005)

        "PING!"
      end

      def smell
        "third grade"
      end
    end
  end
end
