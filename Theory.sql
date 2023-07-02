1.What is MongoDB?
--Open source,store large amount of data.
--MongoDB is a document database with the scalability and flexibility that you want with the querying and indexing that you need.

2.Functionality of MongoDB
--schemaless db, document base,scability,high performance.
--Ad-hoc queries for optimized, real-time analytics. ...
-- Indexing appropriately for better query executions. ...
-- Replication for better data availability and stability. ...
-- Sharding. ...
-- Load balancing.

3.Why MongoDB?
--MongoDB is a document-oriented database which stores data in JSON-like documents with dynamic schema. It means you can store your records without worrying about the data structure such as the number of fields or types of fields to store values. MongoDB documents are similar to JSON objects.

4.MongoDB: CAP Approach
CAP theorem in Mongodb
-- According to the CAP theorem, MongoDB is a CP system and Cassandra is an AP system. CAP theorem provides an overly simplified view of today's distributed systems such as MongoDB and Cassandra. Under normal operations, availability and consistency are adjustable and can be configured to meet specific requirements

5.MogoDB: Hierarchical Objects
-- MongoDB allows various ways to use tree data structures to model large hierarchical or nested data relationships. Presents a data model that organizes documents in a tree-like structure by storing references to "parent" nodes in "child" nodes.

6.RDB Concepts to NoSQL
-- What is the difference between RDB and NoSQL?
-- NoSQL databases don't support transactions (support only simple transactions). Relational Database supports transactions (also complex transactions with joins). NoSQL Database is used to handle data coming in high velocity. Relational Database is used to handle data coming in low velocity

7.Choices made for Design of MongoDB
-- Rule 1: Favor embedding unless there is a compelling reason not to.
-- Rule 2: Needing to access an object on its own is a compelling reason not to embed it.
-- Rule 3: Avoid joins and lookups if possible, but don't be afraid if they can provide a better schema design.
_____________________________________________________________________________________________________
 1.JSON & BSON Format:
--  Binary vs. text: BSON is a binary-encoded format, whereas JSON is a text-based format.
--  This means that BSON is compact for transmitting over a network, while JSON is human-readable and easier to work with in various contexts.

--MongoDB stores data in BSON format both internally.

BSON:
--same as json in  terms of synthax, data types .

--  BSON could be a binary shape of JSON that is utilized to speak to information structures – called records or objects – in MongoDB. In spite of the fact that compared to JSON, BSON isn’t very the same thing. Plaintext JSON is to some degree wasteful for bulk capacity and information transmission, so BSON arrangement can be utilized after you got to send a part of JSON information at tall speed – and don’t need to bargain with compression, which can be expensive. Converting BSON to JSON and vice-versa is large much speedier than compressing JSON employing a general-purpose compression calculation. 

-- Advantages of BSON:

-- BSON way better underpins dates and binary data.
-- BSON records tend to be littler than JSON records, which is the most reason for utilizing its interior MongoDB.
-- The BSON sort arrangement is exceedingly traversable and quick in nature. An Interior BSON objects file can be built and the objects are coordinated against inquiry expressions on the beat level and BSON keys.
-- Using it was the local sorts of the dialect and the provided sorts such as the ObjectID are all that’s required for the mapping to be done to the BSON sort.

___________________________________________________________________________________________________________
2.Schema Free
-- A schemaless database manages information without the need for a blueprint. The onset of building a schemaless database doesn't rely on conforming to certain fields, tables, or data model structures.
advantages:
-- Greater flexibility over data types
-- No pre-defined database schemas
-- No data truncation
-- Suitable for real-time analytics functions
-- Enhanced scalability and flexibility 
_____________________________________________________________________________________________________________
3.MongoDB Features
-- 1. Support ad hoc queries

-- In MongoDB, you can search by field, range query and it also supports regular expression searches.

-- 2. Indexing

-- 3. Replication

-- 4. Duplication of data

-- 5. Load balancing

-- 6. Supports map reduce and aggregation tools.

-- 7. Uses JavaScript instead of Procedures.

-- 8. It is a schema-less database written in C++.

-- 9. Provides high performance.

-- 10. Stores files of any size easily without complicating your stack.

-- 11. Easy to administer in the case of failures.

-- 12. It also supports:

-- JSON data model with dynamic schemas
-- Auto-sharding for horizontal scalability
-- Built in replication for high availability
_________________________________________________________________________________________________________
4.Index Functionality
--fast acesss of data.Indexes can improve the efficiency of read operations. 
-- A database index is a special data structure that provides faster access to data and helps create highly performant applications. 
--An index usually consists of two columns: the search key and the data pointer. The key stores the value you want to search for and the pointer points to the block where the data resides. Let’s say you have an index on the ‘score’ field (column) of a collection (table) named 'exam'. When you want to access the scores that are < 40, the index will scan through blocks rather than individual documents (rows).


_____________________________________________________________**********
show databases;

use databaseName;
--//current database name
db
--//query the data:
db.collectionName.find();
db.collectionName.find().preety();

--//Inserting one documents
db.collectionName.insertOne({
    firstName:'John'
})
--//Inserting many documents

db.collectionName.insertMany([
    {firstName:'John'},
    {largestName:'jjjjjjjj'}
    ])
--//show collections
show collections;
--create a collection
db.createCollection('collectionName');
db.collectionName.insertOne({
    name: 'John',
    place:'USA',
    company:'jjjjsj'
})
--db.collectionName.find();
db.createCollection('users');
show collections;
db.users.find({firstName:"manu"})

---Check indexes
db.collectionName.getIndexes();

--create index
db.collectionName.createIndex({'feilds'})
--delete index
db.collectionName.dropIndex({'fiild'})

----------Delete fields-----
db.collectionName.deleteOne({firstName:"man"});

-------update feilds--------
db.collectionName.updateOne({firstName:"manu"},{$set:{age:25}});

-- db.collectionName.updateMany([
-- {firstName:"manu"},
-- {firstName:"Vaibhav}
-- ])




