$values = ['foo', 'bar', 'baz']
notice(grep($values, 'ba.*')) # => ['bar', 'baz']
