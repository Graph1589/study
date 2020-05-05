module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each
      def my_each
        for item in self
          yield(item)
        end
      end

      # Написать свою функцию my_map
      def my_map
        result = []
        func = ->(result, x) { result << yield(x) }
        my_reduce(result, &func)
        MyArray.new(result)
      end

      # Написать свою функцию my_compact
      def my_compact
        result = []
        func = ->(acc, x) { x.nil? ? acc : acc << x }
        my_reduce(result, &func)
        MyArray.new(result)
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        func = ->(x) { acc = acc.nil? ? x : yield(acc, x) }
        my_each(&func)
        acc
      end
    end
  end
end
