require 'rubygems'
require 'mongo'
require 'json/ext' # required for .to_json

include Mongo

conn = MongoClient.new
db = conn.db('test')
coll = db.create_collection('users')
coll.insert({name: "eddie"})
