
# All of this code is from Chapter 10 of Chris Pine's "Learn to Program"
# book.
# In a given game world, count the size of the continent a given square is
# located on.

# A good future excercise would be to randomly generate a world instead of hard
# coding one. 

# Create an 11x11 world
M = 'land'
o = 'water'

world = [[M,o,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,M,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

# using recursion, write a method that counts the continent size
# of a given square in the grid.

def continent_size(world, x, y)
    if world[y][x] != 'land'
      # Don't count it, because it is either water or land we counted.
      return 0
    end

    # When it is land, first count the grid we are on, and mark it as counted.
    size = 1
    world[y][x] = 'counted land'

    # And then check all neighbor grids. (and therefore, neighbor's neighbors)
    size = size + continent_size(world, x-1, y-1)
    size = size + continent_size(world, x  , y-1)
    size = size + continent_size(world, x+1, y-1)
    size = size + continent_size(world, x-1, y  )
    size = size + continent_size(world, x+1, y  )
    size = size + continent_size(world, x-1, y+1)
    size = size + continent_size(world, x  , y+1)
    size = size + continent_size(world, x+1, y+1)
    #returning size at the end of all of them.
    size

end

puts continent_size(world, 10, 10)
