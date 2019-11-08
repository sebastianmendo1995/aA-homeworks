def sluggish_octopus(arr)
    max_fish = ""
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |j|
            if arr[j] > arr[i]
                if max_fish.length < arr[j].length
                    max_fish = arr[j]
                end
            end
        end
    end
    max_fish 
end

def dominant_octupus(arr)
    return arr if arr.length <= 1

    mid = arr.length/2

    left = arr[0...mid]
    right = arr[mid..-1]

    sorted = merge(dominant_octupus(left), dominant_octupus(right))
    sorted[-1]
end

def merge(left, right)
    arr = []
    until left.empty? || right.empty?
        if left[0].length > right[0].length
            arr << right[0]
        else
            arr <<left[0]
        end
    end
    arr + left + right
end



def clever_octupus(arr)
    max_fish = ""
    arr.each do |fish|
        max_fish = fish if max_fish.length < fish.length
    end
    max_fish
end


fish = [
    'fish', 
    'fiiish', 
    'fiiiiish', 
    'fiiiish', 
    'fffish', 
    'ffiiiiisshh', 
    'fsh', 
    'fiiiissshhhhhh'
]

p sluggish_octopus(fish)
p dominant_octupus(fish)
p clever_octupus(fish)