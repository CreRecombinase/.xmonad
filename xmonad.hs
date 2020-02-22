import XMonad
import XMonad.Hooks.DynamicLog
import qualified XMonad.StackSet as W
import Control.Monad
import XMonad.Util.EZConfig(additionalKeysP)

main:: IO () -- {{{1
main = xmonad <=< xmobar $ def {
      modMask = mod4Mask
    , terminal = "urxvt"
    , borderWidth = 3
    }
    `additionalKeysP`
        [ ("M-<Up>", windows W.swapUp)
        , ("M-<Down>", windows W.swapDown)
        , ("M-e", spawn "emacsclient -c -n -e '(switch-to-buffer nil)'")
        , ("M-f", spawn "firefox")
        ]
