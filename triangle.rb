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
def triangle(a, b, c)
  # WRITE THIS CODE
  unless a > 0 && b > 0 && c > 0
    raise TriangleError.new("Sides cannot be negative") 
  end

  a_plus_b        = a + b
  a_plus_c        = a + c
  b_plus_c        = b + c

  sides_sum_error = "The sum of two sides of a triangle must be greater than the third side"

  raise TriangleError.new(sides_sum_error) if a_plus_b <= c
  raise TriangleError.new(sides_sum_error) if a_plus_c <= b
  raise TriangleError.new(sides_sum_error) if b_plus_c <= a

  if a == b && a == c
    :equilateral
  elsif a == b || a == c || b == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
