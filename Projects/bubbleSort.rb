def bubble_sort(arr)
  n = arr.length
  (0...n).each do |i|
    swapped = false
    (0...(n - i - 1)).each do |j|
      if arr[j] > arr[j + 1]
        arr[j], arr[j + 1] = arr[j + 1], arr[j]
        swapped = true
      end
    end
    break unless swapped  # Early exit if no swaps in a pass
  end
  return arr
end

# Example usage:
print bubble_sort([64, 34, 25, 12, 22, 11, 90])