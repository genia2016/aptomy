# aptomy
## few bash scripts for the sequential and parrallel processing.



###  example

Sample SSTable generating and bulk loading code for DataStax [Using Cassandra Bulk Loader, Updated](http://www.datastax.com/dev/blog/using-the-cassandra-bulk-loader-updated) blog post.
This fetches historical prices from [Yahoo! Finance](http://finance.yahoo.com/) in CSV format, and turn them to SSTables.

## Generating SSTables

Run:

    $ ./gradlew run

This will generate SSTable(s) under `data` directory.

## Bulk loading

First, create schema using `schema.cql` file:

    $ cqlsh -f schema.cql

Then, load SSTables to Cassandra using `sstableloader`:

    $ sstableloader -d <ip address of the node> data/quote/historical_prices

(assuming you have `cqlsh` and `sstableloader` in your `$PATH`)

## Check loaded data

