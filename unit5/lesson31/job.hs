data Grade = F | D | C | B | A deriving (Eq, Ord, Enum, Show, Read)

data Degree = HS | BA | MS | PhD deriving (Eq, Ord, Enum, Show, Read)

data Candidate = Candidate
  { candidateId :: Int
  , codeReview  :: Grade
  , cultureFit  :: Grade
  , education   :: Degree } deriving Show

viable :: Candidate -> Bool
viable candidate = all (== True) tests
  where passedCoding     = codeReview candidate > B
        passedCultureFit = cultureFit candidate > C
        educationMin     = education  candidate >= MS
        tests = [ passedCoding
                , passedCultureFit
                , educationMin ]

testCandidate :: Candidate
testCandidate = Candidate
  { candidateId = 1
  , codeReview  = A
  , cultureFit  = A
  , education   = PhD }

readInt :: IO Int
readInt = getLine >>= (return . read)

readGrade :: IO Grade
readGrade = do
  grade <- getLine
  return (read grade)

readDegree :: IO Degree
readDegree = getLine >>= (return . read)

readCandidate :: IO Candidate
readCandidate = do
  putStrLn "enter id:"
  cId <- readInt
  putStrLn "enter code grade:"
  codeGrade <- readGrade
  putStrLn "enter culture fit grade:"
  cultureGrade <- readGrade
  putStrLn "enter education:"
  degree <- readDegree
  return (Candidate { candidateId = cId
                    , codeReview  = codeGrade
                    , cultureFit  = cultureGrade
                    , education   = degree })

assessCandidateIO :: IO String
assessCandidateIO = do
  candidate <- readCandidate
  let passed    = viable candidate
      statement = if passed
                  then "passed"
                  else "failed"
  return statement

candidate1 :: Candidate
candidate1 = Candidate { candidateId = 1
                       , codeReview  = A
                       , cultureFit  = A
                       , education   = BA }

candidate2 :: Candidate
candidate2 = Candidate { candidateId = 2
                       , codeReview  = C
                       , cultureFit  = A
                       , education   = PhD }

candidate3 :: Candidate
candidate3 = Candidate { candidateId = 3
                       , codeReview  = A
                       , cultureFit  = B
                       , education   = MS }
