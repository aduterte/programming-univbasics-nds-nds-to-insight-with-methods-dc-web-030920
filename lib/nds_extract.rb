$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  i = 0
  gross = 0
  while i < director_data[:movies].length do
    gross += director_data[:movies][i][:worldwide_gross]
    i += 1
  end
  gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
<<<<<<< HEAD

  i = 0

  while i < nds.length do
    dir_name = nds[i]
    result[dir_name[:name]] = gross_for_director(dir_name)
=======
  dir_name = nil
  result[dir_name]=0
  i = 0
  while i < nds.length do
    result[nds[i][:name]] += gross_for_director(director_data)


>>>>>>> dad9b37dcd6f563c58d8a30ec4b164b3b4cce264
    i += 1
  end
  result
end
