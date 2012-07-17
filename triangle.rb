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

#class TriangleError < StandardError
#end

def triangle(a, b, c)
#get a point for each side equal, then do # of points - 3 eq, 1 iso, 0 scal
    fail TriangleError unless a + b > c && b + c > a && c + a > b && a > 0 && b > 0 && c > 0

  counter = 0
  counter += 1 if a == b
  counter += 1 if b == c
  counter += 1 if c == a

  if counter == 3
    return :equilateral
  elsif counter == 1
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
