module Data.Env where

import BigPrelude
import Data.Page
import Effect.Aff.AVar (AVar)
import Routing.PushState (PushStateInterface)

data GlobalQuery 
  = LogoutG 
  | NavigateG Page

type Env = 
  { globalQuery :: AVar GlobalQuery
  , pushStateInterface :: PushStateInterface
  }

