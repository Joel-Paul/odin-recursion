def merge_sort(array)
  return array if array.empty? or array.length == 1

  # sort left
  l = merge_sort array[...array.length / 2]
  # sort right
  r = merge_sort array[array.length / 2..]

  # merge
  merged = []
  li = 0
  ri = 0
  while true
    if li >= l.length
      merged += r[ri..]
      break
    end
    if ri >= r.length
      merged += l[li..]
      break
    end

    le = l[li]
    re = r[ri]

    if le < re
      merged << le
      li += 1
    else
      merged << re
      ri += 1
    end
  end
  merged
end

p merge_sort [3, 2, 1, 13, 8, 5, 0, 1]
# => [0, 1, 1, 2, 3, 5, 8, 13]

p merge_sort [105, 79, 100, 110]
# => [79, 100, 105, 110].