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
  raise TriangleError if invalidTriangle(a, b, c)

  return :equilateral if a == b && b == c

  return :isosceles   if a == b || b == c || a == c

  :scalene

end

def invalidTriangle(a, b, c)
  # check for small numbers
  return true if [a, b, c].min <= 0

  # at least check that sides are probably fine
  x, y, z = [a, b, c].sort
  return true if x + y <= z

  false
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
