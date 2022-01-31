type FirstName = String
type LastName = String
type Age = Int
type Height = Int
type PatientName = (String,String)

data Sex = Male | Female

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
