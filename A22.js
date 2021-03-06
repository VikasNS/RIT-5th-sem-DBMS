use A22
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




db.createCollection('SUPPLY')
db.SUPPLY.insertMany(
[
{'SNO':1, 'SNAME':'Ram', 'PNO':1,'ADDRESS':'10 Ramnagar bangalore 40'},
{'SNO':2, 'SNAME':'Somu',' PNO':2,'ADDRESS':'10 Somnagar bangalore 20'},
{'SNO':3, 'SNAME':'Tom', 'PNO':3,'ADDRESS':'10 Tomnagar bangalore 30'},

{'SNO':1, 'SNAME':'Ram', 'PNO':4,'ADDRESS':'10 Ramnagar bangalore 40'},
{'SNO':2, 'SNAME':'Somu',' PNO':5,'ADDRESS':'10 Somnagar bangalore 20'},
{'SNO':3, 'SNAME':'Tom', 'PNO':6,'ADDRESS':'10 Tomnagar bangalore 30'},

{'SNO':1, 'SNAME':'Ram', 'PNO':7,'ADDRESS':'10 Ramnagar bangalore 40'},
{'SNO':2, 'SNAME':'Somu',' PNO':8,'ADDRESS':'10 Somnagar bangalore 20'}
]
)

db.PART.aggregate([{'$match':{'PNO':3}},
{'$lookup':{"from":"SUPPLY","localField":"PNO","foreignField":"PNO","as":"suppliers"}},
{"$unwind":"$suppliers"},
{"$project":{"_id":0,"PNO":0,"PNAME":0,"COLOUR":0}}])
