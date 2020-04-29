module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        rating_list = array.select { |film| film['country'].to_s.include?(',') && film['rating_kinopoisk'].to_f.positive? }
                           .map { |film| film['rating_kinopoisk'].to_f }
        rating_list.reduce(:+) / rating_list.length
      end

      def chars_count(array, threshold)
        array.select { |film| film['rating_kinopoisk'].to_f >= threshold}
             .map { |film| film['name'].count 'и'}.reduce(:+)
      end
    end
  end
end
