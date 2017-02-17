$values = ['foo', 'bar', 'baz']
notice(member($values, 'foo')) # => true

$valuehash = { 'a' => 1, 'b' => 2, 'c' => 3 }
notice(has_key($valuehash, 'b')) # => true
