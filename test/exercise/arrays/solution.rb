module Exercise
  module Arrays
    class << self
      def replace(array)
        max = array.max
        return array.map { |num| num > 0 ? max : num }
      end

      def search(_array, _query)
        if _array.empty? 
          return -1
        end
        left = -1
        right = _array.length
        while left < right - 1 do
          mid = (left + right) / 2
          if _array[mid] < _query
            left = mid
          else
            right = mid
          end
        end
        return _array[mid] == _query ? right : -1
      end
    end
  end
end
