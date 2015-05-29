require 'minitest/autorun'
require_relative 'bubble_sort.rb'

class Bubble_sort_test < Minitest::Test
 def test_for_empty_array
   assert_equal(nil,Sorter.new.bubble_sort([]))
 end

 def test_for_single_element_array
     assert_equal([1],Sorter.new.bubble_sort([1]))
 end

 def test_for_two_element_array_already_sorted
   assert_equal([0,1],Sorter.new.bubble_sort([0,1]))
 end

 def test_for_two_element_array_not_sorted
   assert_equal([0,1],Sorter.new.bubble_sort([1,0]))
 end

 def test_for_multiple_element_array
   assert_equal([0,1,3,7,10,10,11,15],Sorter.new.bubble_sort([1,0,7,3,10,15,11,10]))
 end

 def test_for_swap_method
   assert_equal([0,1], Sorter.new.swap([1,0], 0, 1))
 end

end