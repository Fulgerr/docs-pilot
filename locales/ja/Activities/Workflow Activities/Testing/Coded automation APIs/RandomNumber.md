# RandomNumber

Generates a random integer with a given length.

# 



# Overloads

RandomNumber()Generates a random integer.RandomNumber(Int64, Int64)Generates a random integer, considering a minmum and maximum
                                value.RandomNumber(Int64, Int64, Int32)Generates a random integer, considering a minmum and maximum
                                value, as well as a number of decimals.

# RandomNumber()

Generates a random integer.

decimal RandomNumber()

# RandomNumber(Int64, Int64)

Generates a random integer, considering a minmum and maximum value.

decimal RandomNumber(
	long min,
	long max
)

minInt64The minimum value (default long.MinValue).maxInt64The maximum value (default long.MaxValue).

# RandomNumber(Int64, Int64, Int32)

Generates a random integer, considering a minmum and maximum value, as well as a
                number of decimals.

decimal RandomNumber(
	long min,
	long max,
	int decimals
)

minInt64The minimum value (default long.MinValue).maxInt64The maximum value (default long.MaxValue).decimalsInt32The number of decimals (default 0).

# Return value

Decimal

Generated random number.
