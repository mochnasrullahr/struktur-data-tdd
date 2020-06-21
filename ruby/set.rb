# Set
# - kumpulan obyek yang unik
# - urutan tidak diperhatikan

module StrukturData
  class Set
      def initialize
        @nothing = true
        @container = Hash.new(false)
      end

      def empty?
        @container.empty?
      end

      def add(item)
        return false if contains(item)
        @container[item] = true
      end

      def size
        @container.size
      end

      def contains(item)
        @container[item]
      end

      def remove(item)
        @container.delete item
      end
  end
end