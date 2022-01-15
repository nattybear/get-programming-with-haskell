getRequestUrl host apiKey resource id = host ++
                                        "/" ++
                                        resource ++
                                        "/" ++
                                        id ++
                                        "?token=" ++
                                        apiKey

genHostRequestBuilder host = (\apiKey resource id ->
                               getRequestURL host apiKey resource id)

exampleUrlBuilder = getRequestUrl "http://example.com"

myExampleUrlBuilder = exampleUrlBuilder "1337hAsk3ll"

-- Quick check 5.2
genApiRequestBuilder hostBuilder apiKey resource = (\id ->
                                                     hostBuilder apiKey
                                                     resource id)
