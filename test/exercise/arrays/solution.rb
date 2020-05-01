module Exercise
  module Arrays
    class << self
      def replace(array)
        max_num = array[0]
        array.each { |num| max_num = num if num > max_num }
        array.map { |num| num.positive? ? max_num : num }
      end

      def search(array, query)
        return -1 if (array.length == 1 && array[0] != query) || array.empty?

        if array.length == 2
          return -1 if array[0] != query && array[1] != query
          return 0 if array[0] == query
          return 1 if array[1] == query
        end

        left = 0
        right = array.length - 1
        mid = (left + right) / 2

        return mid if array[mid] == query
        return search(array[left..mid - 1], query) if array[mid] > query
        search(array[mid + 1..right], query) == -1 ? -1 : mid + search(array[mid..right], query)
      end
    end
  end
end
