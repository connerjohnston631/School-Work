{- CSE 105 FA 14: HW1 P3
 - Name: Conner Johnston
 - E-mail: cjohnsto@ucsd.edu
 - ID: A10580707
 - Collaborated with: Studens in TA Kyong Lim's Office Hours.
 -                    Developed the idea of using tuple data types 
 -                    for the states, Laban Zscheile, Jon Natale
 - 
 -}


module Main where

import DFA
import Numeric 
import Data.Char
import Data.List

{-
 -
 - A few more useful list functions and constructs.
 -
 -
 - elem :: Eq a => a -> [a] -> Bool
 -
 - Evaluates to True if the element that is its first argument is an
 - element of the list that is its second argument, and to False
 - otherwise.  Elements of the list must be comparable for equality.
 - Elem is usually written, with backquotes, as an infix operator.
 -
 - Example: elem 7 [1, 3, 7, 11]   =>   True
 - Example: 7 `elem` [1, 3, 7, 11]   =>   True
 -
 -
 - filter :: (a -> Bool) -> [a] -> [a]
 - 
 - Given a predicate and a list, returns a list with only those elements
 - of the original list on which the predicate evaluates to True.
 -
 - Example:  filter (>5) [1,4,7,6]   ==>   [7,6]
 -
 -
 - List comprehensions:
 -     [ expr | var1 <- list1, var2 <- list2, ..., cond1, cond2, ... ]
 -
 - Let var1 range over all elements of list1, var2 over all elements of
 - list2, and so on; for each possible assignment values to of var1,
 - var2, and so on, evaluate cond1, cond2, and so on.  If all of these
 - conditions evaluate to True (or if there are no conditions listed),
 - evaluate expr.  The result is a list of all evaluated exprs.
 -
 - Example: [ toUpper c | c <- "Hello" ]   =>   "HELLO"
 - Example: [ x+y | x <- [0,10,100], y <- [1,2,3] ]
 -             =>   [1,2,3,11,12,13,101,102,103]
 - Example: [ sqrt x | x <- [ -2, 2, -1, 1, 0] ]
 -             =>   [NaN,1.4142135623730951,NaN,1.0,0.0]
 - Example: [ sqrt x | x <- [ -2, 2, -1, 1, 0], x >= 0 ]
 -             =>   [1.4142135623730951,1.0,0.0]
 - 
 - 
 - foldl :: (b -> a -> b) -> b -> [a] -> b
 -
 - foldl takes three arguments.  The third of these arguments is a list
 - that it will "fold" from left to right (hence its name) into a
 - single value.  The fold will proceed one element at a time, using
 - the function that is foldl's first argument.  This function will take
 - the result so far and the leftmost remaining element of the list and
 - combine them into an updated result-so-far.  To get started, foldl
 - also takes, as its second argument, the value to start with as the
 - result-so-far.  Note the order of arguments for the function that is
 - foldl's first argument, and note that the type of the input list and
 - the type of the result can differ.
 -
 - Example: foldl (+) 0 [1..10]   =>   55
 - Example: foldl (\x y -> y:x) "" "Hello"   =>   "olleH"
 -
 -}


-- powerset of a set
powerset :: [a] -> [[a]]
powerset [] = [ [] ]
powerset (x:xs) = (powerset xs) ++ map (x:) (powerset xs)

-- transitive closure of f starting from set s
closure :: Eq a => (a -> [a]) -> [a] -> [a]
closure f s = closure_uniq f (nub s)

-- unlike closure, above, assumes s does not include duplicates
closure_uniq f s = if (length new_s) == (length s) then s
                                                   else closure_uniq f new_s
    where new_s = nub (s ++ concatMap f s)                                            


reachable_states :: Eq st => DFA st -> [st]
reachable_states (qs, sigma, delta, s, inF) =
    closure (\q -> map (delta q) sigma) [s]

live_states :: Eq st => DFA st -> [st]
live_states (qs, sigma, delta, s, inF) =
    closure hasnext (filter inF qs) where
        hasnext q = [r | r <- qs, x <- sigma, q == delta r x]

{-
 - NFA and NFAe datatypes, in case you need them.
 -
- NFAe is an NFA with epsilon transitions (what Sipser just calls an
 - NFA).  Following Prof. Micciancio, we use the convention that the
 - convention that the transition function delta(q,x) is defined for
 - x::(Maybe Char), where "Just a" stands for the character a and
 - "Nothing" stands for an epsilon transition.
 -
 - NFA is an NFA *without* epsilon transitions.  As with DFAs, an NFA's
 - delta function takes x::Char, not x::(Maybe Char).
 -}

type NFAe st = ([st], [Char], st->(Maybe Char)->[st], st, st->Bool)
type NFA  st = ([st], [Char], st->Char->[st],         st, st->Bool)


{-
 - Conversion routines, in case you need them.
 -}

conv_NFAe_to_NFA :: Eq st => NFAe st -> NFA st

conv_NFAe_to_NFA (qs, sigma, delta, s, inF) =
    (qs, sigma, delta', s, inF') where
        delta' q x = nub (concatMap (\r -> delta r (Just x)) (eclose q))
        inF' q = any inF (eclose q)
        -- eclose q is what sipser calls E(q)
        eclose q = closure (\r -> delta r Nothing) [q]

-- note the change in state type-variable in the type here:
conv_NFA_to_DFA :: Eq st => NFA st -> DFA [st]

conv_NFA_to_DFA (qs, sigma, delta, s, inF) =
    (qs', sigma, delta', s', inF') where
        qs' = powerset qs
        delta' qset x = nub (concatMap (\q -> delta q x) qset)
        s' = [ s ]
        inF' qset = any inF qset


{- BEGIN PART TO FILL IN, PROBLEM 1 -}

threes :: Eq st => DFA st -> DFA (st, Int)
threes (qs, sigma, delta, s, inF) =
	(qs', sigma, delta', s', inF') where
	-- change the origin to have type (st, Int)
	s' = (s , 0)
	-- make qs' equal to a combination of qs and ints
	qs' = [(x,y)|x <- qs, y <- [0,1..]]
	-- change the delta function to have a tuple instead of a st type.
	-- increment the y counter (counts the # of delta calls)
	-- to track the delta call the state is on
	delta' (x, y) b = ((delta x b), y + 1) 
	-- state will be accepted if the state is live in the original DFA, 
	-- and the step counter is at 3.
	inF' (x, y) = if( x `elem` live_states(qs, sigma, delta, s, inF) && y == 3) then True else False
	

{- END PART TO FILL IN, PROBLEM 1 -}


{- BEGIN PART TO FILL IN, PROBLEM 2 -}

-- the "before/after" datatype from class <- did we cover this in class? 
-- data BA a = Before a | After a 

hasprefix :: DFA st -> DFA (st, Bool)
hasprefix (qs, sigma, delta, s, inF) =
	(qs', sigma, delta', s', inF') where
	-- the s' value is changed from the first submit. Determined with
	-- Jon Natale that s' requires the boolean value
	-- of inF s instead in the case that L contains the empty string.
	-- and therefore, the empty string is a prefix that a string in L
	-- can contain.
	-- RESUBMISSION 2: realized that the result DFA would incorrectly
	-- accept the empty string. delta' would change the boolean accordingly
	-- if the initial state is inF. changed back to original submission. 
	s' = (s, False) --(the original line)
	--s' = (s, inF s) (the first re-submission)
	qs' = [(x,y)| x <- qs, y <- [False, True]]
	delta' (x, y) b = if ( inF x && not y) then (delta x b, True) else ( delta x b, y)
	inF' (x, y) = if(inF x && y) then True else False

{- END PART TO FILL IN, PROBLEM 2 -}

{- the following are two DFAs that can be tested with threes 
 - and hasprefix. 
 -}
machine1 :: DFA Int
machine1 =
	let m_qs = [0,1,2,3,4,5,6,7,8];
		m_sigma = ['0','1'];
		m_delta 0 '0' = 4;
		m_delta 0 '1' = 1;
		m_delta 1 '0' = 2;
		m_delta 1 '1' = 2;
		m_delta 2 '0' = 8;
		m_delta 2 '1' = 3;
		m_delta 3 '0' = 7;
		m_delta 3 '1' = 7;
		m_delta 4 '0' = 5;
		m_delta 4 '1' = 5;
		m_delta 5 '0' = 6;
		m_delta 5 '1' = 8;
		m_delta 6 '0' = 7;
		m_delta 6 '1' = 7;
		m_delta 7 '0' = 7;
		m_delta 7 '1' = 7;
		m_delta 8 '0' = 8; 
		m_delta 8 '1' = 8;
		m_s = 0;
		m_inF (0) = False;
		m_inF (1) = False;
		m_inF (2) = False;
		m_inF (3) = False;		
		m_inF (4) = False;
		m_inF (5) = False;
		m_inF (6) = False;
		m_inF (7) = True;
		m_inF (8) = False;
		
	in (m_qs, m_sigma, m_delta, m_s, m_inF)


	
machine2 :: DFA Int
machine2 =
	let m_qs = [0,1,2,3,4,5,6,7,8];
		m_sigma = ['0','1'];
		m_delta 0 '0' = 1;
		m_delta 0 '1' = 2;
		m_delta 1 '0' = 8;
		m_delta 1 '1' = 5;
		m_delta 2 '0' = 4;
		m_delta 2 '1' = 3;
		m_delta 3 '0' = 2;
		m_delta 3 '1' = 4;
		m_delta 4 '0' = 6;
		m_delta 4 '1' = 2;
		m_delta 5 '0' = 7;
		m_delta 5 '1' = 2;
		m_delta 6 '0' = 7;
		m_delta 6 '1' = 5;
		m_delta 7 '0' = 8;
		m_delta 7 '1' = 4;
		m_delta 8 '0' = 5; 
		m_delta 8 '1' = 5;
		m_s = 0;
		m_inF (0) = True;
		m_inF (1) = False;
		m_inF (2) = False;
		m_inF (3) = False;		
		m_inF (4) = True;
		m_inF (5) = False;
		m_inF (6) = False;
		m_inF (7) = True;
		m_inF (8) = True;
		
	in (m_qs, m_sigma, m_delta, m_s, m_inF)


  
{-
 - test1 should return true whenever the first and last character
 - of a 3 character long string are the same. The language of machine1
 - is L = {abcx | a,b,c exist in sigma, x exists in sigma*, and a == c}
 - the language of machine 2 was randomly determined. 
 -}

test1 :: [Char] -> Bool
test1 n = evalDFA (threes machine1) n


test2 :: [Char] -> Bool
test2 n = evalDFA (hasprefix machine2) n
