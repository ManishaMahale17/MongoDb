schema:
-- predefined structure.
Replications:
-- used to scale db,creation of secondary nodes
-- replication it is the method of dupliaction of data across multiple servers.
-- high availabilityof datadisaster recovery.
--no downtimes and maintainace.

SHARDING:
-- sharding belongs to horizontal scaling.(divide workload of single serverto multiple servers)
-- (vertical scaling:increase storage capacity)
-- it is method for allocating data across multiple servers.
-- MongoDb used sharding to help deveoplment with big data sets and large throughput the operations .

Joins in sql:
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
collectons:
-- place where data is organise and store. like whole suitecase

Monodb Entities:
-- -collections
-- -flexible schema.
-- -no joins
-- -Quering:filterring,sorting,aggragation,stnthax is similar to js
-- scalability(horizontal scaling)&high performance.handle large valume of data on multiple machins
--replications,sharding

aggregate function in mongodb:
-- Aggregation operations process multiple documents and return computed results.it collect document and store one group result.
-- You can use aggregation operations to
-- Group values from multiple documents together.
-- Perform operations on the grouped data to return a single result.
-- Analyze data changes over time
-- 3 types
-- aggreagation pipeline
-- map-reduce function
-- single purpose aggregation
-****opeartion aggragation:
-- $project ,$group ,$sort ,$limit ,$skip ,$out,$unwind
****accumulator:
-- sum,min,max,avg,last,first,count.

Map-reduce functionality:
--map is used for grouping all documents
--reduce:used to perform operations on group data.

-- In MongoDB, map-reduce operations use custom JavaScript functions to map, or associate, values to a key. If a key has multiple values mapped to it, the operation reduces the values for the key to a single object.

-- The use of custom JavaScript functions provide flexibility to map-reduce operations. For instance, when processing a document, the map function can create more than one key and value mapping or no mapping. Map-reduce operations can also use a custom JavaScript function to make final modifications to the results at the end of the map and reduce operation, such as perform additional calculations.
Single purpose aggragation:
-- single access,common aggreagation methods(sum,count,min,max)

Indexes in MongoDB:
-- In any database, indexes support the efficient execution of queries. Without them, the database must scan every document in a collection or table to select those that match the query statement. If an appropriate index exists for a query, the database can use the index to limit the number of documents it must inspect.

-- MongoDB offers a broad range of index types and features with language-specific sort orders to support complex access patterns to your data. MongoDB indexes can be created and dropped on-demand to accommodate evolving application requirements and query patterns and can be declared on any field within your documents, including fields nested within arrays.
**Types:
-- 1.Single field index
-- 2.multiKey index
-- 3.Text index
-- 4.geospatical index
-- 5.hashed index
--6.comound index.
**RULES to create indexes
-- 1.Create indexes only for databases and servers that are read-heavy.
-- 2.dont over create indexes as they take around 8kb of space.
-- 3.create indexes strategically for field that frequenty queried together.

Memory mapped files:
-- MongoDB uses memory-mapped files to store it's data (A memory-mapped file is a segment of virtual memory which has been assigned a direct byte-for-byte correlation with some portion of a file or file).

Replication & Consistency of data:
-- MongoDb is not regarded very well in terms of strong consistency. If you have a typical sharded and replicated setup to increase consistency will need to trade off some of the performance of the db. As you know you can execute write operations only on the master of the replica set. By default you can only read from it as well. This is possibly the strongest consistency you can get from MongoDb AFAIK as the other nodes are used only for replication, failover and availability reasons. And you could read from the secondary nodes only for operations where having the latest data is not crucial and for long-running operations, such as aggregation for example.

-- If you set up sharding you could offload a big portion of the read/write operations to different primary nodes. I think that when it comes to MongoDb that is all you could do in order to increasing consistency and performance in particular for larger data sets.

