# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def equality_check x, y, arr
  result = x == y ? arr << true : arr << false
  result
end

def triangle(a, b, c)
  # WRITE THIS CODE
  array = []
  equality_check a, b, array
  equality_check b, c, array
  equality_check a, c, array

  count = array.count(true)
  if count == 1 
    :isosceles 
  elsif count == 3
    :equilateral
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
