module Exercises where

import Test.Hspec

-- Exercises: A head code
-- 1
value1 = x * 3 + y where
    x = 3
    y = 1000

-- 2
value2 = x * 5 where
    y = 10
    x = 10 * 5 + y

-- 3
value3 = z / x + y where
    x = 7
    y = negate x
    z = y * 10

main :: IO ()
main = hspec $ do
    describe "Exercises: A head code" $ do
        it "Rewrites with where clauses" $ do
            value1 `shouldBe` 3 * 3 + 1000
            value2 `shouldBe` (10 * 5 + 10) * 5
            value3 `shouldBe` (-7) * 10 / 7 + (-7)
