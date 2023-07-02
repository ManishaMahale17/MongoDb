
{

"address": {

"building": "1007",

"coord": [ -73.856077, 40.848447 ],

"street": "Mall Road Mussorrie",

"zipcode": "10462"

},

"cuisine": "Bakery",

"grades": [

{ "date": { "$date": 1393804800000 }, "grade": "A", "score": 2 },

{ "date": { "$date": 1378857600000 }, "grade": "A", "score": 6 },

{ "date": { "$date": 1358985600000 }, "grade": "A", "score": 10 },

{ "date": { "$date": 1322006400000 }, "grade": "A", "score": 9 },

{ "date": { "$date": 1299715200000 }, "grade": "B", "score": 14 }

],

"name": "Morris Bake Shop",

"restaurant_id": "30075445"

}

Create 20 more documents with above schema and add in 'restaurant' collection in MongoDB. Add some entries where name of restaurant starting with Cafeteria. Add scores for some Restaurant more than 80 less than 100.

db.restaurant.insertMany([
  {

    "address": {
      "building": "1007",
      "coord": [-73.856077, 40.848447],
      "street": "Mall Road Mussorrie",
      "zipcode": "10462"
    },
    "cuisine": "Bakery",


    "grades": [
      { "date": { "$date": 1393804800000 }, "grade": "A", "score": 2 },
      { "date": { "$date": 1378857600000 }, "grade": "A", "score": 6 },
      { "date": { "$date": 1358985600000 }, "grade": "A", "score": 10 },
      { "date": { "$date": 1322006400000 }, "grade": "A", "score": 9 },
      { "date": { "$date": 1299715200000 }, "grade": "B", "score": 14 }
    ],
    "name": "Morris Bake Shop",
    "restaurant_id": "30075445"
  },
  {
    "address": {
      "building": "1050",
      "coord": [-73.856123, 40.848514],
      "street": "Park Avenue",
      "zipcode": "10462"
    },
    "cuisine": "Bakery",
    "grades": [
      { "date": { "$date": 1560345600000 }, "grade": "A", "score": 8 },
      { "date": { "$date": 1546300800000 }, "grade": "A", "score": 7 },
      { "date": { "$date": 1528953600000 }, "grade": "A", "score": 9 },
      { "date": { "$date": 1509705600000 }, "grade": "B", "score": 12 },
      { "date": { "$date": 1492588800000 }, "grade": "A", "score": 5 }
    ],
    "name": "Cafeteria Delights",
    "restaurant_id": "30075446"
  },
  // Add more documents following the same schema
  {
    "address": {
      "building": "203",
      "coord": [-73.855945, 40.848382],
      "street": "Main Street",
      "zipcode": "10462"
    },
    "cuisine": "Bakery",
    "grades": [
      { "date": { "$date": 1560345600000 }, "grade": "A", "score": 9 },
      { "date": { "$date": 1546300800000 }, "grade": "A", "score": 8 },
      { "date": { "$date": 1528953600000 }, "grade": "B", "score": 11 },
      { "date": { "$date": 1509705600000 }, "grade": "A", "score": 7 },
      { "date": { "$date": 1492588800000 }, "grade": "A", "score": 6 }
    ],
    "name": "Cafeteria Bites",
    "restaurant_id": "30075447"
  },
  // Add more documents following the same schema
]);

// Add scores for some restaurants between 80 and 100
db.restaurant.updateOne(
  { "name": "Morris Bake Shop" },
  { $push: { "grades": { "date": { "$date": 1560345600000 }, "grade": "A", "score": 95 } } }
);

db.restaurant.updateOne(
  { "name": "Cafeteria Delights" },
  { $push: { "grades": { "date": { "$date": 1560345600000 }, "grade": "A", "score": 85 } } }
);

-- 1) Write a MongoDB query to display the fields restaurant_id, name, and zip code but exclude the field _id for all the documents in the collection restaurant.


db.restaurant.find({}, { _id: 0, restaurant_id: 1, name: 1, "address.zipcode": 1 })

-- 2)To arrange the name of the restaurants in ascending order while retrieving all columns, you can use the following MongoDB query:

db.restaurant.find({}).sort({ name: 1 })


-- 3. Write a MongoDB query to display the first 5 restaurant in ascending order of name field.



db.restaurant.find().sort({ name: 1 }).limit(5)

-- 4) Write a MongoDB query to display the next 5 restaurants after skipping first 5.

db.restaurant.find().sort({ name: 1 }).skip(5).limit(5)

-- 5.) Write a MongoDB query to find the restaurants who achieved a score more than 90.

db.restaurant.find({ "grades.score": { $gt: 90 } })

-- 6) Write a MongoDB query to find the restaurants that achieved a score, more than 80 but less than 100.


db.restaurant.find({ "grades.score": { $gt: 80, $lt: 100 } })


-- 7.) Write a MongoDB query to find the restaurant name, longitude and latitude and cuisine for those restaurants which contain 'Caf' as first three letters of its name.

db.restaurant.find({ name: { $regex: /^Caf/i } }, { name: 1, "address.coord": 1, cuisine: 1 })


-- 8) Write a MongoDb query to update grade B to A in all documents.

db.restaurant.updateMany(
  { "grades.grade": "B" },
  { $set: { "grades.$.grade": "A" } }
)

