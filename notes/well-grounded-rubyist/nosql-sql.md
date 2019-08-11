Advantages

1. insertion and retrieval is faster
2. easy manipulation of schema i.e it's just a blob so changing/adding schema is just changing/adding key
3. built for scale. sharded internally
4. supports intelligent functions efficiently

Disadvantages

1. frequent updates - not consistent since inherently sharded. No ACID
2. not read optimized. like reading a set of columns
3. no relations so no constraints
4. no joins so they are manual.

When to use

1. data is a blob
2. write optimized and few updates
3. inherent redundancy