-- | This module defines foreign types and functions for working with the
-- | flot.js plotting library

module Control.Monad.Eff.Flot where

import DOM (DOM())
import Control.Monad.Eff (Eff())
import Control.Monad.Eff.JQuery (JQuery())

foreign import data Flot :: *

-- | Datatype definition for a Series
type Series = 
    { getColor :: Color
    , getData  :: RawData
    , getLabel :: String
    , 
    }

-- | Datatype definition for Options

foreign import plot :: forall e. JQuery -> [Series] -> Options -> Eff (dom :: DOM | e) Flot
