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
  # sort the sides
  a, b, c = [a, b, c].sort
  
  # validating positive values
  if a <= 0
    raise TriangleError.new("Triangles are positive, man")
  end
  
  # checking a triangle is possible
  if  c >= a + b
    raise TriangleError.new("One of the sides is too long")
  end
  
  # determine triangle type
  if (a == b) and (b == c)
    :equilateral
  elsif (a == b) or (a == c) or (b == c)
    :isosceles
  else
    :scalene 	
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
