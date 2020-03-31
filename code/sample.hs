toDataPath :: Ref.Reference i -> Maybe (DP.DataPath i)
toDataPath (Ref.Reference _ dp) = Just dp
toDataPath _                    = Nothing

toPath :: DP.DataPath i -> Maybe [i]
toPath dp | DP.isInvalid dp = Nothing
toPath dp                   = Just $ DP.getPath dp

toFormula :: [SimpleFieldIndex] -> Maybe SymbolicFormula
toFormula []          = Just Ar.zero
toFormula (Index i:_) = Just $ Ar.mkConst $ fromIntegral i
toFormula _           = Nothing
