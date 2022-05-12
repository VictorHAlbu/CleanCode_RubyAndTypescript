require 'byebug'
require 'set'
a = ["9034", "4104", "0690", "3412"]


def included_in? array
  array.to_set.superset?(self.to_set)
end

a.included_in?(["9034", "4104", "0690", "3412"])

debugger
puts "0999999999999999999"