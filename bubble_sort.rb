class Sorter
  def bubble_sort(sequence=[])
    if sequence==[]
      puts "Your array is empty!"
      return nil
    end

    swap_count = 0
    swap = true

    while swap
      swap=false
      sequence.size.times do |current|
        if current + 1 < sequence.size && sequence[current] > sequence[current + 1]
          swap = true
          swap(sequence,current, current + 1)
          swap_count += 1
        end
      end
    end
    puts "You swapped #{swap_count} times!"
    print sequence
    return sequence
  end

  def swap(array,index_1, index_2)

    array[index_1], array[index_2] = array[index_2], array[index_1]

  end
end








