use A42
db.createCollection('PART')
db.PART.insertMany(
[
{'PNO': 1 ,'PNAME': 'Wheel'  ,'COLOUR':'Green'},
{'PNO': 2 ,'PNAME': 'Wheel'  ,'COLOUR':'Brown'},
{'PNO': 3 ,'PNAME': 'Steering' ,'COLOUR':'Brown'},
{'PNO': 4 ,'PNAME': 'Steering' ,'COLOUR':'Black'},
{'PNO': 5 ,'PNAME': 'Helmet' ,'COLOUR':'Black'},
{'PNO': 6 ,'PNAME': 'Helmet' ,'COLOUR':'Brown'},
{'PNO': 7 ,'PNAME': 'Bolts' ,'COLOUR':'Brown'},
{'PNO': 8 ,'PNAME': 'Bolts' ,'COLOUR':'Green'}
]
)

db.createCollection('SHIPMENT')
db.SHIPMENT.insertMany(
[
{'PNO':1,'WHO':1,'WNAME':'R group','QUANTITY':11,'DATE':new Date("2015-01-25")},
{'PNO':2,'WHO':1,'WNAME':'R group','QUANTITY':22,'DATE':new Date("2010-02-25")},
{'PNO':3,'WHO':1,'WNAME':'R group','QUANTITY':22,'DATE':new Date("2014-02-05")},
{'PNO':4,'WHO':2,'WNAME':'G group','QUANTITY':33,'DATE':new Date("2013-05-25")},
{'PNO':5,'WHO':2,'WNAME':'G group','QUANTITY':11,'DATE':new Date("2011-01-25")},
{'PNO':6,'WHO':3,'WNAME':'G group','QUANTITY':19,'DATE':new Date("2018-08-22")},
{'PNO':7,'WHO':3,'WNAME':'B group','QUANTITY':15,'DATE':new Date("2017-03-25")},
{'PNO':8,'WHO':3,'WNAME':'B group','QUANTITY':10,'DATE':new Date("2016-03-15")}
]
)

db.SHIPMENT.aggregate([{$match:{'WNAME':'R group'}},
{$lookup:{"from":"PART","localField":"PNO","foreignField":"PNO","as":"parts"}},
{$unwind:"$parts"},
{$project:{"PARTS":"$parts","_id":0}}])

db.SHIPMENT.aggregate([{$group:{"_id":"$WNAME",total:{"$sum":"$QUANTITY"}}}])






