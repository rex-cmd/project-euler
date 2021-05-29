#numbers copied as string
L=[[75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] [95, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0][17, 47, 82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [18, 35, 87, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [20, 4, 82, 47, 65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [19, 1, 23, 75, 3, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0], [88, 2, 77, 73, 7, 63, 67, 0, 0, 0, 0, 0, 0, 0, 0], [99, 65, 4, 28, 6, 16, 70, 92, 0, 0, 0, 0, 0, 0, 0], [41, 41, 26, 56, 83, 40, 80, 70, 33, 0, 0, 0, 0, 0, 0], [41, 48, 72, 33, 47, 32, 37, 16, 94, 29, 0, 0, 0, 0, 0], [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14, 0, 0, 0, 0], [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57, 0, 0, 0], [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48, 0, 0], [125, 164, 102, 95, 112, 123, 165, 128, 166, 109, 122, 147, 100, 54, 0], [4, 62, 98, 27, 23, 9, 70, 98, 73, 93, 38, 53, 60, 4, 23]]




a = [   [3],
       [7,4],
      [2,4,6],
     [8,5,9,3]]

def longest_path(arr)
    return nil if arr.empty?
  
    h = { len: arr.first.first, path: [] }
    return h if arr.size == 1
  
    arr[1..-1].reduce([h]) do |l,row|
      h = l.first
      left = { len: h[:len]+row.first, path: h[:path]+[:l] }
      mid = l.each_cons(2).to_a.zip(row[1..-2]).map do |(h1,h2),v|
              if h1[:len] >= h2[:len]
                { len: h1[:len]+v, path: h1[:path]+[:r] }
              else
                { len: h2[:len]+v, path: h2[:path]+[:l] }
              end
            end
      h = l.last
      right = { len: h[:len]+row.last, path: h[:path]+[:r] }
      [left, *mid, right]
    end.max_by { |h| h[:len] }
  end
  puts longest_path(a)