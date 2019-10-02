# Consider the following method and a call to that method:
# Use the ruby documentation to determine what this code will print.

def my_method(abc, xyz, bcd = 2, ccd = 3)
  p [abc, bcd, ccd, xyz]
end

my_method(4, 5, 6)

# Ruby is smart and has a few tricks up its sleeve to help determine
# what method arguments are being used where in a method's body.
