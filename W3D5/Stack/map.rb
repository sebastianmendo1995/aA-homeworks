class Map

    def initialize
        @my_map = []
    end

    def set(key,value)
        if self.has_key?(key)
            (0...my_map.length).each do |idx|
                if my_map[idx][0] == key
                    my_map[idx][1] = value
                end
            end
        else
            my_map << [key,value]
        end
        [key,value]
    end

    def has_key?(key)
        my_map.any? {|sub| sub[0] == key}
    end

    def get(key)
        my_map.each{|sub| return sub[1] if sub[0] == key}
    end

    def delete(key)
        my_map.delete_if{|sub| sub[0] == key}
    end

    def show
        my_map.dup
    end

    private
    attr_reader :my_map
end
