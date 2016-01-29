# Title 

Approximate PI

## Difficulty

Easy

## Tags

math, Pi (constant)

## Description

The mathematical constant pi - the ratio of a circle's circumference to its radius - is an irrational number. Approximations have been made - first by hand and now by computers - for over 4000 years. The current record is to 12.1 trillion digits!

Approximations start to fail after various decimal places. For instance, the simple "25/8" approximation is good to only 2 decimal places, while "62832/20000" is correct to 4 decimal places. Various algorithms have been developed over the years that provide increasing accuracy.

For this challenge your task is to implement one or more of those algorithms and approximate pi correctly to a specific number of digits. You may *NOT* for this challenge use your programming language or system's built in definitions of pi (e.g. System.Math.PI from .Net, or M_PI from math.h), you should not solve it using geometric functions like `sin()` or `tan()` or the like, or "find it" by downloading it from somewhere - that's straight up cheating. 

## Challenge Input

You'll be given *N*, a number of digits to which to correctly approximate pi. 

        4  (should be 3.1415 or 3.1416)
        6  (should be 3.141592 or 3.141593) 
        10 (should be 3.1415926535)

## Scala Solution

    def factorial(n:Int):Int = if (n==0) 1 else n * factorial(n-1)

    def Ramanujan_Series(k:Int, sofar:Double): Double = {
        k match {
            case -1 => 1/(12*sofar)
            case _  => Ramanujan_Series(k - 1, sofar + ((math.pow(-1.0, k.toDouble) * factorial(6 * k) * (13591409 + 545140134 * k))/
             (factorial(3 * k) * math.pow(factorial(k), 3.0) * math.pow(640320, (1.5 + 3 * k)))))
         }
    }  

# Title

Balancing Words

## Difficulty

Easy

## Tags

letter sums, word games

## Description

Today we're going to balance words on one of the letters in them. We'll use the position and letter itself to calculate the weight around the balance point. A word can be balanced if the weight on either side of the balance point is equal. Not all words can be balanced, but those that can are interesting for this challenge.

The formula to calculate the weight of the word is to look at the letter position in the English alphabet (so A=1, B=2, C=3 ... Z=26) as the letter weight, then multiply that by the distance from the balance point, so the first letter away is multiplied by 1, the second away by 2, etc. 

As an example:

STEAD balances at T: 1 * S(19) = 1 * E(5) + 2 * A(1) + 3 * D(4))

More info [here](http://www.questrel.com/records.html#spelling_alphabetical_order_entire_word_balance_points) on the Questrel site.

## Input Description

You'll be given a series of English words. Example:

    STEAD

## Output Description

Your program or function should emit the words split by their balance point and the weight on either side of the balance point. Example:

    S T EAD - 19
    
This indicates that the T is the balance point and that the weight on either side is 19.

## Challenge Input

    CONSUBSTANTIATION
    WRONGHEADED
    UNINTELLIGIBILITY

## Challenge Output

	CONSUBST A NTIATION - 456
	WRO N GHEADED - 120
	UNINTELL I GIBILITY - 521
    
## Notes

This was found on a word games page suggested by /u/cDull, thanks! If you have your own idea for a challenge, submit it to /r/DailyProgrammer_Ideas, and there's a good chance we'll post it.

## Scala Solution

	def balance(word:String): (String, String, String, Int) = {
	  def loop(word:String, n:Int):(Int, Int) = {
	    n+word.length match {
	      case 1 =>       (0, -1)
	      case _ =>
	        val p = word.map(_.toInt-64).zip(n to (word.length+n-1)).map(x=>x._1*x._2).partition(_>0)
	        val lhs = p._1.sum
	        val rhs = p._2.sum
	        (lhs + rhs == 0) match {
	          case true  => (lhs, (n to (word.length+n-1)).indexOf(0))
	          case false => loop(word, n-1)
	        }
	    }
	  }
	  val b = loop(word.toUpperCase, 0)
	  b._1 match {
	    case 0 => ("", "", "", -1)
	    case _ => (word.substring(0, b._2), word(b._2).toString, word.substring(b._2+1, word.length), b._1)
	  }
	}

	// how many words can be balanced?
	val bwords = scala.io.Source.
	              fromFile("/usr/share/dict/words").
	              getLines.
	              map(balance(_)).
	              filter(_._1 != "")

# Title

Broken Keyboard

## Difficulty

Easy

## Tags

words, keyboard

## Description

Help! My keyboard is broken, only a few keys work any more. If I tell you what keys work, can you tell me what words I can write?

(You should use the trusty enable1.txt file, or `/usr/share/dict/words` to chose your valid English words from.)

## Input Description

You'll be given a line with a single integer on it, telling you how many lines to read. Then you'll be given that many lines, each line a list of letters representing the keys that work on my keyboard. Example:

    3
    abcd
    qwer
    hjklo

## Output Description

Your program should emit the longest valid English language word you can make for each keyboard configuration. 

    abcd = bacaba
    qwer = ewerer
    hjklo = kolokolo

## Challenge Input

    4
    edcf
    bnik
    poil
    vybu

## Challenge Output

    edcf = deedeed
    bnik = bikini
    poil = pililloo
    vybu = bubby


## Scala Solution

Uses regexes

    val words = io.Source.fromFile("/usr/share/dict/words").mkString.split("\n").toList
    def typewriter(keys:String): String = words.filter(("[" + keys + "]+").r.replaceAllIn(_,"")=="").sortBy(x=>x.length).last
# Title

Cellular Automata: Rule 90

## Difficulty

Easy

## Tags

cellular automata, dynamical systems, automata

## Description

The development of (cellular automata)[https://en.wikipedia.org/wiki/Cellular_automaton] (CA) systems is typically attributed to Stanisław Ulam and John von Neumann, who were both researchers at the Los Alamos National Laboratory in New Mexico in the 1940s. Ulam was studying the growth of crystals and von Neumann was imagining a world of self-replicating robots. That’s right, robots that build copies of themselves. Once we see some examples of CA visualized, it’ll be clear how one might imagine modeling crystal growth; the robots idea is perhaps less obvious. Consider the design of a robot as a pattern on a grid of cells (think of filling in some squares on a piece of graph paper). Now consider a set of simple rules that would allow that pattern to create copies of itself on that grid. This is essentially the process of a CA that exhibits behavior similar to biological reproduction and evolution. (Incidentally, von Neumann’s cells had twenty-nine possible states.) Von Neumann’s work in self-replication and CA is conceptually similar to what is probably the most famous cellular automaton: Conways “Game of Life,” sometimes seen as a screen saver. CA has been pushed very hard by Stephen Wolfram (e.g. Mathematica, Worlram Alpha, and "A New Kind of Science"). 

CA has a number of simple "rules" that define system behavior, like "If my neighbors are both active, I am inactive" and the like. The rules are all given numbers, but they're not sequential for historical reasons. 

The subject rule for this challenge, Rule 90, is one of the simplest, a simple neighbor XOR. That is, in a 1 dimensional CA system (e.g. a line), the next state for the cell in the middle of 3 is simply the result of the XOR of its left and right neighbors. E.g. "000" becomes "1" in the next state, "100" becomes "1" in the next state and so on. You traverse the given line in windows of 3 cells and calculate the rule for the next iteration of the following row's center cell based on the current one while the two outer cells are influenced by their respective neighbors. Here are the rules showing the conversion from one set of cells to another:

| "111" | "101" | "010" | "000" | "110" | "100" | "011" | "001"
|-----------|------------|------------|-----------|------------|------------|------------|------------
| 0  | 0  | 0  | 0  | 1  | 1  | 1  | 1  |

## Input Description

You'll be given an input line as a series of 0s and 1s. Example:

    1101010

## Output Description

Your program should emit the states of the celular automata for 25 steps. Example from above, in this case I replaced 0 with a blank and a 1 with an X:

    xx x x
    xx    x
    xxx  x
    x xxx x
      x x
     x   x
   
## Challenge Input

	00000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000

## Challenge Output

I chose this input because it's one of the most well known, it yields a Serpinski triangle, a well known fractcal. 

                                                 x
                                                x x
                                               x   x
                                              x x x x
                                             x       x
                                            x x     x x
                                           x   x   x   x
                                          x x x x x x x x
                                         x               x
                                        x x             x x
                                       x   x           x   x
                                      x x x x         x x x x
                                     x       x       x       x
                                    x x     x x     x x     x x
                                   x   x   x   x   x   x   x   x
                                  x x x x x x x x x x x x x x x x
                                 x                               x
                                x x                             x x
                               x   x                           x   x
                              x x x x                         x x x x
                             x       x                       x       x
                            x x     x x                     x x     x x
                           x   x   x   x                   x   x   x   x
                          x x x x x x x x                 x x x x x x x x
                         x               x               x               x
                        x x             x x             x x             x x

## Scala Solution

    def rule90(row:String): String = {
        def loop(s:String): String = {
            s match {
                case "111" | "101" | "010" | "000" => "0"
                case "110" | "100" | "011" | "001" => "1"
            }
        }
        ("0" + row + "0").sliding(3).map(loop(_)).toList.mkString
    }

    def solution(s:String, n:Int) = {
        var row = s
        for (_ <- (0 to n)) {
            println(row.replace("0", " ").replace("1", "x"))
            row = rule90(row)
        }
    }

# Title

Letters in Alphabetical Order

## Difficulty

Easy

## Tags

word games, alphabet

## Description

A handful of words have their letters in alphabetical order, that is nowhere in the word do you change direction in the word if you were to scan along the English alphabet. An example is the word "almost", which has its letters in alphabetical order.

Your challenge today is to write a program that can determine if the letters in a word are in alphabetical order.

As a bonus, see if you can find words spelled in *reverse* alphebatical order. 

## Input Description

You'll be given one word per line, all in standard English. Examples:

	almost
	cereal

## Output Description

Your program should emit the word and if it is in order or not. Examples:

	almost IN ORDER
	cereal NOT IN ORDER

## Challenge Input

	billowy
	biopsy
	chinos
	defaced
	chintz
	sponged
	bijoux
	abhors
	fiddle
	begins
	chimps
	wronged

## Challenge Output

	billowy IN ORDER
	biopsy IN ORDER
	chinos IN ORDER
	defaced NOT IN ORDER
	chintz IN ORDER
	sponged REVERSE ORDER 
	bijoux IN ORDER
	abhors IN ORDER
	fiddle NOT IN ORDER
	begins IN ORDER
	chimps IN ORDER
	wronged REVERSE ORDER

## Scala Solution

    def alphabetical(word:String): Boolean = word.map(_.toInt).sorted == word.map(_.toInt)
    def rev_alphabetical(word:String): Boolean = word.map(_.toInt).sorted.reverse == word.map(_.toInt)

    def main(word:String) = {
        if (alphabetical(word) == true) 
            println(word + " IN ORDER")
        else if (rev_alphabetical(word) == true) 
            println(word + " IN REVERSE ORDER")        
        else
            println(word + " NOT IN ORDER")
    }
# Title 

Making numbers palindromic

## Difficulty 

Easy

## Tags

palindrome, number

## Description
To covert nearly any number into a palindromic number you operate by reversing the digits and adding and then repeating the steps until you get a palindromic number. Some require many steps.

e.g. 24 gets palindromic after 1 steps: 66 -&gt; 24 + 42 = 66

while 28 gets palindromic after 2 steps: 121 -&gt; 28 + 82 = 110, so 110 + 11 (110 reversed) = 121.

Note that, as an example, 196 never gets palindromic (at least according to researchers, at least never in reasonable time). Several numbers never appear to approach being palindromic.

## Input Description

You will be given a number, one per line. Example:

    11
    68

## Output Description

You will describe how many steps it took to get it to be palindromic, and what the resulting palindrome is. Example:

    11 gets palindromic after 0 steps: 11
    68 gets palindromic after 3 steps: 1111

## Challenge Input

    123
    286
    196196871

## Challenge Input Solution 

    123 gets palindromic after 1 steps: 444
    286 gets palindromic after 23 steps: 8813200023188
    196196871 gets palindromic after 45 steps: 4478555400006996000045558744

## Note

Bonus: see which input numbers, through 1000, yield identical palindromes. 

Bonus 2: See which numbers don't get palindromic in under 10000 steps. Numbers that never converge are called Lychrel numbers. 

## Scala Solution

	def reverse(n:Long): Long = n.toString.reverse.toLong

	def palindrome(n:Long): Boolean =  n == reverse(n)

	def loop(n:Long, steps:Int): (Long, Int) = {
		palindrome(n) match {
			case true  => (n, steps)
			case false => loop(reverse(n)+n, steps + 1)
		}
	}


# Title

Pronouncing Hexidecimal

## Difficulty

Easy

## Tags

hexidecimal, Silicon Valley

## Description

The HBO network show "Silicon Valley" has introduced a way to pronounce hex.

	Kid: Here it is: Bit... soup. It's like alphabet soup, BUT... it's ones and zeros instead of letters.
	Bachman: {silence}
	Kid: 'Cause it's binary? You know, binary's just ones and zeroes.
	Bachman: Yeah, I know what binary is. Jesus Christ, I memorized the hexadecimal times tables when I was fourteen writing machine code. Okay? Ask me what nine times F is. It's fleventy-five. I don't need you to tell me what binary is.

Not "eff five", fleventy. `0xF0` is now fleventy. Awesome. Above a full byte you add "bitey" to the name. The hexidecimal pronunciation rules:

HEX PLACE VALUE	| WORD
----------------|-----
|0xA0 | “Atta” |
|0xB0 | “Bibbity” |
|0xC0 | “City” |
|0xD0 | “Dickety” |
|0xE0 | “Ebbity” |
|0xF0 | “Fleventy” |
|0xA000 | "Atta-bitey" |
|0xB000 | "Bibbity-bitey" |
|0xC000 | "City-bitey" |
|0xD000 | "Dickety-bitey" |
|0xE000 | "Ebbity-bitey" |
|0xF000 | "Fleventy-bitey" |

Combinations like `0xABCD` are then spelled out "atta-bee bitey city-dee".

For this challenge you'll be given some hex strings and asked to pronounce them.

## Input Description

You'll be given a list of hex values, one per line. Examples:

	0xF5
	0xB3
	0xE4
	0xBBBB
	0xA0C9 

## Output Description

Your program should emit the pronounced hex. Examples from above:

	0xF5 "fleventy-five"
	0xB3 "bibbity-three"
	0xE4 "ebbity-four"
	0xBBBB "bibbity-bee bitey bibbity-bee"
	0xA0C9 "atta-bitey city-nine"

# Title

Ruth-Aaron Pairs 

## Difficulty

Easy

## Tags

prime numbers, prime factors, number theory

## Description

In mathematics, a Ruth–Aaron pair consists of two consecutive integers (e.g. 714 and 715) for which the sums of the *distinct* prime factors of each integer are equal. For example, we know that (714, 715) is a valid Ruth-Aaron pair because its distinct prime factors are:

    714 = 2 * 3 * 7 * 17
    715 = 5 * 11 * 13

and the sum of those is both 29:

    2 + 3 + 7 + 17 = 5 + 11 + 13 = 29

The name was given by Carl Pomerance, a mathematician at the University of Georgia, for Babe Ruth and Hank Aaron, as Ruth's career regular-season home run total was 714, a record which Aaron eclipsed on April 8, 1974, when he hit his 715th career home run. A student of one of Pomerance's colleagues noticed that the sums of the prime factors of 714 and 715 were equal.

For a little more on it, see [MathWorld](http://mathworld.wolfram.com/Ruth-AaronPair.html). 

Your task today is to determine if a pair of numbers is indeed a valid Ruth-Aaron pair.

## Input Description

You'll be given a single integer *N* on one line to tell you how many pairs to read, and then that many pairs as two-tuples. For example:

    3
    (714,715)
    (77,78)
    (20,21)

## Output Description

Your program should emit if the numbers are valid Ruth-Aaron pairs. Example:

    (714,715) VALID
    (77,78) VALID
    (20,21) NOT VALID

## Chalenge Input

    4
    (5,6) 
    (2107,2108) 
    (492,493) 
    (128,129) 

## Challenge Output

    (5,6) VALID
    (2107,2108) VALID
    (492,493) VALID
    (128,129) NOT VALID

## Scala Solution

    def factorize(x: Int): List[Int] = {
      @tailrec
      def foo(x: Int, a: Int = 2, list: List[Int] = Nil): List[Int] = a*a > x match {
        case false if x % a == 0 => foo(x / a, a    , a :: list)
        case false               => foo(x    , a + 1, list)
        case true                => x :: list
      }
      foo(x)
    }

    def RA(a:Int, b:Int): Boolean = def RA(a:Int, b:Int): Boolean =  factorize(a).toSet.sum == factorize(b).toSet.sum

## CSharp Solution

    using System;
    using System.Collections.Generic;
    using System.Linq;

    class Solution {
        public static void Main(string[] args) {
            int ra;
            bool t = int.TryParse(args[0], out ra);
            List<int> aints = PrimeFactors(ra);
            List<int> bints = PrimeFactors(ra+1);
            Console.WriteLine("{0} and {1} => {2}", ra, ra+1, aints.Sum() == bints.Sum());
        }
    
        private static List<int> PrimeFactors(int n) {
            List<int> ints = new List<int>();
            for (int i = 2; i <= n; i++) {
                if (IsPrime(i) && (n%i == 0)) {
                    ints.Add(i);
                }
            }
            return ints;
        }

        private static bool IsPrime(int n)
        {
            bool prime = true;
            int i = 2;
            do {
                prime &= (i == n || n%i != 0);
                i += (i == 2 ? 1 : 2);
            } while (i <= n);

            return prime;
        }
    }

# Title 

Shuffling a List

## Difficulty

Easy

## Tags

algorithm, shuffle, Fisher-Yates, Faro

## Description

We've had our fair share of sorting algorithms, now let's do a *shuffling* challenge. In this challenge, your challenge is to take a list of inputs and change around the order in random ways. Think about shuffling cards - can your program shuffle cards?

## Input Description

You'll be given a list of values - integers, letters, words - in one order. The input list will be space separated. Example:

	1 2 3 4 5 6 7 8 

## Output Description

Your program should emit the values in any non-sorted order; sequential runs of the program or function should yield different outputs. You should maximize the disorder if you can. From our example:

	7 5 4 3 1 8 2 6

## Challenge Input

	apple blackberry cherry dragonfruit grapefruit kumquat mango nectarine persimmon raspberry raspberry
	a e i o u

## Challenge Output 

Examples only, this is all about shuffling

	raspberry blackberry nectarine kumquat grapefruit cherry raspberry apple mango persimmon dragonfruit
	e a i o u

## Bonus

Check out the Faro shuffle and the Fisher Yates shuffles, which are algorithms for specific shuffles. Shuffling has some interesting mathematical properties. 

## Scala Solution

	def fischer_yates_shuffle(l:List[Int]): List[Int] = {	
		def loop(l:List[Int], n:Int): List[Int] = {
			(l.length == n) match {
				case true   => l
				case false  => val i = (scala.math.random*l.length).toInt
	  						   l.slice(0, n) ++ List(l(i)) ++ l.slice(n+1,i) ++ List(l(n)) ++ l.slice(i+1,l.length)
			}
		}
		loop(l, 0)
	}

	def faro_shuffle(l:List[Int], steps:Int): List[Int] = {
		def loop(l:List[Int], n:Int): List[Int] = {
			(n == 0) match {
				case true  =>   l
				case false =>   val (a,b) = (l.slice(0, l.length/2), l.slice(l.length/2, l.length))
								if (a.length != b.length) {
									loop(a.zip(b).flatMap(x => List(x._1, x._2)) ++ List(b.last), n-1)
								} else {
									loop(a.zip(b).flatMap(x => List(x._1, x._2)), n-1)
								}
			}
		}
		loop(l, steps)
	}

# Title

Playing the Stock Market

## Difficulty

Easy

## Tags

stock market

## Description

Let's assume I'm playing the stock market - buy low, sell high. I'm a day trader, so I want to get in and out of a stock before the day is done, and I want to time my trades so that I make the biggest gain possible. 

The market has a rule that won't let me buy and sell in a pair of ticks - I have to wait for at least one tick to go buy. And obviously I can't buy in the future and sell in the past. 

So, given a list of stock price ticks for the day, can you tell me what trades I should make to maximize my gain within the constraints of the market? Remember - buy low, sell high, and you can't sell before you buy.

## Input Description

You'll be given a list of stock prices as a 2 decimal float (dollars and cents), listed in chronological order. Example:

    19.35 19.30 18.88 18.93 18.95 19.03 19.00 18.97 18.97 18.98

## Output Description

Your program should emit the two trades in chronological order - what you think I should buy at and sell at. Example:

    18.88 19.03

## Challenge Input

    9.20 8.03 10.02 8.08 8.14 8.10 8.31 8.28 8.35 8.34 8.39 8.45 8.38 8.38 8.32 8.36 8.28 8.28 8.38 8.48 8.49 8.54 8.73 8.72 8.76 8.74 8.87 8.82 8.81 8.82 8.85 8.85 8.86 8.63 8.70 8.68 8.72 8.77 8.69 8.65 8.70 8.98 8.98 8.87 8.71 9.17 9.34 9.28 8.98 9.02 9.16 9.15 9.07 9.14 9.13 9.10 9.16 9.06 9.10 9.15 9.11 8.72 8.86 8.83 8.70 8.69 8.73 8.73 8.67 8.70 8.69 8.81 8.82 8.83 8.91 8.80 8.97 8.86 8.81 8.87 8.82 8.78 8.82 8.77 8.54 8.32 8.33 8.32 8.51 8.53 8.52 8.41 8.55 8.31 8.38 8.34 8.34 8.19 8.17 8.16

## Challenge Output

    8.03 9.34

## Python Quote Generator

    import random

    def stockprices(init, sofar=[]): 
        if len(sofar) == 100: return sofar
        else:
            sofar.append(init + (random.paretovariate(init)-random.paretovariate(init))*0.5)
            return stockprices(sofar[-1], sofar)

    print ' '.join(map(lambda x: '%.2f' % x, stockprices(8, [])))

## Scala Solution

    def pick(quotes:String) = {
        def loop(quotes:List[Double], best:(Double, Double)): (Double, Double) = {
            quotes.length match {
                case 2 => best
                case _ => {
                    val biggest = quotes.tail.tail.map(x => ((quotes.head, x), x-quotes.head)).maxBy(_._2)
                    if (biggest._2 > (best._2-best._1)) {
                        loop(quotes.tail, biggest._1)
                    } else {
                        loop(quotes.tail, best)
                    }
                }
            }
        }
        loop(quotes.split(" ").map(_.toDouble).toList, (0.0, 0.0))
    }

# Title

Thue-Morse Sequence Generator


## Tags

number theory, integer sequence, binary sequence, Thue-Morse, infinite sequence

## Description

The Thue-Morse sequence is a binary sequence (of 0s and 1s) that never repeats. 
It is obtained by starting with 0 and successively calculating the Boolean complement 
of the sequence so far. It turns out that doing this yields an infinite, 
non-repeating sequence. This procedure yields 0 then 01, 0110, 01101001, 
0110100110010110, and so on. 

See the [Thue-Morse Wikipedia Article](http://en.wikipedia.org/wiki/Thue%E2%80%93Morse_sequence) for more information.


## Input

Nothing.

## Output

Output the 0 to 6th order Thue-Morse Sequences.

## Example

    nth         Sequence
    ===========================================================================
    0           0
    1           01
    2           0110
    3           01101001
    4           0110100110010110
    5           01101001100101101001011001101001
    6           0110100110010110100101100110100110010110011010010110100110010110

## Extra Challenge

Be able to output any nth order sequence. Display the Thue-Morse Sequences for 100.

Note: Due to the size of the sequence it seems people are crashing beyond 25th order or the time it takes is very long. So how long until you crash. Experiment with it.

## Fsharp Solution

    let rec A3061 (L) =
        match (List.head L, List.tail L) with
        | (1, []) -> [ 0 ]
        | (0, []) -> [ 1 ]
        | (1, _ ) -> [ 0 ] @ A3061 (List.tail L)
        | (0, _ ) -> [ 1 ] @ A3061 (List.tail L)

    let thuemorse (n:int) = 
        let mutable L = [0]
        for i in [1..n] do
            L <- L @ A3061 L
        L
# Title 

Vampire Numbers

## Difficulty

Easy

## Tags

composite numbers, number theory

## Description

A vampire number *v* is a number *v=xy* with an even number *n* of digits formed by multiplying a pair of *n*/2-digit numbers (where the digits are taken from the original number in any order) *x* and *y* together. Pairs of trailing zeros are not allowed. If *v* is a vampire number, then *x* and *y* are called its "fangs." 

Additional information can be found [here](http://www.primepuzzles.net/puzzles/puzz_199.htm). 

## Input Description

Two digits on one line indicating *n*, the number of digits in the number to factor and find if it is a vampire number, and *m*, the number of fangs. Example:

    4 2

## Output Description

A list of all vampire numbers of *n* digits, you should emit the number and its factors (or "fangs"). Example:

    1260=21*60
    1395=15*93
    1435=41*35
    1530=51*30
    1827=87*21
    2187=27*81
    6880=86*80

## Challenge Input

    6 3

## Challenge Input Solution 

    114390=41*31*90
    121695=21*61*95
    127428=21*74*82
    127680=21*76*80
    127980=20*79*81
    137640=31*74*60
    139500=31*90*50
    163680=66*31*80
    178920=71*90*28
    197925=91*75*29
    198450=81*49*50
    247680=40*72*86
    294768=46*72*89
    376680=73*60*86
    397575=93*75*57
    457968=56*94*87
    479964=74*94*69
    498960=99*84*60



## Scala Solution

    object VampireNumbers {
      def product(list: List[Int]): Int = list.foldLeft(1)(_*_)

      def vampire(n:Int, fangs:Int):List[(Int, List[Int])] ={
        n.
         toString.
         map(_.toString.toInt).
         permutations.
         map(_.grouped(2).map(_.mkString.toInt).toList).
         map(x=>(product(x),x)).
         filter(_._1==n).
         toList
      }

      def main(argc:Int, argv:Array[String]) = {
        val start = scala.math.pow(10, argv(1).toInt-1).toInt
        val end = scala.math.pow(10, argv(1).toInt).toInt-1
        val fangs = argv(2).toInt
        (start to end).map(x => vampire(x, fangs)).filter(_.length > 0).foreach(println)
      }
    }

# Title

Abundant and Deficient Numbers

## Difficulty

Easy

## Tags

number theory, divisor function

## Description

In number theory, a deficient or **deficient number** is a number n for which the sum of divisors *sigma(n)<2n*, or, equivalently, the sum of proper divisors (or aliquot sum) *s(n)<n*. The value *2n - sigma(n)* (or *n - s(n)*) is called the number's deficiency. In contrast, an **abundant number** or excessive number is a number for which the sum of its proper divisors is greater than the number itself

As an example, consider the number 21. Its divisors are 1, 3, 7 and 21, and their sum is 32. Because 32 is less than 2 x 21, the number 21 is *deficient*. Its deficiency is 2 x 21 - 32 = 10.

The integer 12 is the first *abundant* number. Its proper divisors are 1, 2, 3, 4 and 6 for a total of 16. The amount by which the sum exceeds the number is the abundance. The number 12 has an abundance of 4, for example. 

##  Input Description

You'll be given an integer, one per line. Example:

    18
    21
    9

##  Output Description

Your program should emit if the number if deficient, abundant (and its abundance), or neither. Example:

    18 abundant by 3
    21 deficient
    9 neither 

## Challenge Input

    111  
    112 
    220 
    69 
    134 
    85 

## Challenge Output

    111 neither 
    112 abundant by 24
    220 abundant by 64
    69 deficient
    134 deficient
    85 deficient

## Scala Solution

    def divisors(n: Int): List[Int] = for (i <- List.range(1, n) if n % i == 0) yield i
    def abundance(n:Int): Int = divisors(n).sum-n
    def abundant(n:Int): Boolean = divisors(n).sum > n
    def deficient(n:Int): Boolean = 2*divisors(n).sum < n
    def main(n:Int): String = {
        if (abundant(n)) {
            return "abundant by " + abundance(n)
        }
        if (deficient(n)) {
            return "deficient"
        }
        return "neither"
    }

# Title

Detecting Alliteration

## Difficulty

Easy

## Tags

word games, alliteration, poetic device

## Description

Alliteration is defined as "the occurrence of the same letter or sound at the beginning of adjacent or closely connected words." It's a stylistic literary device identified by the repeated sound of the first consonant in a series of multiple words, or the repetition of the same sounds or of the same kinds of sounds at the beginning of words or in stressed syllables of a phrase. The first known use of the word to refer to a literary device occurred around 1624. A simple example is "Peter Piper Picked a Peck of Pickled Peppers".

## Note on Stop Words

The following are some of the simplest English "stop words", words too common and uninformative to be of much use. In the case of Alliteration, they can come in between the words of interest (as in the Peter Piper example):

    I 
    a 
    about 
    an 
    are 
    as 
    at 
    be 
    by 
    com 
    for 
    from
    how
    in 
    is 
    it 
    of 
    on 
    or 
    that
    the 
    this
    to 
    was 
    what 
    when
    where
    who 
    will 
    with
    the

## Sample Input

You'll be given an integer on a line, telling you how many lines follow. Then on the subsequent ines, you'll be given a sentence, one per line. Example:

    3
    Peter Piper Picked a Peck of Pickled Peppers
    Bugs Bunny likes to dance the slow and simple shuffle
    You'll never put a better bit of butter on your knife

## Sample Output

Your program should emit the words from each sentence that form the group of alliteration. Example:

    Peter Piper Picked Peck Pickled Peppers
    Bugs Bunny      slow simple shuffle
    better bit butter

## Challenge Input

    8
    The daily diary of the American dream
    For the sky and the sea, and the sea and the sky
    Three grey geese in a green field grazing, Grey were the geese and green was the grazing.
    But a better butter makes a batter better.
    "His soul swooned slowly as he heard the snow falling faintly through the universe and faintly falling, like the descent of their last end, upon all the living and the dead."
    Whisper words of wisdom, let it be.
    They paved paradise and put up a parking lot.
    So what we gonna have, dessert or disaster?

## Challenge Output

    daily diary
    sky sea
    grey geese green grazing
    better butter batter better
    soul swooned slowly
    whisper words wisdom
    paved paradise
    dessert disaster

# Title

Anagram Detector

## Difficulty

Easy

## Tags

word games, anagram

## Description

An anagram is a form of word play, where you take a word (or set of words) and form a different word (or different set of words) that use the same letters, just rearranged. All words must be valid spelling, and shuffling words around doesn't count. 

Some serious word play aficionados find that some anagrams can contain meaning, like "Clint Eastwood" and "Old West Action", or "silent" and "listen".

Someone once said, "All the life's wisdom can be found in anagrams. Anagrams never lie." How they don't lie is beyond me, but there you go. 

Punctuation and capitalization don't matter.

## Input Description

You'll be given two words or sets of words separated by a question mark. Your task is to replace the question mark with information about the validity of the anagram. Example:

    "Clint Eastwood" ? "Old West Action"
    "parliament" ? "partial man"

## Output Description

You should replace the question mark with some marker about the validity of the anagram proposed. Example:

    "Clint Eastwood" is an anagram of "Old West Action"
    "parliament" is NOT an anagram of "partial man"

## Challenge Input

    "wisdom" ? "mid sow"
    "Seth Rogan" ? "Gathers No"
    "Reddit" ? "Eat Dirt"
    "Schoolmaster" ? "The classroom"
    "Astronomers" ? "Moon starer"
    "Vacation Times" ? "I'm Not as Active"
    "Dormitory" ? "Dirty Rooms"

## Challenge Output

    "wisdom" is an anagram of "mid sow"
    "Seth Rogan" is an anagram of "Gathers No"
    "Reddit" is NOT an anagram of "Eat Dirt"
    "Schoolmaster" is an anagram of "The classroom"
    "Astronomers" is NOT an anagram of "Moon starer"
    "Vacation Times" is an anagram of "I'm Not as Active"
    "Dormitory" is NOT an anagram of "Dirty Rooms"

## Scala Solution

    def anagram(s1:String, s2:String): Boolean = s1.toLowerCase().filter(_.isLetter).sorted == s2.toLowerCase().filter(_.isLetter).sorted

# Title

Making Imgur-style Links

## Difficulty

Easy

## Tags

numbers, base62, shortened strings

## Description

Short links have been all the rage for several years now, spurred in part by Twitter's character limits. Imgur - Reddit's go-to image hosting site - uses a similar style for their links. Monotonically increasing IDs represented in Base62. 

Your task today is to convert a number to its Base62 representation.

## Input Description

You'll be given one number per line. Assume this is your alphabet:

    0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ 

Example input:

    15674
    7026425611433322325

## Output Description

Your program should emit the number represented in Base62 notation. Examples:

    O44
    bDcRfbr63n8

## Challenge Input

    187621
    237860461
    2187521
    18752

## Challenge Output

    9OM
    3n26g
    B4b9
    sS4    


## Python Solution

    def toBase62(n):
        alphabet = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        basis = len(alphabet)
        ret = ''
        while (n > 0):
            tmp = n % basis
            ret += alphabet[tmp]
            n = (n/basis)
        return ret
# Title

Baum-Sweet Sequence

## Difficulty

Easy

## Tags

integer sequence, Baum-Sweet, infinite sequence, number theory

## Description

In mathematics, the [Baum–Sweet sequence](https://en.wikipedia.org/wiki/Baum%E2%80%93Sweet_sequence) is an infinite automatic sequence of 0s and 1s defined by the rule:

* b_n = 1 if the binary representation of n contains no block of consecutive 0s of odd length;
* b_n = 0 otherwise;

for n >= 0.

For example, b_4 = 1 because the binary representation of 4 is 100, which only contains one block of consecutive 0s of length 2; whereas b_5 = 0 because the binary representation of 5 is 101, which contains a block of consecutive 0s of length 1. When n is 19611206, b_n is 0 because:

    19611206 = 1001010110011111001000110 base 2
                00 0 0  00     00 000  0 runs of 0s
                   ^ ^            ^^^    odd length sequences
               
Because we find an odd length sequence of 0s, b_n is 0. 
 
## Challenge Description

Your challenge today is to write a program that generates the Baum-Sweet sequence from 0 to some number *n*. For example, given "20" your program would emit:

    1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0

## Scala Solution

    def b(n:Int): Int = {
        if (0 == n) {return 1}
        if (n.toBinaryString.split("1").filter(_!="").map(_.length%2 != 0).contains(true)) {return 0}
        else {return 1}
    }

    def baum_sweet(n:Int): IndexedSeq[Int] = (0 to n).map(b)

## Go Solution

    package main

    import (
    	"fmt"
    	"os"
    	"strconv"
    	"strings"
    )

    func baumSweet(s string) int {
    	zeroes := strings.Split(s, "1")
    	for _, zero := range zeroes {
    		if (len(zero) > 0) && ((len(zero) % 2) == 1) {
    			return 1
    		}
    	}
    	return 0
    }

    func main() {
    	num, _ := strconv.ParseInt(os.Args[1], 10, 32)

    	for n := 0; n <= int(num); n++ {
    		s := strconv.FormatInt(int64(n), 2)
    		fmt.Printf("%d ", baumSweet(s))
    	}
    	fmt.Printf("\n")
    }

# Title

Gold and Treasure: The Beale Cipher

## Difficulty

Easy

## Tags

cipher, encryption, decryption

## Description

In 1885, an author named James B. Ward published a pamphlet telling of a long-lost treasure available to anyone clever enough to solve the puzzle associated with it. Ward reported that around 1817, a man named Thomas Jefferson Beale stumbled upon gold and silver deposits in what is now Colorado. Agreeing to keep it all a secret, Beale’s team had spent the better part of two years quietly mining, then had taken the metals to Virginia by wagon and buried them in a vault underground between 1819 and 1821. Beale had written three notes explaining where the treasure was and who had legal rights to shares in it, encrypting each of these using a different text.

Eventually, the second of the three texts was deciphered using a slightly altered version of the Declaration of Independence. Each number in the text corresponded to a word in the U.S. Declaration of Independence. The first letter of each of those words spelled the plaintext—with a few modifications for errors and spelling.

Your mission today is to go treasure hunting and to write a program to decipher Beale's message. 

## DECLARATION OF INDEPENDENCE

When in the course of human events it becomes necessary for one people to dissolve the political bands which have connected them with another and to assume among the powers of the earth the separate and equal station to which the laws of nature and of nature's god entitle them a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation we hold these truths to be self evident that all men are created equal that they are endowed by their creator with certain unalienable rights that among these are life liberty and the pursuit of happiness that to secure these rights governments are instituted among men deriving their just powers from the consent of the governed that whenever any form of government becomes destructive of these ends it is the right of the people to alter or to abolish it and to institute new government laying its foundation on such principles and organizing its powers in such form as to them shall seem most likely to effect their safety and happiness prudence indeed will dictate that governments long established should not be changed for light and transient causes and accordingly all experience hath shown that mankind are more disposed to suffer while evils are sufferable than to right themselves by abolishing the forms to which they are accustomed but when a long train of abuses and usurpations pursuing invariably the same object evinces a design to reduce them under absolute despotism it is their right it is their duty to throw off such government and to provide new guards for their future security such has been the patient sufferance of these colonies and such is now the necessity which constrains them to alter their former systems of government the history of the present king of great Britain is a history of repeated injuries and usurpations all having in direct object the establishment of an absolute tyranny over these states to prove this let facts be submitted to a candid world he has refused his assent to laws the most wholesome and necessary for the public good he has forbidden his governors to pass laws of immediate and pressing importance unless suspended in their operation till his assent should be obtained and when so suspended he has utterly neglected to attend to them he has refused to pass other laws for the accommodation of large districts of people unless those people would relinquish the right of representation in the legislature a right inestimable to them and formidable to tyrants only he has called together legislative bodies at places unusual uncomfortable and distant from the depository of their public records for the sole purpose of fatiguing them into compliance with his measures he has dissolved representative houses repeatedly for opposing with manly firmness his invasions on the rights of the people he has refused for a long time after such dissolutions to cause others to be elected whereby the legislative powers incapable of annihilation have returned to the people at large for their exercise the state remaining in the meantime exposed to all the dangers of invasion from without and convulsions within he has endeavored to prevent the population of these states for that purpose obstructing the laws for naturalization of foreigners refusing to pass others to encourage their migration hither and raising the conditions of new appropriations of lands he has obstructed the administration of justice by refusing his assent to laws for establishing judiciary powers he has made judges dependent on his will alone for the tenure of their offices and the amount and payment of their salaries he has erected a multitude of new offices and sent hither swarms of officers to harass our people and eat out their substance he has kept among us in times of peace standing armies without the consent of our legislatures he has affected to render the military independent of and superior to the civil power he has combined with others to subject us to a jurisdiction foreign to our constitution and unacknowledged by our laws giving his assent to their acts of pretended legislation for quartering large bodies of armed troops among us for protecting them by a mock trial from punishment for any murders which they should commit on the inhabitants of these states for cutting off our trade with all parts of the world for imposing taxes on us without our consent for depriving us in many cases of the benefits of trial by jury for transporting us beyond seas to be tried for pretended offenses for abolishing the free system of English laws in a neighboring province establishing therein an arbitrary government and enlarging its boundaries so as to render it at once an example and fit instrument for introducing the same absolute rule into these colonies for taking away our charters abolishing our most valuable laws and altering fundamentally the forms of our governments for suspending our own legislature and declaring themselves invested with power to legislate for us in all cases whatsoever he has abdicated government here by declaring us out of his protection and waging war against us he has plundered our seas ravaged our coasts burnt our towns and destroyed the lives of our people he is at this time transporting large armies of foreign mercenaries to complete the works of death desolation and tyranny already begun with circumstances of cruelty and perfidy scarcely paralleled in the most barbarous ages and totally unworthy the head of a civilized nation he has constrained our fellow citizens taken captive on the high seas to bear arms against their country to become the executioners of their friends and brethren or to fall themselves by their hands he has excited domestic insurrections amongst us and has endeavored to bring on the inhabitants of our frontiers the merciless Indian savages whose known rule of warfare is an undistinguished destruction of all ages sexes and conditions in every stage of these oppressions we have petitioned for redress in the most humble terms our repeated petitions have been answered only by repeated injury a prince whole character is thus marked by every act which may define a tyrant is unfit to be the ruler of a free people nor have we been wanting in attention to our British brethren we have warned them from time to time of attempts by their legislature to extend an unwarrantable jurisdiction over us we have reminded them of the circumstances of our emigration and settlement here we have appealed to their native justice and magnanimity and we have conjured them by the ties of our common kindred to disavow these usurpations which would inevitably interrupt our connections and correspondence they too have been deaf to the voice of justice and of consanguinity we must therefore acquiesce in the necessity which denounces our separation and hold them as we hold the rest of mankind enemies in war in peace friends we therefore the representatives of the united states of America in general congress assembled appealing to the supreme judge of the world for the rectitude of our intentions do in the name and by authority of the good people of these colonies solemnly publish and declare that these united colonies are and of right ought to be free and independent states that they are absolved from all allegiance to the British crown and that all political connection between them and the state of great Britain is and ought to be totally dissolved and that as free and independent states they have full power to levy war conclude peace contract alliances establish commerce and to do all other acts and things which independent states may of right do and for the support of this declaration with a firm reliance on the protection of divine providence we mutually pledge to each other our lives our fortunes and our sacred honor .

## Input Description

You'll be given a list of numbers, comma separated, representing the ciphertext given by Beale. Example:

115, 73, 24, 807, 37, 52, 49, 17, 31, 62, 647, 22, 7, 15, 140, 47, 29, 107, 79, 84, 56, 239, 10, 26, 811, 5, 196, 308, 85, 52, 160, 136, 59, 211, 36, 9, 46, 316, 554, 122, 106, 95, 53, 58, 2, 42, 7, 35, 122, 53, 31, 82, 77, 250, 196, 56, 96, 118, 71, 140, 287, 28, 353, 37, 1005, 65, 147, 807, 24, 3, 8, 12, 47, 43, 59, 807, 45, 316, 101, 41, 78, 154, 1005, 122, 138, 191, 16, 77, 49, 102, 57, 72, 34, 73, 85, 35, 371, 59, 196, 81, 92, 191, 106, 273, 60, 394, 620, 270, 220, 106, 388, 287, 63, 3, 6, 191, 122, 43, 234, 400, 106, 290, 314, 47, 48, 81, 96, 26, 115, 92, 158, 191, 110, 77, 85, 197, 46, 10, 113, 140, 353, 48, 120, 106, 2, 607, 61, 420, 811, 29, 125, 14, 20, 37, 105, 28, 248, 16, 159, 7, 35, 19, 301, 125, 110, 486, 287, 98, 117, 511, 62, 51, 220, 37, 113, 140, 807, 138, 540, 8, 44, 287, 388, 117, 18, 79, 344, 34, 20, 59, 511, 548, 107, 603, 220, 7, 66, 154, 41, 20, 50, 6, 575, 122, 154, 248, 110, 61, 52, 33, 30, 5, 38, 8, 14, 84, 57, 540, 217, 115, 71, 29, 84, 63, 43, 131, 29, 138, 47, 73, 239, 540, 52, 53, 79, 118, 51, 44, 63, 196, 12, 239, 112, 3, 49, 79, 353, 105, 56, 371, 557, 211, 505, 125, 360, 133, 143, 101, 15, 284, 540, 252, 14, 205, 140, 344, 26, 811, 138, 115, 48, 73, 34, 205, 316, 607, 63, 220, 7, 52, 150, 44, 52, 16, 40, 37, 158, 807, 37, 121, 12, 95, 10, 15, 35, 12, 131, 62, 115, 102, 807, 49, 53, 135, 138, 30, 31, 62, 67, 41, 85, 63, 10, 106, 807, 138, 8, 113, 20, 32, 33, 37, 353, 287, 140, 47, 85, 50, 37, 49, 47, 64, 6, 7, 71, 33, 4, 43, 47, 63, 1, 27, 600, 208, 230, 15, 191, 246, 85, 94, 511, 2, 270, 20, 39, 7, 33, 44, 22, 40, 7, 10, 3, 811, 106, 44, 486, 230, 353, 211, 200, 31, 10, 38, 140, 297, 61, 603, 320, 302, 666, 287, 2, 44, 33, 32, 511, 548, 10, 6, 250, 557, 246, 53, 37, 52, 83, 47, 320, 38, 33, 807, 7, 44, 30, 31, 250, 10, 15, 35, 106, 160, 113, 31, 102, 406, 230, 540, 320, 29, 66, 33, 101, 807, 138, 301, 316, 353, 320, 220, 37, 52, 28, 540, 320, 33, 8, 48, 107, 50, 811, 7, 2, 113, 73, 16, 125, 11, 110, 67, 102, 807, 33, 59, 81, 158, 38, 43, 581, 138, 19, 85, 400, 38, 43, 77, 14, 27, 8, 47, 138, 63, 140, 44, 35, 22, 177, 106, 250, 314, 217, 2, 10, 7, 1005, 4, 20, 25, 44, 48, 7, 26, 46, 110, 230, 807, 191, 34, 112, 147, 44, 110, 121, 125, 96, 41, 51, 50, 140, 56, 47, 152, 540, 63, 807, 28, 42, 250, 138, 582, 98, 643, 32, 107, 140, 112, 26, 85, 138, 540, 53, 20, 125, 371, 38, 36, 10, 52, 118, 136, 102, 420, 150, 112, 71, 14, 20, 7, 24, 18, 12, 807, 37, 67, 110, 62, 33, 21, 95, 220, 511, 102, 811, 30, 83, 84, 305, 620, 15, 2, 10, 8, 220, 106, 353, 105, 106, 60, 275, 72, 8, 50, 205, 185, 112, 125, 540, 65, 106, 807, 138, 96, 110, 16, 73, 33, 807, 150, 409, 400, 50, 154, 285, 96, 106, 316, 270, 205, 101, 811, 400, 8, 44, 37, 52, 40, 241, 34, 205, 38, 16, 46, 47, 85, 24, 44, 15, 64, 73, 138, 807, 85, 78, 110, 33, 420, 505, 53, 37, 38, 22, 31, 10, 110, 106, 101, 140, 15, 38, 3, 5, 44, 7, 98, 287, 135, 150, 96, 33, 84, 125, 807, 191, 96, 511, 118, 40, 370, 643, 466, 106, 41, 107, 603, 220, 275, 30, 150, 105, 49, 53, 287, 250, 208, 134, 7, 53, 12, 47, 85, 63, 138, 110, 21, 112, 140, 485, 486, 505, 14, 73, 84, 575, 1005, 150, 200, 16, 42, 5, 4, 25, 42, 8, 16, 811, 125, 160, 32, 205, 603, 807, 81, 96, 405, 41, 600, 136, 14, 20, 28, 26, 353, 302, 246, 8, 131, 160, 140, 84, 440, 42, 16, 811, 40, 67, 101, 102, 194, 138, 205, 51, 63, 241, 540, 122, 8, 10, 63, 140, 47, 48, 140, 288

## Output Description

Your program should consume the input and decrypt it. Remember - the first letter of that word number from the US Declaration of Independence. Spacing, punctuation, capitalization, and fixing spelling is left as an exercise to the treasure seeker (as Beale intended). The above letter was intended to decrypt to:

*I have deposited in the county of Bedford, about four miles from Buford's, in an excavation or vault, six feet below the surface of the ground, the following articles, belonging jointly to the parties whose names are given in number "3," herewith:*

*The first deposit consisted of one thousand and fourteen pounds of gold, and three thousand eight hundred and twelve pounds of silver, deposited November, 1819. The second was made December, 1821, and consisted of nineteen hundred and seven pounds of gold, and twelve hundred and eighty-eight pounds of silver; also jewels, obtained in St. Louis in exchange for silver to save transportation, and valued at $13,000.*

*The above is securely packed in iron pots, with iron covers. The vault is roughly lined with stone, and the vessels rest on solid stone, and are covered with others. Paper number "1" describes the exact locality of the vault so that no difficulty will be had in finding it.*

## Challenge Input

71, 194, 38, 1701, 89, 76, 11, 83, 1629, 48, 94, 63, 132, 16, 111, 95, 84, 341, 975, 14, 40, 64, 27, 81, 139, 213, 63, 90, 1120, 8, 15, 3, 126, 2018, 40, 74, 758, 485, 604, 230, 436, 664, 582, 150, 251, 284, 308, 231, 124, 211, 486, 225, 401, 370, 11, 101, 305, 139, 189, 17, 33, 88, 208, 193, 145, 1, 94, 73, 416, 918, 263, 28, 500, 538, 356, 117, 136, 219, 27, 176, 130, 10, 460, 25, 485, 18, 436, 65, 84, 200, 283, 118, 320, 138, 36, 416, 280, 15, 71, 224, 961, 44, 16, 401, 39, 88, 61, 304, 12, 21, 24, 283, 134, 92, 63, 246, 486, 682, 7, 219, 184, 360, 780, 18, 64, 463, 474, 131, 160, 79, 73, 440, 95, 18, 64, 581, 34, 69, 128, 367, 460, 17, 81, 12, 103, 820, 62, 116, 97, 103, 862, 70, 60, 1317, 471, 540, 208, 121, 890, 346, 36, 150, 59, 568, 614, 13, 120, 63, 219, 812, 2160, 1780, 99, 35, 18, 21, 136, 872, 15, 28, 170, 88, 4, 30, 44, 112, 18, 147, 436, 195, 320, 37, 122, 113, 6, 140, 8, 120, 305, 42, 58, 461, 44, 106, 301, 13, 408, 680, 93, 86, 116, 530, 82, 568, 9, 102, 38, 416, 89, 71, 216, 728, 965, 818, 2, 38, 121, 195, 14, 326, 148, 234, 18, 55, 131, 234, 361, 824, 5, 81, 623, 48, 961, 19, 26, 33, 10, 1101, 365, 92, 88, 181, 275, 346, 201, 206, 86, 36, 219, 324, 829, 840, 64, 326, 19, 48, 122, 85, 216, 284, 919, 861, 326, 985, 233, 64, 68, 232, 431, 960, 50, 29, 81, 216, 321, 603, 14, 612, 81, 360, 36, 51, 62, 194, 78, 60, 200, 314, 676, 112, 4, 28, 18, 61, 136, 247, 819, 921, 1060, 464, 895, 10, 6, 66, 119, 38, 41, 49, 602, 423, 962, 302, 294, 875, 78, 14, 23, 111, 109, 62, 31, 501, 823, 216, 280, 34, 24, 150, 1000, 162, 286, 19, 21, 17, 340, 19, 242, 31, 86, 234, 140, 607, 115, 33, 191, 67, 104, 86, 52, 88, 16, 80, 121, 67, 95, 122, 216, 548, 96, 11, 201, 77, 364, 218, 65, 667, 890, 236, 154, 211, 10, 98, 34, 119, 56, 216, 119, 71, 218, 1164, 1496, 1817, 51, 39, 210, 36, 3, 19, 540, 232, 22, 141, 617, 84, 290, 80, 46, 207, 411, 150, 29, 38, 46, 172, 85, 194, 39, 261, 543, 897, 624, 18, 212, 416, 127, 931, 19, 4, 63, 96, 12, 101, 418, 16, 140, 230, 460, 538, 19, 27, 88, 612, 1431, 90, 716, 275, 74, 83, 11, 426, 89, 72, 84, 1300, 1706, 814, 221, 132, 40, 102, 34, 868, 975, 1101, 84, 16, 79, 23, 16, 81, 122, 324, 403, 912, 227, 936, 447, 55, 86, 34, 43, 212, 107, 96, 314, 264, 1065, 323, 428, 601, 203, 124, 95, 216, 814, 2906, 654, 820, 2, 301, 112, 176, 213, 71, 87, 96, 202, 35, 10, 2, 41, 17, 84, 221, 736, 820, 214, 11, 60, 760

## Note

The inspiration for this challenge comes from the [Damn Interesting website](http://www.damninteresting.com/89-263-201-500-337-480/) and my love of the Nicholas Cage movie series "National Treasure". For more info see the [Museum of Unnatural History](http://www.unmuseum.org/bealepap.htm).

## Python Solution

    def solution(msg):
        # msg is a comma-separated list of integers, just like beale wrote out
        decl = "When in the course of human events ..." # omitted for brevity
        msg = map(int, map(str.strip, msg1.split(',')))
        return ''.join([ decl.split()[x-1][0] for x in msg])
# Title

Capitalize The First Letter of Every Word

## Difficulty

Easy

## Tags

words

## Description

Given a sentence, can you capitalize the first letter of every word? 

Yes this is a built-in in Python (`string.capwords`) and maybe some other languages, but the challenge is to implement your own `capwords`-like method. 

## Input Description

You'll be given an Enlish language sentence like this:

    Now is the time for all great programmers to capitalize the correct words.

## Output Description

You should emit a sentence with the first letter of every word capitalized. 

    Now Is The Time For All Great Programmers To Capitalize The Correct Words.
    
## Challenge Input

    Education is an admirable thing, but it is well to remember from time to time that nothing that is worth knowing can be taught.
    An intelligent man is sometimes forced to be drunk to spend time with his fools.
    The heart of a mother is a deep abyss at the bottom of which you will always find forgiveness.
    All things are subject to interpretation whichever interpretation prevails at a given time is a function of power and not truth.

## Challenge Output

    Education Is An Admirable Thing, But It Is Well To Remember From Time To Time That Nothing That Is Worth Knowing Can Be Taught.
    An Intelligent Man Is Sometimes Forced To Be Drunk To Spend Time With His Fools.
    The Heart Of A Mother Is A Deep Abyss At The Bottom Of Which You Will Always Find Forgiveness.
    All Things Are Subject To Interpretation Whichever Interpretation Prevails At A Given Time Is A Function Of Power And Not Truth.

## Scala Solution

    def capwords(s:String) = s.split(" ").map(_.capitalize).mkString(" ")

# Title

Collatz Conjecture

## Difficulty

Easy

## Tags

number theory, infinite sequence, integer sequence

## Description

The [Collatz conjecture](https://en.wikipedia.org/wiki/Collatz_conjecture) is a conjecture in mathematics named after Lothar Collatz, who first proposed it in 1937. Take any natural number n. If n is even, divide it by 2 to get n / 2. If n is odd, multiply it by 3 and add 1 to obtain 3n + 1. Repeat the process (which has been called "Half Or Triple Plus One", or HOTPO[6]) indefinitely. The conjecture is that no matter what number you start with, you will always eventually reach 1.

For instance, starting with n = 6, one gets the sequence 6, 3, 10, 5, 16, 8, 4, 2, 1. n = 19, for example, takes longer to reach 1: 19, 58, 29, 88, 44, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1.

## Input 

Your program should take a positive integer *N* as an argument.

## Output Description

Your program should emit the number of steps it takes to reach 1 and the sequence emitted.

## Bonus 1

Can you explain what's so interesting about the number 9232 in the context of the Collatz Conjecture?

## Bonus 2

If you're feeling like it, throw in some unique visualizations of sequences or series from the Collatz Conjecture, using any imaging library you wish. 


## Scala Solution

    def collatz(N:Int): List[Int] = {
      def loop(n:Int, sofar:List[Int]): List[Int] = {
        n match {
          case 1 => 1::sofar
          case _ => (n%2 == 0) match {
              case true => loop(n/2, n::sofar)
              case false => loop(1 + 3*n, n::sofar)
          }
        }
      }
      loop(N, List()).reverse
    }

# Title 

Concatenated Integers

## Difficulty

Easy

## Tags

math, concatenation

## Description

Given a list of integers separated by a single space on standard input, print out the largest and smallest values that can be obtained by concatenating the integers together on their own line. This is from [Five programming problems every Software Engineer should be able to solve in less than 1 hour](https://blog.svpino.com/2015/05/07/five-programming-problems-every-software-engineer-should-be-able-to-solve-in-less-than-1-hour), problem 4. Leading 0s are not allowed (e.g. 01234 is not a valid entry). 

## Sample Input

You'll be given a handful of integers per line. Example:

	5 56 50

## Sample Output

You should emit the smallest and largest integer you can make, per line. Example:

	50556 56550

## Challenge Input

	79 82 34 83 69
	420 34 19 71 341
	17 32 91 7 46

## Challenge Output

	3469798283 8382796934
	193413442071 714203434119
	173246791 917463217

## Scala Solution

	// returns min, max
	def intConcat(s:String): (Long, Long) = {
		val l = s.split(" ").permutations.map(_.mkString.toLong).toList
		(l.sorted.head, l.sorted.reverse.head)
	}

# Title

Condensing Sentences

## Difficulty

Easy

## Tags

word games, word play

## Description

Compression makes use of the fact that repeated structures are redundant, and it's more efficient to represent the pattern and the count or a reference to it. Siimilarly, we can *condense* a sentence by using the redundancy of overlapping letters from the end of one word and the start of the next. In this manner we can reduce the size of the sentence, even if we start to lose meaning. 

For instance, the phrase "live verses" can be condensed to "liverses". 

In this challenge you'll be asked to write a tool to condense sentences.

## Input Description

You'll be given a sentence, one per line, to condense. Condense where you can, but know that you can't condense everywhere. Example:

    I heard the pastor sing live verses easily.

## Output Description

Your program should emit a sentence with the appropriate parts condensed away. Our example:

    I heard the pastor sing liverses easily. 

## Challenge Input

    Deep episodes of Deep Space Nine came on the television only after the news.
    Digital alarm clocks scare area children.

## Challenge Output

    Deep episodes of Deep Space Nine came on the televisionly after the news.
    Digitalarm clockscarea children.

# Title

Double (or More) Knots

## Difficulty

Easy

## Tags

artwork, ASCII art

## Description

In knot tying, the double overhand knot is a common, basic knot that serves fishermen (and fisher-women) and sourgeons well. We can represent a single order double knot like this:

      __
     /  \
    | /\ |
    | \/ |
     \ \/
     /\ \
    | /\ |
    | \/ |
     \__/

And a double knot of 2 this way:

      __  __ 
     /  \/  \
    | /\/ /\ |
    | \/ /\/ |
     \ \/\ \/
     /\ \/\ \
    | /\/ /\ |
    | \/ /\/ |
     \__/\__/


## Challenge Description

In this challenge, you'll be asked to draw various orders of ASCII double knots given an integer. 

## Challenge Input

    2
    6

## Challenge Output

      __  __ 
     /  \/  \
    | /\/ /\ |
    | \/ /\/ |
     \ \/\ \/
     /\ \/\ \
    | /\/ /\ |
    | \/ /\/ |
     \__/\__/

       __  __  __  __  __  __
      /  \/  \/  \/  \/  \/  \
     | /\/ /\/ /\/ /\/ /\/ /\ |
     | \/ /\/ /\/ /\/ /\/ /\/ |
      \ \/\ \/\ \/\ \/\ \/\ \/
      /\ \/\ \/\ \/\ \/\ \/\ \
     | /\/ /\/ /\/ /\/ /\/ /\ |
     | \/ /\/ /\/ /\/ /\/ /\/ |
      \__/\__/\__/\__/\__/\__/
# Title

Emirp Numbers 

## Difficulty

Easy

## Tags

math, number theory, prime numbers, integer sequence

## Description

We all know what prime numbers are - numbers only divisible by themselves and one. Math grad student Matthew Scroggs came up with *emirp* numbers. An [emirp number](https://en.wikipedia.org/wiki/Emirp) is a prime number which is a different prime number when the digits are reversed.

Your task today is to write a program that can discover emirp numbers over a range. 

## Input Description

You'll be given two numbers, *a* and *b*, that represent the range *inclusive* of the numbers to screen for emirp numbers. Example:

    10 100

## Output Description

Your program should emit the list of valid emirp numbers for that range. Example:

    [11; 13; 17; 31; 37; 71; 73; 79; 97]

## Challenge Input

    10000 10100
    999810 999999
    
## Challenge Output

    [10007; 10009; 10039; 10061; 10067; 10069; 10079; 10091]
    [999853; 999931; 999983]

## FSharp Solution

    let isprime (n:int) =
        let rec check i =
            i > n/2 || (n % i <> 0 && check (i + 1))
        check 2;;

    let revnum(n:int) = 
        string(n).ToCharArray() |> Array.rev |> Array.map(fun x -> string(x)) |> String.concat "" |> int


    [ 1 .. 100 ] |> List.filter isprime |> List.filter (fun x -> revnum x |> isprime)

# Title

Extravagant Numbers 

## Difficulty

Easy

## Tags

number theory, math, integer sequence

## Description

An [extravagant number](https://en.wikipedia.org/wiki/Extravagant_number) (also known as a wasteful number) is a natural number that has fewer digits than the number of digits in its prime factorization (including exponents). Trivial examples include 6 = 2*3, 8 = 2^3, and 9 = 3^2, all extravagant numbers. 

Your challenge today is to write a program to determine is numbers are extravagant or not. 

## Input Description

You'll be given a single integer per line. Examples:

    6
    16
    32
    99

## Output Description

Your program should emit if the number is extravagant or not:

    6 EXTRAVAGANT
    16 NOT EXTRAVAGANT
    32 NOT EXTRAVAGANT
    99 EXTRAVAGANT

## Challenge Input

    90
    30
    74
    141
    782
    938

## Challenge Output

    90 EXTRAVAGANT
    30 EXTRAVAGANT
    74 EXTRAVAGANT
    141 NOT EXTRAVAGANT
    782 EXTRAVAGANT
    938 EXTRAVAGANT

## Scala Solution

    def factorize(x: Int): List[Int] = {
        @tailrec
        def foo(x: Int, a: Int = 2, list: List[Int] = Nil): List[Int] = a*a > x match {
          case false if x % a == 0 => foo(x / a, a    , a :: list)
          case false               => foo(x    , a + 1, list)
          case true                => x :: list
        }
        foo(x)
      }

    def power(n:Int): String = {
        if (n > 1) {return n.toString}
        else {return ""}
    }

    def extravagant(n:Int): Boolean = 
        factorize(n).groupBy(x => x).mapValues(_.length).map(x => x._1 + "" + power(x._2)).mkString("").length > n.toString.length

# Title

Finding the Freshest Eggs

## Difficulty

Easy

## Tags

dates

## Description

The fresher the egg, the better the flavor. Because the sell-by date for eggs in a supermarket (with U.S.D.A. inspection) can be up to 45 days after the packing date, there is a quick and easy way to check for freshness: the Julian date. Every egg carton has a code printed on its side, and the last 3 digits of this code are called the Julian date. The code uses a number from 001 to 365 to correspond to a day of the year and indicate when they were packaged. For example, 001 is January 1st and 365 is December 31st.

For this challenge, your goal is to read the ISO calendar date (e.g. 2015-03-28) and then the Julian date code from a number of egg cartons and to pick the freshest one, the one that was packaged the fewest days ago. 

## Input Description

For each scenario you'll be given an integer *N* which tells you how many egg cartons to check, then on the next line an ISO date format of the current date. Then you'll be given *N* egg cartons' worth of Julian dates.

You'll be given 3 sets of scenarios that match these parameters. Solve them all independently. 

You should work with the assumption that time travel is impossible, so keep that in mind working with Julian dates. 

## Output Description

Your program should emit the scenario's date and the Julian date of the freshest egg carton and the oldest egg carton (maybe ripe for removal from the shelf!). 

## Challenge Input

Scenario 1:

	5
	2015-03-28
	019 
	026 
	017 
	041 
	063 

Scenario 2:

	5 
	2014-01-01
	311 
	163 
	270 
	229 
	162 

Scenario 3:

	5
	2015-01-10
	321 
	004
	354
	009 
	337 

## Challenge Output

	2015-03-28 063 017
	2014-01-01 311 162
	2015-01-10 009 321
	

# Title

Basic Graph Statistics: Node Degrees

## Difficulty

Easy

## Tags

graph theory, graph theory!node, graph theory!edge, graph theory!adjacency matrix

## Description

In graph theory, the *degree* of a node is the number of edges coming into it or going out of it - how connected it is. For this challenge you'll be calculating the degree of every node. 

## Input Description

First you'll be given an integer, *N*, on one line showing you how many nodes to account for. Next you'll be given an undirected graph as a series of number pairs, *a* and *b*, showing that those two nodes are connected - an edge. Example:

    3 
    1 2
    1 3

## Output Description

Your program should emit the degree for each node. Example:

    Node 1 has a degree of 2
    Node 2 has a degree of 1
    Node 3 has a degree of 1

## Challenge Input

This data set is an social network of tribes of the Gahuku-Gama alliance structure of the Eastern Central Highlands of New Guinea, from Kenneth Read (1954). The dataset contains a list of all of links, where a link represents signed friendships between tribes. It was downloaded from [the network repository](http://networkrepository.com/soc_tribes.php). 

    16
    1 2
    1 3
    2 3
    1 4
    3 4
    1 5
    2 5
    1 6
    2 6
    3 6
    3 7
    5 7
    6 7
    3 8
    4 8
    6 8
    7 8
    2 9
    5 9
    6 9
    2 10
    9 10
    6 11
    7 11
    8 11
    9 11
    10 11
    1 12
    6 12
    7 12
    8 12
    11 12
    6 13
    7 13
    9 13
    10 13
    11 13
    5 14
    8 14
    12 14
    13 14
    1 15
    2 15
    5 15
    9 15
    10 15
    11 15
    12 15
    13 15
    1 16
    2 16
    5 16
    6 16
    11 16
    12 16
    13 16
    14 16
    15 16

## Challenge Output

    Node 1 has a degree of 8
    Node 2 has a degree of 8
    Node 3 has a degree of 6
    Node 4 has a degree of 3
    Node 5 has a degree of 7
    Node 6 has a degree of 10
    Node 7 has a degree of 7
    Node 8 has a degree of 7
    Node 9 has a degree of 7
    Node 10 has a degree of 5
    Node 11 has a degree of 9
    Node 12 has a degree of 8
    Node 13 has a degree of 8
    Node 14 has a degree of 5
    Node 15 has a degree of 9
    Node 16 has a degree of 9

## Bonus: Adjascency Matrix

Another tool used in graph theory is an *adjacency matrix*, which is an *N* by *N* matrix where each *(i,j)* cell is filled out with the degree of connection between nodes *i* and *j*. For our example graph above the adjacency matrix would look like this:

    0 1 1
    1 0 0
    1 0 0

Indicating that node 1 is connected to nodes 2 and 3, but nodes 2 and 3 do not connect. For a bonus, create the adjacency matrix for the challenge graph. 

## Scala Solution

    def degree(edges:String) = 
        edges.
          split("\n").
          map(_.split(" ").filter(_.length>0)).
          toSet.
          toList.
          flatten.
          groupBy(_.toString).
          mapValues(_.size)
    
    def adj_matrix(edges:String, n:Int):String = {
        val m = Array.ofDim[Int](n,n)
        val es = edges.
                   split("\n").
                   map(_.split(" ").filter(_.length>0)).
                   map(_.map(_.toInt))
        for (e <- es) { m(e(0)-1)(e(1)-1) = 1; m(e(1)-1)(e(0)-1) = 1 }
        m.map(_.mkString(" ")).mkString("\n")
    }

    def challenge(edges:String) = 
        degree(edges).foreach { kv => println(kv._1 + " has a degree of " + kv._2) }
    
    def bonus(edges:String, n:Int) = {
        challenge(edges)
        println(adj_matrix(edges, n))
    }

## Go Solution

    package main

    import (
    	"fmt"
    	"io/ioutil"
    	"os"
    	"strconv"
    	"strings"
    )

    func check(e error) {
    	if e != nil {
    		panic(e)
    	}
    }

    func main() {
    	bdata, err := ioutil.ReadFile(os.Args[1])
    	check(err)

    	data := string(bdata)
    	var nodes map[string]int
    	nodes = make(map[string]int)

    	// calcuate node degree
    	lines := strings.Split(data, "\n")
    	for _, line := range lines {
    		vals := strings.Split(line, " ")
    		if len(vals) == 2 {
    			nodes[vals[0]] = nodes[vals[0]] + 1
    			nodes[vals[1]] = nodes[vals[1]] + 1
    		}
    	}
    	i := 0
    	for k, v := range nodes {
    		fmt.Printf("Node %s has a degree of %d\n", k, v)
    		i = i + 1
    	}

    	// bonus adjacency matrix
    	adjm := make([][]string, i)
    	for n := range adjm {
    		adjm[n] = make([]string, i)
    		for m := range adjm[n] {
    			adjm[n][m] = "0"
    		}
    	}
    	for _, line := range lines {
    		vals := strings.Split(line, " ")
    		if len(vals) == 2 {
    			x, err := strconv.ParseUint(vals[0], 10, 32)
    			check(err)
    			y, err := strconv.ParseUint(vals[1], 10, 32)
    			check(err)
    			adjm[x-1][y-1] = "1"
    			adjm[y-1][x-1] = "1"
    			adjm[x-1][x-1] = "1"
    		}
    	}

    	for n := 0; n < i; n++ {
    		fmt.Printf("%q\n", strings.Join(adjm[n], " "))
    	}
    }

# Title

Harshad Number 

## Difficulty

Easy

## Tags

number theory, integer sequence, divisors

## Description

In recreational mathematics, a [Harshad number](https://en.wikipedia.org/wiki/Harshad_number) (or Niven number) in a given number base, is an integer that is divisible by the sum of its digits when written in that base. Harshad numbers in base n are also known as *n*-Harshad (or *n*-Niven) numbers. Harshad numbers were defined by D. R. Kaprekar, a mathematician from India. The word "Harshad" comes from the Sanskrit *harsa* (joy) + *da* (give), meaning joy-giver. The term “Niven number” arose from a paper delivered by Ivan M. Niven at a conference on number theory in 1977.

Thus, you can observe that number 21 is a Harshad number - 21 / (2 + 1) = 7. 

Today's challenge is to determine if an integer is a valid Harshad number. 

## Input Description

You'll be given an integer, one per line. Example:

    21
    22

## Output Description

Your program should emit if the number is a Harshad number or not. Example:

    21 HARSHAD
    22 NOT HARSHAD

## Challenge Input

    21
    49
    62
    63

## Challenge Output

    21 HARSHAD 
    49 NOT HARSHAD
    62 NOT HARSHAD
    63 HARSHAD

## Scala Solution

    def harshad(n:Int): Boolean = (n/n.toString.map(_.toString.toInt).sum)*(n.toString.map(_.toString.toInt).sum) == n

# Title

Integer Sequence Search Part 1

## Difficulty

Easy

## Tags

integer sequence, math

## Description

In mathematics, an integer sequence is a sequence (i.e., an ordered list) of integers. Not all sequences are computable (e.g. not all have a formula that can express them), but unique sequences have interesting properties and can be quite fun to watch play out. 

The [On-Line Encyclopedia of Integer Sequences (OEIS)](https://oeis.org/) website has an interesting feature where you can search for sequences by name, ID, or even just subsequences. 

For this challenge you'll be replicating that subsequence search feature. 

## Input Description

You'll be given two integers, *N* and *M*, which tell you how many sequences to read to form your database and then how many search queries to process, respectively. Then you'll be given the database as *N* pairs of *name* and *first 10 terms of the sequence* pair. Then you'll be given *M* queries of a series of integers. Note that the overlap of the query and the sequence database will be unambiguous but is not guaranteed to overlap completely. All sequences to search will be contiguous (e.g. no gaps). Sequence names will use the OEIS naming convention

Example:

	1 2
	A000055	1, 1, 1, 1, 2, 3, 6, 11, 23, 47
	11, 23, 47, 106
	3, 14, 15, 92, 65

## Output Description

For each of the search terms you should emit the query and the sequence name. 

Example:

	11, 23, 47, 106   A000055
	3, 14, 15, 92, 65 NOMATCH

## Challenge Input

	9 6
	A000055	1, 1, 1, 1, 2, 3, 6, 11, 23, 47
	A000045	0, 1, 1, 2, 3, 5, 8, 13, 21, 34
	A050278	1023456789, 1023456798, 1023456879, 1023456897, 1023456978, 1023456987, 1023457689, 1023457698, 1023457869, 1023457896
	A000010	1, 1, 2, 2, 4, 2, 6, 4, 6, 4
	A194508	-1, 1, 0, 2, 1, 0, 2, 1, 3, 2
	A000111	1, 1, 1, 2, 5, 16, 61, 272, 1385, 7936
	A233586	1, 6, 12, 19, 63, 263, 856, 2632, 7714, 9683
	A000391	1, 6, 21, 71, 216, 672, 1982, 5817, 16582, 46633
	A000713	1, 3, 8, 18, 38, 74, 139, 249, 434, 734
	1, 3, 8, 18
	263, 856, 2632, 7714, 9683
	1, 1, 2, 3, 5, 8
	1, 6, 12, 19, 63
	20, 22, 24, 28, 30, 34
	434, 734, 1215, 1967, 3132, 4902

## Challenge Output

	1, 3, 8, 18		A000713
	263, 856, 2632, 7714, 9683 	A233586
	1, 1, 2, 3, 5, 8	A000045
	1, 6, 12, 19, 63	A233586
	20, 22, 24, 28, 30, 34	NOMATCH
	434, 734, 1215, 1967, 3132, 4902 A000713
# Title

Jolly Jumper

## Difficulty

Easy

## Tags

word play

## Description

A sequence of n > 0 integers is called a jolly jumper if the absolute values of the differences between successive elements take on all possible values 1 through n - 1. For instance,

    1 4 2 3

is a jolly jumper, because the absolute differences are 3, 2, and 1, respectively. The definition implies that any sequence of a single integer is a jolly jumper. Write a program to determine whether each of a number of sequences is a jolly jumper.

## Input Description

You'll be given a row of numbers. The first number tells you the number of integers to calculate over, *N*, followed by *N* integers to calculate the differences. Example:

    4 1 4 2 3
    8 1 6 -1 8 9 5 2 7

## Output Description

Your program should emit some indication if the sequence is a jolly jumper or not. Example:

    4 1 4 2 3 JOLLY
    8 1 6 -1 8 9 5 2 7 NOT JOLLY

## Challenge Input

	4 1 4 2 3
	5 1 4 2 -1 6
	4 19 22 24 21
	4 19 22 24 25
	4 2 -1 0 2

## Challenge Output

	4 1 4 2 3 JOLLY
	5 1 4 2 -1 6 NOT JOLLY
	4 19 22 24 21 NOT JOLLY
	4 19 22 24 25 JOLLY
	4 2 -1 0 2 JOLLY
# Title

L33tspeak Translator

## Difficulty

Easy

## Tags

word play

## Description

L33tspeak - the act of speaking like a computer hacker (or hax0r) - was popularized in the late 1990s as a mechanism of abusing ASCII art and character mappings to confuse outsiders. It was a lot of fun. [One popuar comic strip](http://megatokyo.com/strip/9) in 2000 showed just how far the joke ran. 

In L33Tspeak you substitute letters for their rough outlines in ASCII characters, e.g. symbols or numbers. You can have 1:1 mappings (like E -> 3) or 1:many mappings (like W -> `//). So then you wind up with words like this:

    BASIC => 6451C
    ELEET => 31337 (pronounced elite)
    WOW => `//0`//
    MOM => (V)0(V)

## Mappings

For this challenge we'll be using a subset of American Standard Leetspeak:

    A -> 4
    B -> 6
    E -> 3
    I -> 1
    L -> 1
    M -> (V)
    N -> (\)
    O -> 0
    S -> 5
    T -> 7
    V -> \/
    W -> `//

Your challenge, should you choose to accept it, is to translate to and from L33T. 

## Input Description

You'll be given a word or a short phrase, one per line, and asked to convert it from L33T or to L33T. Examples:

    31337 
    storm 

## Output Description

You should emit the translated words: Examples:

    31337 -> eleet
    storm -> 570R(V)

## Challenge Input

    I am elite.
    Da pain!
    Eye need help!
    3Y3 (\)33d j00 t0 g37 d4 d0c70r.
    1 n33d m4 p1llz!

## Challenge Output

    I am elite. -> 1 4m 37173
    Da pain! -> D4 P41(\)!
    Eye need help! -> 3Y3 (\)33D H31P!
    3Y3 (\)33d j00 t0 g37 d4 d0c70r. -> Eye need j00 to get da doctor.
    1 n33d m4 p1llz! -> I need ma pillz!


# Title

Lipogram Detector

## Difficulty

Easy

## Tags

word games, lipogram

## Description

A lipogram is a kind of constrained writing or word game consisting in writing paragraphs or longer works in which a particular letter or group of letters is avoided. Writing a lipogram may be a trivial task when avoiding uncommon letters like Z, J, Q, or X, but it is much more difficult to avoid common letters like E, T or A, as the author must omit many ordinary words. A famous example is Poe's poem *The Raven* contains no Z, but there is no evidence that this was intentional. Pangrammatic lipograms use all letters except one.

Your challenge today is to detect what letter is missing from the given text.

##  Input Description

You'll be given a short piece of text. For example:

    A jovial swain should not complain
    Of any buxom fair
    Who mocks his pain and thinks it gain
    To quiz his awkward air.

## Output Description

Your program should emit what letter is missing. From ths above example:

    E

## Challenge Input

    Bold Nassan quits his caravan,
    A hazy mountain grot to scan;
    Climbs jaggy rocks to find his way,
    Doth tax his sight, but far doth stray.

    Not work of man, nor sport of child
    Finds Nassan on this mazy wild;
    Lax grow his joints, limbs toil in vain-
    Poor wight! why didst thou quit that plain?

    Vainly for succour Nassan calls;
    Know, Zillah, that thy Nassan falls;
    But prowling wolf and fox may joy
    To quarry on thy Arab boy.

## Challenge Output

    E

## Scala Solution

    def lipogram(text: String) : Set[Char] = 
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ".toSet--text.toCharArray.map(_.toUpper).toSet

## Python Solution

    def lipogram(text): 
        return set(string.lowercase) - ( { ch.lower() for ch in text } - set(string.punctuation))

## Go Solution

    package main

    import (
    	"fmt"
    	"gopkg.in/fatih/set.v0"
    	"os"
    	"strings"
    )

    func main() {
    	const alphabet = "abcdefghijklmnopqrstuvwxyz"
    	text := os.Args[1]

    	characters := set.New()
    	for _, ch := range strings.ToLower(text) {
    		characters.Add(string(ch))
    	}

    	alpha := set.New()
    	for _, ch := range alphabet {
    		alpha.Add(string(ch))
    	}

    	fmt.Println(set.Difference(alpha, characters))
    }

# Title

In what year were most presidents alive?

## Difficulty

Easy

## Tags

dates, presidents

## Description

US presidents serve four year terms, with most presidents serving one or two terms. Unless a president dies in office, they then live after leaving office. 

This challenge, then, given a list of presidents and their dates of birth and dates of death, is to figure out what *year* the most presidents - future, present, or previous - were alive. 

## Challenge Input

Below is a CSV input of presidential birthdates and death dates. Find what year in which the most number of people who would serve, are serving, or have served as presidents. The answer might be multiple years, or only a partial year. 

    PRESIDENT,	BIRTH DATE,	BIRTH PLACE,	DEATH DATE,	LOCATION OF DEATH
    George Washington,	Feb 22 1732,	Westmoreland Co. Va.,	Dec 14 1799,	Mount Vernon Va.
    John Adams,	Oct 30 1735,	Quincy Mass.,	July 4 1826,	Quincy Mass.
    Thomas Jefferson,	Apr 13 1743,	Albemarle Co. Va.,	July 4 1826,	Albemarle Co. Va.
    James Madison,	Mar 16 1751,	Port Conway Va.,	June 28 1836,	Orange Co. Va.
    James Monroe,	Apr 28 1758,	Westmoreland Co. Va.,	July 4 1831,	New York New York
    John Quincy Adams,	July 11 1767,	Quincy Mass.,	Feb 23 1848,	Washington D.C.
    Andrew Jackson,	Mar 15 1767,	Lancaster Co. S.C.,	June 8 1845,	Nashville Tennessee
    Martin Van Buren,	Dec 5 1782,	Kinderhook New York,	July 24 1862,	Kinderhook New York
    William Henry Harrison,	Feb 9 1773,	Charles City Co. Va.,	Apr 4 1841,	Washington D.C.
    John Tyler,	Mar 29 1790,	Charles City Co. Va.,	Jan 18 1862,	Richmond Va.
    James K. Polk,	Nov 2 1795,	Mecklenburg Co. N.C.,	June 15 1849,	Nashville Tennessee
    Zachary Taylor,	Nov 24 1784,	Orange County Va.,	July 9 1850,	Washington D.C
    Millard Fillmore,	Jan 7 1800,	Cayuga Co. New York,	Mar 8 1874,	Buffalo New York
    Franklin Pierce,	Nov 23 1804,	Hillsborough N.H.,	Oct 8 1869,	Concord New Hamp.
    James Buchanan,	Apr 23 1791,	Cove Gap Pa.,	June 1 1868,	Lancaster Pa.
    Abraham Lincoln,	Feb 12 1809,	LaRue Co. Kentucky,	Apr 15 1865,	Washington D.C.
    Andrew Johnson,	Dec 29 1808,	Raleigh North Carolina,	July 31 1875,	Elizabethton Tenn.
    Ulysses S. Grant,	Apr 27 1822,	Point Pleasant Ohio,	July 23 1885,	Wilton New York
    Rutherford B. Hayes,	Oct 4 1822,	Delaware Ohio,	Jan 17 1893,	Fremont Ohio
    James A. Garfield,	Nov 19 1831,	Cuyahoga Co. Ohio,	Sep 19 1881,	Elberon New Jersey
    Chester Arthur,	Oct 5 1829,	Fairfield Vermont,	Nov 18 1886,	New York New York
    Grover Cleveland,	Mar 18 1837,	Caldwell New Jersey,	June 24 1908,	Princeton New Jersey
    Benjamin Harrison,	Aug 20 1833,	North Bend Ohio,	Mar 13 1901,	Indianapolis Indiana
    William McKinley,	Jan 29 1843,	Niles Ohio,	Sep 14 1901,	Buffalo New York
    Theodore Roosevelt,	Oct 27 1858,	New York New York,	Jan 6 1919,	Oyster Bay New York
    William Howard Taft,	Sep 15 1857,	Cincinnati Ohio,	Mar 8 1930,	Washington D.C.
    Woodrow Wilson,	Dec 28 1856,	Staunton Virginia,	Feb 3 1924,	Washington D.C.
    Warren G. Harding,	Nov 2 1865,	Morrow County Ohio,	Aug 2 1923,	San Francisco Cal.
    Calvin Coolidge,	July 4 1872,	Plymouth Vermont,	Jan 5 1933,	Northampton Mass.
    Herbert Hoover,	Aug 10 1874,	West Branch Iowa,	Oct 20 1964,	New York New York
    Franklin Roosevelt,	Jan 30 1882,	Hyde Park New York,	Apr 12 1945,	Warm Springs Georgia
    Harry S. Truman,	May 8 1884,	Lamar Missouri,	Dec 26 1972,	Kansas City Missouri
    Dwight Eisenhower,	Oct 14 1890,	Denison Texas,	Mar 28 1969,	Washington D.C.
    John F. Kennedy,	May 29 1917,	Brookline Mass.,	Nov 22 1963,	Dallas Texas
    Lyndon B. Johnson,	Aug 27 1908,	Gillespie Co. Texas,	Jan 22 1973,	Gillespie Co. Texas
    Richard Nixon,	Jan 9 1913,	Yorba Linda Cal.,	Apr 22 1994,	New York New York
    Gerald Ford,	July 14 1913,	Omaha Nebraska,	Dec 26 2006,	Rancho Mirage Cal.
    Jimmy Carter,	Oct 1 1924,	Plains Georgia,	,	
    Ronald Reagan,	Feb 6 1911,	Tampico Illinois,	June 5 2004,	Los Angeles Cal.
    George Bush,	June 12 1924,	Milton Mass.,	,	
    Bill Clinton,	Aug 19 1946,	Hope Arkansas,	,	
    George W. Bush,	July 6 1946,	New Haven Conn.,	,	
    Barack Obama,	Aug 4 1961,	Honolulu Hawaii,	,

via [U.S. Presidents Birth and Death Information](http://www.presidentsusa.net/birth.html). 

# Title 

Pandigital Roman Numbers 

## Difficulty 

Easy

## Tags

numbers, Roman numerals

## Description

1474 is a pandigital in Roman numerals (MCDLXXIV). It uses each of the symbols I, V, X, L, C, and M at least once. Your challenge today is to find the small handful of pandigital Roman numbers up to 2000. 

## Output Description

A list of numbers. Example: 

    1 (I), 2 (II), 3 (III), 8 (VIII) (Examples only, these are not pandigital Roman numbers)

## Challenge Input

Find all numbers that are pandigital in Roman numerals using each of the symbols I, V, X, L, C, D and M *exactly* once.

## Challenge Input Solution

1444, 1446, 1464, 1466, 1644, 1646, 1664, 1666 

See [OEIS sequence A105416](http://oeis.org/A105416) for more information.

# Title

Pell Numbers

## Difficulty

Easy

## Tags

number sequence, infinite sequence, number theory

## Description

In mathematics, the [Pell numbers](https://en.wikipedia.org/wiki/Pell_number) are an infinite sequence of integers, known since ancient times, that comprise the denominators of the closest rational approximations to the square root of 2. This sequence of approximations begins 1/1, 3/2, 7/5, 17/12, and 41/29, so the sequence of Pell numbers begins with 0, 1, 2, 5, 12, and 29 (each Pell number is the sum of twice the previous Pell number and the Pell number before that).

Your challenge today is to generate this sequence and pick out specific elements in the seqence. 

If you're feeling especially brave, try applying memoization and recursion in your answer. 

## Sample Input

You'll be given number *N*, one per line. This is the position in the sequence of Pell numbers to yield. Examples:

    3
    5

## Sample Output

    2
    12

## Challenge Input

    10
    17

## Challenge Output

    985
    470832

## Bonus

What is the 100th Pell number? (Answer: 27749033099085295754434173207717704165)

## F# Solution

    let pell n =
        let addPell a b = (2I*a + b)
        let rec loop n sofar = 
            printfn "%A" sofar
            match ((List.length sofar) = n) with
            | true  -> List.head sofar
            | false -> loop n ((addPell (List.head sofar) (Seq.nth 1 sofar))::sofar)
        match n with
        | 0 -> 0I
        | 1 -> 1I
        | _ -> loop n [1I; 0I]
# Title 

Perfect Numbers

## Difficulty

Easy

## Tags

divisors, number theory, math, integer sequence

## Description

In number theory, a [perfect number](http://en.wikipedia.org/wiki/Perfect_number) is a positive integer that is equal to the sum of its proper positive divisors, that is, the sum of its positive divisors excluding the number itself (also known as its aliquot sum). The first perfect number is 6, because 1, 2, and 3 are its proper positive divisors, and 1 + 2 + 3 = 6. Equivalently, the number 6 is equal to half the sum of all its positive divisors: ( 1 + 2 + 3 + 6 ) / 2 = 6. The next perfect number is 28 = 1 + 2 + 4 + 7 + 14. This is followed by the perfect numbers 496 and 8128. 

In this challenge you'll be asked to calculate an arbitrary number of perfect numbers. 

## Input Description

You'll be given a single integer, *N*, which tells you how many perfect numbers to emit. Example:

	4

## Output Description

Your program should emit a list of perfect numbers up to that point. For our example:

	6 28 496 8128

## Challenge Input

	10

## Challenge Output

	6 28 496 8128 33550336 8589869056 137438691328 2305843008139952128 2658455991569831744654692615953842176 191561942608236107294793378084303638130997321548169216

## Scala Solution

a naive solution that doesn't use the Euclid-Euler theorem

	def factors(n:Int): List[Int] = (2 to n/2).filter(x => n%x == 0).toList

	def perfect(n:Int): Boolean = n == factors(n).sum + 1

	(1 to 10000).filter(perfect(_))

getting closer to using Euclid-Euler

	def isprime(n:Int) : Boolean = {
		def check(i:Int) : Boolean = (i > n/2) || ((n % i != 0) && (check (i+1)))
		check(2)
	}

	def perfect(n:Int): Long = (scala.math.pow(2, (n-1))*(scala.math.pow(2, n)-1)).toLong

	(2 to 50000).filter(isprime(_)).map(perfect(_)).distinct
	

# Title

Primes in Grids

## Difficulty

Easy

## Tags

prime numbers

## Description

This puzzle was first proposed (1989) by Gordon Lee: given a grid of numbers, how many *distinct* primes can you find embedded in the matrix, regarding that you can read the lines or part of them, in form vertical, horizontal or diagonal orientation, in both directions. 

Note that you can't change direction once you start moving (e.g. this isn't Boggle). 

## Input Description

You'll be given a single number on a line which tells you how many rows and columns to read (all grids will be square). Example:

    3 
    113
    754
    937

## Output Description

Your program should emit the number of distinct primes it finds in the grid. Optionally list them. Example:

    30
    113, 311, 179, 971, 157, 751 359, ...

## Challenge Input

    5 
    11933
    99563
    89417
    33731
    32939
    
    6
    317333
    995639
    118142
    136373
    349199
    379379

## Challenge Output

    116

    187

# Title

Reverse Factorial

## Difficulty

Easy

## Tags

math, factorial 

## Description

Nearly everyone is familiar with the factorial operator in math. 5! yields 120 because factorial means "multiply successive terms where each are one less than the previous":

    5! -> 5 * 4 * 3 * 2 * 1 -> 120

Simple enough. 

Now let's reverse it. Could you write a function that tells us that "120" is "5!"? 

Hint: The strategy is pretty straightforward, just divide the term by successively larger terms until you get to "1" as the resultant:

    120 -> 120/2 -> 60/3 -> 20/4 -> 5/5 -> 1 => 5!

## Sample Input

You'll be given a single integer, one per line. Examples:

    120
    150

## Sample Output

Your program should report what each number is as a factorial, or "NONE" if it's not legitimately a factorial. Examples:

    120 = 5!
    150   NONE

## Challenge Input

    3628800
    479001600
    6
    18

## Challenge Output

    3628800 = 10!
    479001600 = 12!
    6 = 3!
    18  NONE

## Fsharp Solution

    let rec tcaf(n: int) (sofar: int) =
        match (n%sofar) with 
        | 0 ->  match (n/sofar) with
                | 1 -> sofar
                | _ -> tcaf (n/sofar) (sofar+1)
        | _ -> -1
    
    let solution (n: int) = 
        let res = tcaf n 2
        match res with
        | -1 -> "NONE"
        | _  -> (string res) + "!"

# Title

Roller Coaster Words

## Difficulty

Easy

## Tags

word play

## Description

A [roller coaster word](http://www.questrel.com/records.html#spelling_alphabetical_order_entire_word_roller-coaster) is a word with letters that alternate between going forward and backward in alphabet. One such word is "decriminalization". Can you find other examples of roller coaster words in the English dictionary?

## Output

Your program should emit any and all roller coaster words it finds in a standard English language dictionary longer (or [enable1.txt](https://github.com/dolph/dictionary/blob/master/enable1.txt)) than 4 letters. 

## Notes

If you have your own idea for a challenge, submit it to /r/DailyProgrammer_Ideas, and there's a good chance we'll post it.


# Title 

Safe Prime Numbers 

## Difficulty 

Easy

## Tags

prime numbers, number theory, math, encryption

## Description

A [safe prime](https://en.wikipedia.org/wiki/Safe_prime) is a prime number of the form 2*p* + 1, where p is also a prime. Safe primes are also important in cryptography because of their use in discrete logarithm-based techniques like Diffie-Hellman key exchange.

##  Input Description

You will be given a single number that is the maximum value of safe prime to search for. Example: 

	100

## Output Description 

A list of numbers, one on each line, showing numbers that solve the safe prime definition. Example:

	5
	7
	11
	23
	47
	59
	83

## Challenge Input

	1000

## Challenge Input Solution (not visible by default)

	5
	7
	11
	23
	47
	59
	83
	107
	167
	179
	227
	263
	347
	359
	383
	467
	479
	503
	563
	587
	719
	839
	863
	887
	983



## FSharp Solution

	> let isprime (n:int) =                                                             
	-     let n = bigint(n)
	-     let rec check i =
	-         i > n/2I || (n % i <> 0I && check (i + 1I))
	-     check 2I
	-- ;;


	> let safeprimes(n:int) =
	-     [ 2..n ] |> List.filter (fun x ->isprime(x) && isprime(1+2*x) )
	- ;;

	val safeprimes : n:int -> int list

	> safeprimes 100 ;;
	val it : int list = [2; 3; 5; 11; 23; 29; 41; 53; 83; 89]
	> safeprimes 1000 ;;
	val it : int list =
	  [2; 3; 5; 11; 23; 29; 41; 53; 83; 89; 113; 131; 173; 179; 191; 233; 239; 251;
	   281; 293; 359; 419; 431; 443; 491; 509; 593; 641; 653; 659; 683; 719; 743;
	   761; 809; 911; 953]

# Title

Typo Maker

## Difficulty

Easy

## Tags

word play

## Description

Typos are great fun, and often follow a common pattern - keys next to eachother, doubled or omitted characters, and transpositions. Can you write a program to generate common typos? If so, you could be on your way to typo-squatting in DNS!

Common typos fall into a few different categories:

* Skip letter
* Double letters
* Reverse (transpose) letters
* Skip spaces
* Missed key
* Inserted key

For this challege, when you think about neighbor keys, assume a [QWERTY keyboard layout] (http://en.wikipedia.org/wiki/QWERTY).

## Input Description

You'll be given a word, one per line, and asked to generate typos for it. Example:

    typo

## Output Description

Your program should emit the word mangled into its various formats using the above categories. Our example:

    tpo
    ypo
    typ
    ttypo
    tyypo
    typpo
    typoo
    tyop
    ytpo
    toyp
    rypo
    yypo
    ttpo
    tupo
    ty[o
    tyoo
    typi
    typp
    trypo
    rtypo
    ... (omitted for brevity)

## Input Description

    Facebook
    Google
    Global thermonuclear war
    Dead as a doornail
    Britney Spears
    Cappuccino
    Everybody to the limit

# Title  

Wedderburn-Etherington Sequence

## Difficulty 

Easy

## Tags

integer sequence, infinite sequence, math, number theory

## Description

The Wedderburn-Etherington numbers are an integer sequence named for Ivor Malcolm Haddon Etherington and Joseph Wedderburn that can be used to count certain kinds of binary trees. The first few numbers in the sequence are

    0, 1, 1, 1, 2, 3, 6, 11, 23, 46, 98, 207, 451 ...
    
The Wedderburnâ–Etherington numbers may be calculated using the recurrence relation (in LaTeX notation)

    a_{2n-1} = \sum\limits{i=1}^n-1 a_ia_{2n-i-1}

    a_{2n} = a_n(a_n+1)/2 + \sum\limits{i=1}^n-1 a_ia_{2n-i}

See Wikipedia for more on the [Wedderburn-Etherington number](http://en.wikipedia.org/wiki/Wedderburn%E2%80%93Etherington_number) and its uses. 
 
## Input Description

You'll be given a number *n*, the number in the sequence to generate.

## Output Description

A sequence of integers in the Wedderburn-Etherington sequence up to position *n*.

# Title

XOR Multiplication

## Difficulty

Easy

## Tags

math, multiplication, XOR

## Description

One way to think about bitwise *addition* (using the symbol `^`) as binary addition without carrying the extra bits:

	   101   5
	^ 1001   9
	  ----  
	  1100  12

	  5^9=12

So let's define XOR multiplcation (we'll use the symbol `@`) in the same way, the addition step doesn't carry:

	     1110  14
	   @ 1101  13
	    -----
	     1110
	       0
	   1110
	^ 1110 
	  ------
	  1000110  70

	  14@13=70

For this challenge you'll get two non-negative integers as input and output or print their XOR-product, using both binary and decimal notation.

## Input Description

You'll be given two integers per line. Example:

	5 9

## Output Description

You should emit the equation showing the XOR multiplcation result:

	5@9=12

## Challenge Input

	1 2
	9 0
	6 1
	3 3
	2 5
	7 9
	13 11
	5 17
	14 13
	19 1
	63 63

## Challenge Output

	1@2=2
	9@0=0
	6@1=6
	3@3=5
	2@5=10
	7@9=63
	13@11=127
	5@17=85
	14@13=70
	19@1=19
	63@63=1365

