module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.max
        array.map { |num| num.positive? ? max : num }
      end

      def search(arr, query)
        return -1 if arr.empty?

        left = -1
        right = arr.length
        while left < right - 1
          mid = (left + right) / 2
          if arr[mid] < query
            left = mid
          else
            right = mid
          end
        end
        arr[mid] == query ? right : -1
      end
    end
  end
end
