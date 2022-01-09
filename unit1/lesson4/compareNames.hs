import Data.List

names = [("Ian", "Curtis"),
         ("Bernard", "Summer"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

compareLastNames name1 name2 =
  case compare lastName1 lastName2 of
    EQ -> compare firstName1 firstName2
    v  -> v
  where lastName1 = snd name1
        lastName2 = snd name2
        firstName1 = fst name1
        firstName2 = fst name2
