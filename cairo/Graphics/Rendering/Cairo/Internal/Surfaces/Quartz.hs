{-# LANGUAGE CPP #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.Cairo.Internal.Surfaces.Quartz
-- Copyright   :  (c) Gabriele Sales 2019
-- License     :  BSD-style (see doc/COPYRIGHT)
--
-- Maintainer  :  gbrsales@gmail.com
-- Stability   :  experimental
-- Portability :  portable
--
-- Rendering via Apple OS X Quartz.
-----------------------------------------------------------------------------

module Graphics.Rendering.Cairo.Internal.Surfaces.Quartz where

import           Foreign
import           Foreign.C
import           Graphics.Rendering.Cairo.Types


#include <cairo-features.h>

#ifdef CAIRO_HAS_QUARTZ_SURFACE

quartzSurfaceCreateForCGContext :: Ptr () -> Int -> Int -> IO Surface
quartzSurfaceCreateForCGContext cgContext width height =
  let w = fromIntegral width
      h = fromIntegral height
  in quartzSurfaceCreateForCGContext' cgContext w h >>= mkSurface

foreign import ccall safe "cairo_quartz_surface_create_for_cg_context"
  quartzSurfaceCreateForCGContext' :: Ptr () -> CUInt -> CUInt -> IO (Ptr Surface)

#endif
