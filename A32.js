use A32
db.createCollection('BOAT')
db.BOAT.insertMany(
[
{'BID':1,'BNAME':'Aarav','COLOUR':'White'},
{'BID':2,'BNAME':'Vivaan','COLOUR':'Brown'},
{'BID':3,'BNAME':'Vihaan','COLOUR':'Brown'},
{'BID':4,'BNAME':'Aditya','COLOUR':'Black'},
{'BID':5,'BNAME':'Reyansh','COLOUR':'White'},
{'BID':6,'BNAME':'Sai','COLOUR':'Brown'},
{'BID':7,'BNAME':'Muhammad','COLOUR':'Brown'},
{'BID':8,'BNAME':'Vineeth','COLOUR':'White'}
]
)

db.createCollection('RESERVES')
db.RESERVES.insertMany(
[
{'BID':1,'SNAME':'Ram','SID':1,'DAY':'Monday'},
{'BID':2,'SNAME':'John','SID':2,'DAY':'Monday'},
{'BID':3,'SNAME':'Tom','SID':3,'DAY':'Friday'},
{'BID':4,'SNAME':'Tom','SID':3,'DAY':'Wednesday'},
{'BID':5,'SNAME':'Tom','SID':3,'DAY':'Tuesday'},
{'BID':6,'SNAME':'John','SID':2,'DAY':'Friday'},
{'BID':7,'SNAME':'Ram','SID':1,'DAY':'Monday'},
]
)
db.BOAT.find({'COLOUR':'White'})

db.RESERVES.aggregate([
{$match:{"SNAME":"John"}},
{$lookup:{"from":"BOAT","localField":"BID","foreignField":"BID","as":"boats"}},
{$unwind:"$boats"},
{$group:{"_id":null,total:{$sum:1}}},
{$project:{"_id":0}}])


