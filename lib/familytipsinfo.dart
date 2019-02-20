

//class for implementing the Family tips
class FamilyTips  {

  FamilyTips(this.title,[this.children=const <FamilyTips>[]]);
  var  title;
  final List<FamilyTips> children;

}

/**
 * THIS METHOD RETURNS DIFFRENT TIPS O DIFFERENT TOPIC E.G IF THE TITLE IS 
 * I)CHILDRENS GUIDE => CHILDRENS GUIDE TIPS ARE RETURNED
 * II)MARRIAGE GUIDE => CHILDRENS GUIDE TIPS ARE RETURNED  
 */
List<FamilyTips> switchTips(String title){

switch (title) {
    case "Children Guide":
    return <FamilyTips>[
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],)



];

      
       break;

    case "Dating Guide":
    return <FamilyTips>[
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],)



];

      
       break;

    case "Family Guide":
    return <FamilyTips>[
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],)



];

      
       break;

    case "Marriage Guide":
     return <FamilyTips>[
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),
FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],),

FamilyTips(

"The Art of Rearing Kids",
<FamilyTips>[
  FamilyTips("1.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("2.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  ),
   FamilyTips("3.Rearing Kids",
  <FamilyTips>[
    FamilyTips("this is how kids should be brought up this is how kids should be brought upthis is how kids should be brought up ")
  ]
  )
],)



];

      
       break;  
    default: return null;
  }

}