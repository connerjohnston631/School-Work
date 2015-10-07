{- CSE 105 FA 14: HW1 P3
 - Name: Conner Johnston
 - E-mail cjohnsto@ucsd.edu	
 - ID: A10580707
 - Collaborated with: N/A (Piazza post @35 helped a lot)
 - 
 -}


module Main where

import DFA 
import Numeric 
import Data.Char

{-
 - note: the type for machine, below, assumes that you want states to
 - be numbered.  if for some reason you want some other type for the
 - states (e.g., String, for "state-one"), you'll need to change the
 - type from DFA Int to DFA String or similar.
-}

{- BEGIN PART TO FILL IN -}
machine :: DFA Int
machine =
	let m_qs = [0,1,2];
		m_sigma = ['0','1'];
		m_delta 0 '0' = 0;
		m_delta 0 '1' = 1;
		m_delta 1 '0' = 2;
		m_delta 1 '1' = 0;
		m_delta 2 '0' = 1;
		m_delta 2 '1' = 2;		
		m_s = 0;
		m_inF (0) = True;
		m_inF (1) = False;
		m_inF (2) = False;
		
	in (qs, sigma, delta, s, inF)



  
{- END PART TO FILL IN -}

{-
 - if your machine is correct, test n should return true
 - exactly when n is a multiple of 3:
 -}

test :: Int -> Bool
test n = evalDFA machine (intToBinary n)

intToBinary x = showIntAtBase 2 intToDigit x ""