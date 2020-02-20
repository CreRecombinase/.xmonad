import XMonad
import XMonad.Config
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import qualified XMonad.StackSet as W

main = xmonad  defaultConfig
    {
      modMask = mod4Mask
    , terminal = "urxvt"
    , borderWidth = 3
    }
    `additionalKeysP`
        [ ("M-<Up>", windows W.swapUp)
        , ("M-c", spawn "emacsclient -c -n -e '(switch-to-buffer nil)'")
        ]
