use A52
db.createCollection('BOOK')

db.Book.insertMany(
[
  {'ISBN':123,'TITLE':'Database','AUTHOR':'Benjamin Rosenzweig','PUBLISHER':'Example','USN':'1MS16IS114','DATE':new Date("2015-01-25")},
  {'ISBN':321,'TITLE':'Digital Image Processing','AUTHOR':'Pearson','PUBLISHER':'Rafael C.Gonzalez','USN':'1MS16IS114','DATE':new Date("2010-02-25")},
  {'ISBN':231,'TITLE':'Fundamentals of Digital Image Processing','AUTHOR':'Anil K. Jain','PUBLISHER':'Pearson Education','USN':'1MS16IS114','DATE':new Date("2014-02-05")},
  {'ISBN':132,'TITLE':'Natural Language Processing','AUTHOR':'Tanveer Siddiqui','PUBLISHER':'Oxford University','USN':'1MS17EE114','DATE':new Date("2013-05-25")},
  {'ISBN':111,'TITLE':'Embedded Systems','AUTHOR':'Lyla B Das','PUBLISHER':'Pearson Education','USN':'1MS17EE114','DATE':new Date("2011-01-25")},
  {'ISBN':222,'TITLE':'Introduction To Embedded Systems','AUTHOR':'Shibu K V','PUBLISHER':'MGH','USN':'1MS17EE114','DATE':new Date("2018-08-22")},
  {'ISBN':333,'TITLE':'Linear Algebra and its Applications','AUTHOR':'David C Lay','PUBLISHER':'Pearson','USN':'1MS18EC114','DATE':new Date("2017-03-25")},
  {'ISBN':243,'TITLE':'Linear Algebra and its Applications','AUTHOR':'Gilbert Strang','PUBLISHER':'Thomson learning Asia','USN':'1MS18EC114','DATE':new Date("2016-03-15")}
]
)
db.Book.find({'ISBN':123})
db.Book.find({'TITLE':'Database'})



