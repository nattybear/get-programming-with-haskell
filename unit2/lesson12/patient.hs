type FirstName = String
type LastName = String
type Age = Int
type Height = Int
type PatientName = (String,String)

data Sex = Male | Female

data RhType = Pos | Neg

data ABOType = A | B | AB | O

data BloodType = BloodType ABOType RhType

patientInfo :: PatientName -> Age -> Height -> String
patientInfo patientName age height = name ++ " " ++ ageHeight
  where name = lname ++ ", " ++ fname
        ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"
        fname = firstName patientName
        lname = lastName patientName

patientInfoV2 :: PatientName -> Int -> Int -> String
patientInfoV2 (fname,lname) age height = name ++ " " ++ ageHeight
  where name = lname ++ ", " ++ fname
        ageHeight = "(" ++ show age ++ "yrs. " ++ show height ++ "in.)"

firstName :: PatientName -> String
firstName patient = fst patient

lastName :: PatientName -> String
lastName patient = snd patient

sexInitial :: Sex -> Char
sexInitial Male   = 'M'
sexInitial Female = 'F'

patient1BT :: BloodType
patient1BT = BloodType A Pos

patient2BT :: BloodType
patient2BT = BloodType O Neg

patient3BT :: BloodType
patient3BT = BloodType AB Pos

showRh :: RhType -> String
showRh Pos = "+"
showRh Neg = "-"

showABO :: ABOType -> String
showABO A = "A"
showABO B = "B"
showABO AB = "AB"
showABO O = "O"

showBloodType :: BloodType -> String
showBloodType (BloodType abo rh) = showABO abo ++ showRh rh

canDonateTo :: BloodType -> BloodType -> Bool
canDonateTo (BloodType O _) _                = True
canDonateTo _               (BloodType AB _) = True
canDonateTo (BloodType A _) (BloodType A _)  = True
canDonateTo (BloodType B _) (BloodType B _)  = True
canDonateTo _               _                = False
