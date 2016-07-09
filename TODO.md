# TODO

We want to implement all the functions listed on this page. Feel free to
contribute to this list.

## Map

Function                        | Description
------------------------------- | ------------------------------------------
Map.deep_merge(map1, map2)      | deep merges two maps
Map.invert(map)                 | inverts keys and values
Map.compact(map)                | removes nil values
Map.stringify_keys(map)         | turns every key into string
Map.atomize_keys(map)           | turns every key into an atom
Map.transform_keys(map)         | transforms every key with the provided function
Map.transform_values(map)       | transforms every value with the provided function
Map.reverse_merge(map1, map2)   | merge two maps in reverse order
Map.to_query(map)               | converts the map into HTTP query parameters

## List

Function                        | Description
------------------------------- | ------------------------------------------
List.wrap(value)                | Wraps its argument in an list unless it is already a list.

## Range

Function                        | Description
------------------------------- | ------------------------------------------
Range.intersection(r1, r2)      | Returns the intersection of two ranges
Range.union(r1, r2)             | Returns the union of two ranges
Range.without(r1, r2)           | Returns parts of first range that don't include the second range
Range.overlap?(r1, r2)          | Check if two ranges overlap
Range.subset?(r1, r2)           | Check if the second range is a subset of the first range

## RangeSet - List of ranges

Function                        | Description
------------------------------- | ------------------------------------------
Range.new(ranges...)            | Creates a new range set
Range.intersection(r1, r2)      | Returns the intersection of two range sets
Range.union(r1, r2)             | Returns the union of two range sets
Range.without(r1, r2)           | Returns parts of first range set that don't include the second range set
Range.overlap?(r1, r2)          | Check if two range sets overlap
Range.subset?(r1, r2)           | Check if the second range set is a subset of the first range set

## Time

Function                        | Description
------------------------------- | ------------------------------------------
Time.ago(value, time_unit)      | Time ago in seconds, minutes, etc...
Time.in(value, time_unit)       | Time in future using seconds, minutes, etc...
Time.now                        | Current time
Time.at(timestamp)              | Converts unix timestamp to Time
Time.noon                       | Noon for the current day
Time.midnight                   | Midnight for the current day
Time.beginning_of_day           | Beginning of current day
Time.beginning_of_hour          | Beginning of current hour
Time.beginning_of_minute        | Beginning of current minute
Time.end_of_day                 | End of current day
Time.end_of_hour                | End of current hour
Time.end_of_minute              | End of current minute
