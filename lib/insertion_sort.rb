class Sort
  def self.insertion(arr)
    # must iterate through all array elements
    (1..arr.length - 1).each do |elem|
      # end loop if either element 0 or the preceeding element is smaller
      while elem > 0 && (arr[elem - 1] > arr[elem])
        # swap
        arr[elem - 1], arr[elem] = arr[elem], arr[elem - 1]
        elem -= 1
      end
    end
    # display sorted array
    arr
  end
end
