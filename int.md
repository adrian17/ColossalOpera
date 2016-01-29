# Title

Where Should Grandma's House Go?

## Difficulty

Intermediate

## Tags

geometry, closest pair

## Description

My grandmother and I are moving to a new neighborhood. The houses haven't yet been built, but the map has been drawn. We'd like to live as close together as possible. She makes some outstanding cookies, and I love visiting her house on the weekend for delicious meals - my grandmother is probably my favorite cook!

Please help us find the two lots that are closest together so we can build our houses as soon as possible. 

## Example Input

You'll be given a single integer, *N*, on a line, then *N* lines of Cartesian coordinates of (x,y) pairs. Example:

    16 
    (6.422011725438139, 5.833206713226367)
    (3.154480546252892, 4.063265532639129)
    (8.894562467908552, 0.3522346393034437)
    (6.004788746281089, 7.071213090379764)
    (8.104623252768594, 9.194871763484924)
    (9.634479418727688, 4.005338324547684)
    (6.743779037952768, 0.7913485528735764)
    (5.560341970499806, 9.270388445393506)
    (4.67281620242621, 8.459931892672067)
    (0.30104230919622, 9.406899285442249)
    (6.625930036636377, 6.084986606308885)
    (9.03069534561186, 2.3737246966612515)
    (9.3632392904531, 1.8014711293897012)
    (2.6739636897837915, 1.6220708577223641)
    (4.766674944433654, 1.9455404764480477)
    (7.438388978141802, 6.053689746381798)

## Example Output

Your program should emit the two points of (x,y) pairs that are closest together. Example:

    (6.625930036636377,6.084986606308885) (6.422011725438139,5.833206713226367)

## Challenge Input

    100
    (5.558305599411531, 4.8600305440370475)
    (7.817278884196744, 0.8355602049697197)
    (0.9124479406145247, 9.989524754727917)
    (8.30121530830896, 5.0088455259181615)
    (3.8676289528099304, 2.7265254619302493)
    (8.312363982415834, 6.428977658434681)
    (2.0716308507467573, 4.39709962385545)
    (4.121324567374094, 2.7272406843892005)
    (9.545656436023116, 2.874375810978397)
    (2.331392166597921, 0.7611494627499826)
    (4.241235371900736, 5.54066919094827)
    (3.521595862125549, 6.799892867281735)
    (7.496600142701988, 9.617336260521792)
    (2.5292596863427796, 4.6514954819640035)
    (8.9365560770944, 8.089768281770253)
    (8.342815293157892, 1.3117716484643926)
    (6.358587371849396, 0.7548433481891659)
    (1.9085858694489566, 1.2548184477302327)
    (4.104650644200331, 5.1772760616934645)
    (6.532092345214275, 8.25365480511137)
    (1.4484096875115393, 4.389832854018496)
    (9.685268864302843, 5.7247619715577915)
    (7.277982280818066, 3.268128640986726)
    (2.1556558331381104, 7.440500993648994)
    (5.594320635675139, 6.636750073337665)
    (2.960669091428545, 5.113509430176043)
    (4.568135934707252, 8.89014754737183)
    (4.911111477474849, 2.1025489963335673)
    (8.756483469153423, 1.8018956531996244)
    (1.2275680076218365, 4.523940697190396)
    (4.290558055568554, 5.400885500781402)
    (8.732488819663526, 8.356454134269345)
    (6.180496817849347, 6.679672206972223)
    (1.0980556346150605, 9.200474664842345)
    (6.98003484966205, 8.22081445865494)
    (1.3008030292739836, 2.3910813486547466)
    (0.8176167873315643, 3.664910265751047)
    (4.707575761419376, 8.48393210654012)
    (2.574624846075059, 6.638825467263861)
    (0.5055608733353167, 8.040212389937379)
    (3.905281319431256, 6.158362777150526)
    (6.517523776426172, 6.758027776767626)
    (6.946135743246488, 2.245153765579998)
    (6.797442280386309, 7.70803829544593)
    (0.5188505776214936, 0.1909838711203915)
    (7.896980640851306, 4.366680008699691)
    (1.2404651962738256, 5.963706923183244)
    (7.9085889544911945, 3.501907219426883)
    (4.829123686370425, 6.116328436853205)
    (8.703429477346157, 2.494600359615746)
    (6.9851545945688684, 9.241431992924019)
    (1.8865556630758573, 0.14671871143506765)
    (4.237855680926536, 1.4775578026826663)
    (3.8562761635286913, 6.487067768929168)
    (5.8278084663109375, 5.98913080157908)
    (8.744913811001137, 8.208176389217819)
    (1.1945941254992176, 5.832127086137903)
    (4.311291521846311, 7.670993787538297)
    (4.403231327756983, 6.027425952358197)
    (8.496020365319831, 5.059922514308242)
    (5.333978668303457, 5.698128530439982)
    (9.098629270413424, 6.8347773139334675)
    (7.031840521893548, 6.705327830885423)
    (9.409904685404713, 6.884659612909266)
    (4.750529413428252, 7.393395242301189)
    (6.502387440286758, 7.5351527902895965)
    (7.511382341946669, 6.768903823121008)
    (7.508240643932754, 6.556840482703067)
    (6.997352867756065, 0.9269648538573272)
    (0.9422251775272161, 5.103590106844054)
    (0.5527353428303805, 8.586911807313664)
    (9.631339754852618, 2.6552168069445736)
    (5.226984134025007, 2.8741061109013555)
    (2.9325669592417802, 5.951638270812146)
    (9.589378643660075, 3.2262646648108895)
    (1.090723228724918, 1.3998921986217283)
    (8.364721356909339, 3.2254754023019148)
    (0.7334897173512944, 3.8345650175295143)
    (9.715154631802577, 2.153901162825511)
    (8.737338862432715, 0.9353297864316323)
    (3.9069371008200218, 7.486556673108142)
    (7.088972421888375, 9.338974320116852)
    (0.5043493283135492, 5.676095496775785)
    (8.987516578950164, 2.500145166324793)
    (2.1882275188267752, 6.703167722044271)
    (8.563374867122342, 0.0034374051899066504)
    (7.22673935541426, 0.7821487848811326)
    (5.305665745194435, 5.6162850431000875)
    (3.7993107636948267, 1.3471479136817943)
    (2.0126321055951077, 1.6452950898125662)
    (7.370179253675236, 3.631316127256432)
    (1.9031447730739726, 8.674383934440593)
    (8.415067672112773, 1.6727089997072297)
    (6.013170692981694, 7.931049747961199)
    (0.9207317960126238, 0.17671002743311348)
    (3.534715814303925, 5.890641491546489)
    (0.611360975385955, 2.9432460366653213)
    (3.94890493411447, 6.248368129219131)
    (8.358501795899047, 4.655648268959565)
    (3.597211873999991, 7.184515265663337)

## Challenge Output

    (5.305665745194435,5.6162850431000875) (5.333978668303457,5.698128530439982)


## Scala Solution

    def parseInput(text:String): List[(Double, Double)] = {
        val pat = """\d\.\d+""".r
        def loop(text:List[String], sofar:List[(Double, Double)]): List[(Double, Double)] = {
            text match {
                case Nil => sofar
                case x::xs => { val m = pat.findAllMatchIn(x).toList
                                loop(xs, (m(0).toString.toDouble, m(1).toString.toDouble)::sofar)
                }
            }
        }
        loop(text.split("\n").toList, List())
    }

    def solution(text:String): List[(Double, Double)] = {
        val points = parseInput(text)
        def distance(p1:(Double, Double), p2:(Double, Double)): Double = 
            scala.math.sqrt((p1._1-p2._1)*(p1._1-p2._1) + (p1._2-p2._2)*(p1._2-p2._2))
        points.combinations(2).map(x => (distance(x(0), x(1)), x)).toList.sortBy(_._1).head._2
    }

# Title

Connect Four

## Difficulty

Intermediate

## Tags

game, connect four, strategy

## Description

Connect Four is a two-player connection game in which the players first choose a color and then take turns dropping colored discs (like checkers) from the top into a seven-column, six-row vertically suspended grid. The pieces fall straight down, occupying the next available space within the column. The objective of the game is to connect four of one's own discs of the same color next to each other vertically, horizontally, or diagonally before your opponent. 

A fun discourse on winning strategies at Connect Four is found [here] (http://www.pomakis.com/c4/expert_play.html). 

In this challenge you'll be given a set of game moves and then be asked to figure out who won and when (there are more moves than needed). 

For sake of consistency, this is how we'll organize the board, rows as numbers *1-6* descending and columns as letters *a-g*.  This was chosen to make the first moves in row 1.

	    a b c d e f g
	6   . . . . . . . 
	5   . . . . . . . 
	4   . . . . . . . 
	3   . . . . . . . 
	2   . . . . . . . 
	1   . . . . . . . 

## Input Description

You'll be given a game with a list of moves. Moves will be given by *column only* (gotta make this challenging somehow). We'll call the players *X* and *O*, with *X* going first using columns designated with an uppercase letter and *O* going second and moves designated with the lowercase letter of the column they chose. 

	C  d
	D  d
	D  b
	C  f
	C  c
	B  a
	A  d
	G  e
	E  g
	
## Output Description

Your program should output the player ID who won, what move they won, and what final position (column and row) won. Optionally list the four pieces they used to win.

	X won at move 7 (with A2 B2 C2 D2)
	
## Challenge Input

	D  d
	D  c    
	C  c    
	C  c
	G  f
	F  d
	F  f
	D  f
	A  a
	E  b
	E  e
	B  g
	G  g
	B  a

## Challenge Output

	X won at move 13 (with D3 E3 F3 G3)


# Title

Detecting Four Sided Figures

## Difficulty

Intermediate

## Tags

ASCII art, detecting boxes

## Description

I got this idea from the [Mensa quiz](https://www.mensa.org/workout/questions), specifically question 17. It's a basic scanning challenge: can your program detect and count intersecting bounding boxes from an ASCII art input? A four-sided figure is an ASCII art rectangle. Note that it can overlap another one, as long as the four corners are fully connected. 

## Formal Inputs &amp; Outputs

Your program will be given an ASCII art chart showing boxes and lines. `-` and `|` characters indicate horizontal and vertical lines, respectively, while "+" characters show intersections.

Your program should emit an integer, *N*, of how many unique four sided figures it found. Rectangles and squares both count. 

## Example Input

                                    +----+
                                    |    |
    +-------------------------+-----+----+
    |                         |     |    |
    |     +-------------------+-----+    |
    |     |                   |     |    |
    |     |                   |     |    |
    +-----+-------------------+-----+    |
          |                   |     |    |
          |                   |     |    |
          +-------------------+-----+    |
                              |     |    |
                              |     |    |
                              |     |    |
                              +-----+----+
                                    |    |
                                    |    |
                                    |    |
                                    +----+

## Example Output

For the above diagram your program should find 25 four sided figures. 

## Challenge Input

This one adds a bit to the complexity by throwing in some three sided figures. This should catch more naive implementations.

                  +-----------+
                  |           |
                  |           |
                  |           |
                  |           |              
    +-------------+-----------+-------------+
    |             |           |             |
    |             |           |             |
    |             |           |             |
    |             |           |             |
    +-------------+-----------+-------------+
                  |           |
                  |           |
                  |           |
                  |           |              
    +-------------+-----------+-------------+
    |             |           |             |
    |             |           |             |
    |             |           |             |
    |             |           |             |
    +-------------+-----------+-------------+
                  |           |
                  |           |
                  |           |
                  |           |              
                  +-----------+

## Challenge Output

For the challenge diagram your program should find 25 four sided figures. 


# Title 

Bioinformatics 2: DNA Restriction Enzymes

## Difficulty

Intermediate

## Tags

DNA, bioinformatics

## Description

Continuing with our bioinformatics theme today. If you like these sorts of problems, I encourage you to check out [Project Rosalind](http://rosalind.info/) (their site seems back up).

Restriction enzymes are DNA-cutting enzymes found in bacteria (and harvested from them for use). Because they cut within the molecule, they are often called restriction endonucleases. In order to be able to sequence DNA, it is first necessary to cut it into smaller fragments. For precise molecular biology work, what is needed is a way to cleave the DNA molecule at a few specifically-located sites so that a small set of homogeneous fragments are produced. The tools for this are the restriction endonucleases. The rarer the site it recognizes, the smaller the number of pieces produced by a given restriction endonuclease.

For more information on how these enzymes work, including a great visualization of how they cut, have a look [here](http://users.rcn.com/jkimball.ma.ultranet/BiologyPages/R/RestrictionEnzymes.html).

These enzymes can cleave the DNA at a site that leaves both strands the same length. This is called a "blunt" end because of this and can be visualized like this:

	5'-GG  +CC-3'
	3'-CC   GG-5'

Other DNA restriction enzymes cleave the ends at different lengths, although it's symmetrical about the central axis. These are called "sticky" ends, and here's a simple visualization of one of those cuts:

	5'-ATCTGACT      + GATGCGTATGCT-3'
	3'-TAGACTGACTACG        CATACGA-5'
	
In both cases the two strands are cut at a point of symmetry (the upper and lower strands are symmetrical if rotated). 

Today your challenge is to write a program that can recognize the locations where various enzymes will cut DNA. 

## Input

You'll be given a list of DNA restriction enzymes and their recognition site and where the cut occurs. The input will be structured as enzyme name, if the enzyme makes a "sticky" or "blunt" end cut, the DNA recognition sequence and the position of the cut marked with a caret ("\^"). For the sticky ends, you should assume the mirror image of the complementary strand gets the same cut, leaving one of the strands to overhang (hence it's "sticky"). 

	BamHI sticky G^GATCC
	HaeIII blunt GG^CC
	HindIII sticky A^AGCTT

Then you'll be given a DNA sequence and be asked to cut it with the listed enzymes. For sake of convenience, the DNA sequence is broken into blocks of 10 bases at a time and in lengths of 6 blocks per row. You should merge these together and drop the first column of digits.

This sequence was taken from the genome of [*Enterobacteria phage phiX174 sensu lato*](http://www.genome.jp/dbget-bin/www_bget?refseq+NC_001422) and modified for this challenge. 

	  1 gagttttatc gcttccatga cgcagaagtt aacactttcg gatatttctg atgagtcgaa
	 61 aaattatctt gataaagcag gaattactac tgcttgttta cgaattaaat cgaagtggac
	121 tgctggcgga aaatgagaaa attcgaccta tccttgcgca gctcgagaag ctcttacttt
	181 gcgacctttc gccatcaact aacgattctg tcaaaaactg acgcgttgga tgaggagaag
	241 tggcttaata tgcttggcac gttcgtcaag gactggttta gatatgagtc acattttgtt
	301 catggtagag attctcttgt tgacatttta aaagagcgtg gattactatc tgagtccgat
	361 gctgttcaac cactaatagg taagaaatca tgagtcaagt tactgaacaa tccgtacgtt
	421 tccagaccgc tttggcctct attaagctta ttcaggcttc tgccgttttg gatttaaccg
	481 aagatgattt cgattttctg acgagtaaca aagtttggat ccctactgac cgctctcgtg
	541 ctcgtcgctg cgttgaggct tgcgtttatg gtacgctgga ctttgtggga taccctcgct
	601 ttcctgctcc tgttgagttt attgctgccg tcaaagctta ttatgttcat cccgtcaaca
	661 ttcaaacggc ctgtctcatc atggaaggcg ctgaatttac ggaaaacatt attaatggcg
	721 tcgagcgtcc ggttaaagcc gctgaattgt tcgcgtttac cttgcgtgta cgcgcaggaa
	781 acactgacgt tcttactgac gcagaagaaa acgtgcgtca aaaattacgt gcggaaggag
	841 tgatgtaatg tctaaaggta aaaaacgttc tggcgctcgc cctggtcgtc cgcagccgtt

## Output

Your program should emit the name of the enzyme, the cut positions for that enzyme, and the contextualized cut. For the above the solution would be:

	BamHI 517 agttt[g gatcc]ctactg
	HaeIII 435 gcttt[gg cc]tctattaa
	HaeIII 669 caaac[gg cc]tgtctcat
	HindIII 444 ctatt[a agctt]attcag
	HindIII 634 cgtca[a agctt]attatg
	
## Bonus

Write some code that identifies any and all symmetrical points along the DNA sequence where an enzyme (not just the three listed) could cut. These should be even-length palindromes between 4 and 10 bases long. 
	


## Scala Solution

	object Intermediate207 {
	  def main(argc:Int, argv:Array[String]) = {
	    val gene = """  1 gagttttatc gcttccatga cgcagaagtt aacactttcg gatatttctg atgagtcgaa
	     61 aaattatctt gataaagcag gaattactac tgcttgttta cgaattaaat cgaagtggac
	    121 tgctggcgga aaatgagaaa attcgaccta tccttgcgca gctcgagaag ctcttacttt
	    181 gcgacctttc gccatcaact aacgattctg tcaaaaactg acgcgttgga tgaggagaag
	    241 tggcttaata tgcttggcac gttcgtcaag gactggttta gatatgagtc acattttgtt
	    301 catggtagag attctcttgt tgacatttta aaagagcgtg gattactatc tgagtccgat
	    361 gctgttcaac cactaatagg taagaaatca tgagtcaagt tactgaacaa tccgtacgtt
	    421 tccagaccgc tttggcctct attaagctta ttcaggcttc tgccgttttg gatttaaccg
	    481 aagatgattt cgattttctg acgagtaaca aagtttggat ccctactgac cgctctcgtg
	    541 ctcgtcgctg cgttgaggct tgcgtttatg gtacgctgga ctttgtggga taccctcgct
	    601 ttcctgctcc tgttgagttt attgctgccg tcaaagctta ttatgttcat cccgtcaaca
	    661 ttcaaacggc ctgtctcatc atggaaggcg ctgaatttac ggaaaacatt attaatggcg
	    721 tcgagcgtcc ggttaaagcc gctgaattgt tcgcgtttac cttgcgtgta cgcgcaggaa
	    781 acactgacgt tcttactgac gcagaagaaa acgtgcgtca aaaattacgt gcggaaggag
	    841 tgatgtaatg tctaaaggta aaaaacgttc tggcgctcgc cctggtcgtc cgcagccgtt""".replaceAll(" ", "").replaceAll("[0-9]", "").replaceAll("\n", "")

	    val enzymes = List(("BamHI", "ggatcc", 1),
	                       ("HaeIII", "ggcc", 2),
	                       ("HindIII", "aagctt", 1))

	    for (e <- enzymes) {
	      val (name, pat, pos) = e
	      def loop(off:Int, name:String, pat:String, pos:Int): String = {
	        gene.indexOf(pat, off) match {
	          case -1 => ""
	          case _  => val mark = "[" + pat.substring(0,pos) + " " + pat.substring(pos, pat.length) + "]"
	                     val seq = gene.substring(gene.indexOf(pat, off)-5, gene.indexOf(pat, off)+12).replace(pat, mark)
	                     val offset = gene.indexOf(pat, off)+pos
	                     println(name + " " + offset + " " + seq)
	                     loop(offset+2, name, pat, pos)
	        }
	      }
	      loop(0, name, pat, pos)
	    }
	  }
	}
# Title 

Maximizing Crop Irrigation

## Difficulty

Intermediate

## Tags

geometry

## Description

You run a farm which isn't doing so well. Your crops that you planted aren't coming up, and your bills are bigger than your expected proceeds. So, you have to conserve water and focus instead on the plants that are growing. You have a center pivot watering system which has a rotating sprinkler around a central pivot, creating a circular watered area. For this challenge, you just have to decide where to locate it based on this year's crops. 

Some notes:

* Because this is a simple grid, we're only dealing with integers in this challenge. 
* For partially covered squares, round down: the sprinkler covers the crop if the distance from the sprinkler is less than or equal to the sprinklers radius. 
* If you place the sprinkler on a square with a crop, you destroy the crop so handle accordingly (e.g. deduct 1 from the calculation). 
* If in the event you find two or more placements that yield identical scores, pick any one of them (or even emit them all if you so choose), this is entirely possible. 

## Input Description

You'll be given three integers (h w r) which correspond to the number of rows (h) and columns (w) for the ASCII map (respectively) and then the radius (r) of the watering sprinkler. The ASCII map will have a "." for no crop planted and an "x" for a growing crop.

## Output Description

You should emit the coordinates (0-indexed) of the row and column showing where to place the center of the sprinkler. Your coordinates should be integers. 

## Challenge Input

    51 91 9
    ......x...x....x............x............x.................................x...............
    .........x...........x...................x.....x...........xx.............x................
    ...........x.................x.x............x..........................x................x..
    ......x...x.....................x.....x....x.........x......x.......x...x..................
    .x...x.....x................xx...........................x.....xx.....x............x.......
    .....xx.......x..x........x.............xx........x.......x.....................x.......x..
    ...x..x.x..x......x..............................................................x...x.....
    ........x..x......x......x...x.x....x.......x........x..x...........x.x...x..........xx....
    ...............x.x....x...........x......x.............x..........................x........
    ...................x........x..............................................................
    ..x.x.....................................x..x.x......x......x.............................
    ......x.............................................................................x..x...
    ......x....x...............x...............................................................
    ............x.............x.............................x...............x................x.
    ..xx........xx............x...x......................x.....................................
    ........x........xx..............x.....................x.x.......x........................x
    .......x....................xx.............................................................
    ............x...x.........x...xx...............x...........................................
    .............................x...............xx..x...........x....x........x...x.......x.x.
    ..........x.......................x.....................................x..................
    ...xx..x.x..................x........................x.....................x..x.......x....
    .............xx..........x...............x......................x.........x.........x....x.
    ...............................x.....................x.x...................................
    ...................x....x............................x...x.......x.............x....x.x....
    .x.xx........................x...................................x.....x.......xx..........
    .......x...................................................................................
    .........x.....x.................x.................x...x.......x..................x........
    .......x................x.x...................................x...xx....x.....x...x........
    ..............................................x..................x.........................
    ............................x........x.......x............................................x
    ..x.............x.....x...............x............x...x....x...x..........................
    .......................xx.................x...................x...................x.......x
    .x.x.............x....x.................................x...........x..x..........x.....x..
    ...x..x..x......................x...........x..........x.............xxx....x..........x...
    ...........................................................x...............................
    x......x.....x................x...............x....................................x.......
    ..x...........................x............x..........x....x..............................x
    .......................x.......xx...............x...x.x.................x..x............x..
    x................x.......x........x.............................x.x.x...................x.x
    .......................x...x.......................................................x.......
    .x..................x.....x..........................................x...........x.........
    .x...................x........x.................x..........xx..................x..x........
    .x..........x...x...........................x.x....................x..x.......x............
    .............x...x..................x................x..x.x.....xxx..x...xx..x.............
    .x...................x.x....x...x.................x.............................x.....x....
    ......................x.x........x...........x...................................x......x..
    ................x....................................x....x....x......x..............x..x..
    ......x.........................................x..x......x.x.......x......................
    .x..............................x..........x.x....x.................x......................
    x..x...........x..x.x...x..........................................x..............xx.......
    ..xx......x.......x.x.................x......................................x.............

## Bonus

Emit the map with the circle your program calculated drawn. 

## Credit

This challenge was inspired by a question on IRC from user whatiswronghere. 

# Title

Packing a Sentence in a Box

## Difficulty 

Intermediate

## Tags

word games

## Description

You're moving, and you have a bunch of sentences to pack up. To accomplish this, you'll be using a small program you should write to pack these sentences efficiently into a box for shipping. Leave no unused space, you have a lot of sentences to pack and you don't want to waste precious shipping space. 

For this challenge you're free to choose any legal dimensions of a rectangle, and you're free to start in any position you wish. Your program (and thus your output) should walk the grid to adjacent squares using only left, right, up, down (no diagonal moves allowed).

## Input

You'll be given a sentence to pack into a box

	EVERYWHERE IS WITHIN WALKING DISTANCE IF YOU HAVE THE TIME

## Output

Your program should emit the starting position (column and row, 1-indexed) for the sentence, and then the box with the sentence packed into it. You can chose your own box dimensions. The above example is a 49 character sentence (minus spaces), so that's a 7x7 box. Here's one possible solution:

	4 4
	E       T       I       M       E       D       I
	H       W       S       I       E       G       S
	T       I       E       V       R       N       T
	E       T       R       E       E       I       A
	V       H       Y       W       H       K       N
	A       I       N       W       A       L       C
	H       U       O       Y       F       I       E

## Challenge Input

	IT IS RAINING CATS AND DOGS OUT THERE

## Challenge Output

Here's one possible solution

	1 1
	I       T       I       N       I
	E       I       A       G       N
	R       S       R       C       A
	E       G       O       D       T
	H       S       O       D       S
	T       T       U       N       A


# Title 

Generating Polyominoes

## Difficulty

Intermediate

## Tags

polyomino

## Description

A polyomino is a collection of cells (equal-sized squares) which are connected, that is, each cell shares a border with another one. Think about tetris pieces, those would be tetrominoes - they each have four squares, and there are 5 unique combinations of their squares into unique shapes. Polyominoes are considered equivalent if they can be made to look identical if they are rotated or flipped. For additional background on polyominoes see [this link](http://home.adelphi.edu/~stemkoski/mathematrix/polys.html). 

## Input Description

You will be given a single integer, this is the polyomino order to calculate and draw. Example:

    4

## Formal Output Description

Draw the complete set of unique polyominoes in ASCII art. Example output:

    ##
    ##

    ##
     ##
 
    #
    #
    #
    #

    #
    #
    ##

    #
    ##
    #


## Challenge Input

    6

## Challenge Input Solution

    ######

    #
    #####

     #
    #####

      #
    #####

    ##
     ####

    ##
    ####

    # #
    ####

    #  #
    ####

     ##
    ####

    #
    #
    ####

     #
     #
    ####

    #
    ####
    #

    #
    ####
     #

    #
    ####
      #

    #
    ####
       #

     #
    ####
      #

     #
    ####
     #

     #
    ###
    #
    #

     #
    ##
    #
    ##

     #
     #
    ##
    #
    #

     #
    ##
    ##
    #

    ##
    ##
    ##

      #
    ###
     #
     #

    ###
     ##
     #

      #
     ##
    ###
     #

      #
    ###
    #
    #

     ##
    ##
    #
    #

    ###
    # #
    #

    # #
    ###
    #

    # #
    ###
     #

     ##
     #
    ##
    #

    #
    ##
    ###

     #
    ###
    ##

      #
    ###
    ##

      #
     ##
    ##
    #

# Title 

Set Game Solver

## Difficulty

Intermediate

## Tags

game, set

## Description

Set is a card game where each card is defined by a combination of four attributes: shape (diamond, oval, or squiggle), color (red, purple, green), number (one, two, or three elements), and shading (open, hatched, or filled). The object of the game is to find sets in the 12 cards drawn at a time that are distinct in every way or identical in just one way (e.g. all of the same color). The rules of Set are summarized by: If you can sort a group of three cards into "Two of ____ and one of _____," then it is not a set.

See the [Wikipedia entry](http://en.wikipedia.org/wiki/Set_(game)) for more background. 

## Input Description

A game will present 12 cards described with four characters for shape, color, number, and shading: (D)iamond, (O)val, (S)quiggle; (R)ed, (P)urple, (G)reen; (1), (2), or (3); and (O)pen, (H)atched, (F)illed.

## Output Description

Your program should list all of the possible sets in the game of 12 cards in sets of triplets.

## Example Input

        SP3F
        DP3O
        DR2F
        SP3H
        DG3O
        SR1H
        SG2O
        SP1F
        SP3O
        OR3O
        OR3H
        OR2H

## Example Output

        SP3F SR1H SG2O
        SP3F DG3O OR3H
        SP3F SP3H SP3O
        DR2F SR1H OR3O

## Challenge Input

        DP2H
        DP1F
        SR2F
        SP1O
        OG3F
        SP3H
        OR2O
        SG3O
        DG2H
        DR2H
        DR1O
        DR3O

## Challenge Output

        DP1F SR2F OG3F
        DP2H DG2H DR2H 
        DP1F DG2H DR3O 
        SR2F OR2O DR2H 
        SP1O OG3F DR2H 
        OG3F SP3H DR3O

## Scala Solution

    // solves the game "set" when given a list of cards (e.g. the board)
    // cards look like "OR3O" for shape, color, count, and style

    var sets = Source.
                  fromFile("cards").
                  getLines().
                  map( x => x.toCharArray.toList ).
                  toList.
                  combinations(3).
                  toList

    def compare3(a:Char,b:Char,c:Char): Boolean = { 
      (a == b && b == c && a == c) || 
      ( a != b && b != c && a != c) 
    }

    def look(set:List[List[Char]]): Boolean = { 
      for(pos <- Range(0,4)) { 
        var a = set.apply(0).apply(pos)
        var b = set.apply(1).apply(pos)
        var c = set.apply(2).apply(pos)
        compare3(a,b,c) match { 
          case false => return false
          case _ => 
        }
      }
      return true
    }

    println(sets.
      filter( x => look(x)).
      map(x => x.map(y => y.mkString))
    )

# Title

Red Squiggles

## Difficulty

Intermediate


## Tags

spell check, word games

## Description

Many of us are familiar with real-time spell checkers in our text editors. Two of the more popular editors Microsoft Word or Google Docs will insert a red squiggly line under a word as it's typed incorrectly to indicate you have a problem. (Back in my day you had to run spell check *after* the fact, and that was an extra feature you paid for. Real time was just a dream.) The lookup in a dictionary is dynamic. At some point, the error occurs and the number of possible words that it could be goes to zero. 

For example, take the word `foobar`. Up until `foo` it could be words like `foot`, `fool`, `food`, etc. But once I type the `b` it's appearant that no words could possibly match, and Word throws a red squiggly line. 

Your challenge today is to implement a real time spell checker and indicate where you would throw the red squiggle. For your dictionary use `/usr/share/dict/words` or the always useful `enable1.txt`. 

## Input Description

You'll be given words, one per line. Examples:

    foobar
    garbgae

## Output Description

Your program should emit an indicator for where you would flag the word as mispelled. Examples:

    foob<ar
    garbg<ae

Here the `<` indicates "This is the start of the mispelling". If the word is spelled correctly, indicate so.

## Challenge Input

    accomodate
    acknowlegement
    arguemint 
    comitmment 
    deductabel
    depindant
    existanse
    forworde
    herrass
    inadvartent
    judgemant 
    ocurrance
    parogative
    suparseed

## Challenge Output

    accomo<date
    acknowleg<ement
    arguem<int
    comitm<ment
    deducta<bel
    depin<dant
    existan<se
    forworde<
    herra<ss
    inadva<rtent
    judgem<ant
    ocur<rance
    parog<ative
    supars<eed

## Bonus

Include some suggested replacement words using any strategy you wish (edit distance, for example, or where you are in your data structure if you're using a trie). 

## Scala Solution

    def spellcheck(word:String):String = {
        def loop(word:String, sofar:Int, matches:List[String]): String = {
            if ((word.length == sofar) && (matches.contains(word))) {return word + " is spelled correctly"}
            matches match {
                case Nil => word.slice(0, sofar-1) + "<" + word.slice(sofar-1, word.length)
                case _   => loop(word, sofar+1, matches.filter(_.startsWith(word.slice(0, sofar))))
            }
        }
        loop(word, 1, scala.io.Source.fromFile("/usr/share/dict/words").getLines.toList.filter(_.startsWith(word.slice(0, 1))))
    }

## CSharp Solution

    using System;
    using System.IO;

    class RedSquiggles {
        public static void Main() {
            string[] words = File.ReadAllLines("/usr/share/dict/words");
            string[] input = File.ReadAllLines("red_squiggles.txt");
            HashSet<string> wordlist = new HashSet<string>();
            foreach (string w in words) {
                for (int i = 1; i <= w.Length; i++) {
                    wordlist.Add(w.Substring(0, i));
                }
            }
            foreach (string word in input) {
                for (int i = 1; i < word.Length; i++) {
                    if (!wordlist.Contains(word.Substring(0, i))) {
                        Console.WriteLine(word.Substring(0, i) + "<" + word.Substring(i, word.Length-i));
                        break;
                    }
                }
            }
        }
    }

# Title

Simple Stream Cipher

## Difficulty

Intermediate

## Tags

random number, cipher, encryption, RC4

## Description

Stream ciphers like RC4 operate very simply: they have a strong psuedo-random number generator that takes a key and produces a sequence of psuedo-random bytes, which is then XORed against the plaintext to provide the cipher text. The strength of the cipher then depends on the strength of the generated stream of bytes - its randomness (or lack thereof) can lead to the text being recoverable.

## Challenge Description

Your program should have the following components:

* A psuedo-random number generator which takes a key and produces a consistent stream of psuedo-random bytes. A very simple one to implement is the [linear congruential generator (LCG)](https://en.wikipedia.org/wiki/Linear_congruential_generator )
* An "encrypt" function (or method) that takes a key and a plaintext and returns a ciphertext.
* A "decrypt" function (or method) that takes a key and the ciphertext and returns the plaintext. 

## Python Solution

    import sys
 
    # def xor(b, s): return "".join(map(lambda x: chr(x^b), map(lambda x: ord(x), s)))
    def xor(b, s): return map(lambda x: x^b, map(lambda x: ord(x), s))
 
    M = sys.maxsize
    M = 128
 
    def lcg(m, a, c, x): return (a*x + c) % m
 
    def enc(msg, seed):
        res = []
        for ch in msg:
            res.extend(xor(lcg(M, 1664525, 1013904223, seed), ch))
            seed = lcg(M, 1664525, 1013904223, seed)
        return res
 
    def dec(msg, seed):
        res = []
        for ch in msg:
            res.append(lcg(M, 1664525, 1013904223, seed)^ch)
            seed = lcg(M, 1664525, 1013904223, seed)
        return ''.join(map(chr, res))

## Scala Solution

    def lcg(m:Int, a:Int, c:Int, x:Int)=  (a*x + c) % m

    def enc(s:String, key:Int): List[Int] = 
        (0 to s.length).toList.foldLeft[List[Int]](List()){(acc, x) => if (acc.isEmpty) {List(lcg(128,664525, 1013904223,key))} else {lcg(128,664525, 1013904223,acc.head)::acc}}.zip(s.toCharArray).map(x => x._1^x._2)

    def dec(msg:List[Int], key:Int): String = 
        (0 to msg.length).toList.foldLeft[List[Int]](List()){(acc, x) => if (acc.isEmpty) {List(lcg(128,664525, 1013904223,key))} else {lcg(128,664525, 1013904223,acc.head)::acc}}.zip(msg).map(x => x._1^x._2).map(_.toChar).mkString

# Title

Use a Web Service to Find Bitcoin Prices

## Difficulty

Intermediate

## Tags

Bitcoin, web API, web programming

## Desciption

Modern web services are the core of the net. One website can leverage 1 or more other sites for rich data and mashups. Some notable examples include the Google maps API which has been layered with crime data, bus schedule apps, and more. 

For this challenge, you'll be asked to implement a call to a simple RESTful web API for Bitcoin pricing. This API was chosen because it's freely available and doesn't require any signup or an API key. Other APIs work in much the same way but often require API keys for use. 

The Bitcoin API we're using is [documented](http://bitcoincharts.com/about/markets-api/) Specifically we're interested in the `/v1/trades.csv` endpoint. 

Your native code API (e.g. the code you write and run locally) should take the following parameters:

- The short name of the bitcoin market. Legitimate values are:

    bitfinex
    bitstamp
    btce
    itbit
    anxhk
    hitbtc
    kraken
    bitkonan
    bitbay
    rock
    cbx
    cotr
    vcx

- The short name of the currency you wish to see the price for Bitcoin in. Legitimate values are:

    KRW
    NMC
    IDR
    RON
    ARS
    AUD
    BGN
    BRL
    BTC
    CAD
    CHF
    CLP
    CNY
    CZK
    DKK
    EUR
    GAU
    GBP
    HKD
    HUF
    ILS
    INR
    JPY
    LTC
    MXN
    NOK
    NZD
    PEN
    PLN
    RUB
    SAR
    SEK
    SGD
    SLL
    THB
    UAH
    USD
    XRP
    ZAR

The API call you make to the bitcoincharts.com site will yield a plain text response of the most recent trades, formatted as CSV with the following fields: UNIX timestamp, price in that currency, and amount of the trade. For example:

    1438015468,349.250000000000,0.001356620000

Your API should return the current value of Bitcoin according to that exchange in that currency. For example, your API might look like this (in F# notation to show types and args):

    val getCurrentBitcoinPrice : exchange:string -> currency:string -> float

Which basically says take two string args to describe the exchange by name and the currency I want the price in and return the latest price as a floating point value. In the above example my code would return `349.25`. 

Part of today's challenge is in understanding the API documentation, such as the format of the URL and what endpoint to contact. 

## Note

Many thanks to /u/adrian17 for finding this API for this challenge. 
# Title

Anagram Maker

## Difficulty

Intermediate

## Description

Anagrams, where you take the letters from one or more words and rearrange them to spell something else, are a fun word game. 

In this challenge you'll be asked to create anagrams from specific inputs. You should ignore capitalization as needed, and use only English language words. Note that because there are so many possibilities, there are no "right" answers so long as they're valid English language words and proper anagrams. 

## Example Input

First you'll be given an integer on a single line, this tells you how many lines to read. Then you'll be given a word (or words) on *N* lines to make anagrams for. Example:

    1
    Field of dreams

## Example Output 

Your program should emit the original word and one or more anagrams it developed. Example:

    Field of dreams -> Dads Offer Lime
    Field of dreams -> Deaf Fold Miser

## Challenge Input

    6
    Desperate
    Redditor
    Dailyprogrammer
    Sam likes to swim
    The Morse Code
    Help, someone stole my purse

# Title

Finding Ancestors

## Difficulty

Intermediate

## Description

Given a body of facts, can you answer a question about who is someone's grandparent?

## Input Description

You'll be given a set of names, all unique. The parentage and lineage of people is shown; for instance, A+B=C means A and B had a child C. Multiple children will be separated by a comma. For Example:

    1
    Beth+Dave=Tom,Dick,Harry

Then you'll be given a person's name followed by one or more question marks or exclamation points. Each question mark means go back one level of ancestery, each exclamation mark means go *forward* one level of ancestery. For example:

    2
    Beth!
    Harry?

## Output Description

Your task is to find one or more ancestors (or descendants) of that person at the correct level. From our example:

    Beth->Tom,Dick,Harry
    Harry<-Beth,Dave

## Challenge Input

    8
    Beth+Dave=Tom,Dick,Harry
    Jan+John=Mary,Michael,Amy
    Amy+Harry=Jim,John,Joe
    Mary+Dick=Bill
    Joan+Tom=Sam
    Sam+Jane=Larry,Peter
    Peter+Pauline=Francine
    Francine+Frank=Thomas
    4
    Peter??
    Sam!!
    Thomas??
    Francine??
    Beth!!!

## Challenge Output

    Peter<-Joan,Tom,Tom,Jane
# Title

Encoding with the Beale Cipher

## Difficulty

Intermediate

## Tags

encryption, cipher

## Description

You may recall the story of [Thomas J. Beale](https://en.wikipedia.org/wiki/Beale_ciphers), who (legend has it) worked with his cohorts to mine treasure over two years, then secretly bring it back to Virginia and hid it. He described the location of the treasure in a document encoded using the US Declaration of Independence as a key. Each number in the ciphertext corresponded to a word from the Declaration of Independence from which you take the first letter. 

Today's challenge is to *encode* a message using this Beale cipher. There will be multiple solutions to any phrase, but your message should be able to decrypt your message using the solution from your Beale decoder. 

Remember, Beale's ciphers discard anything not in the A-Z alphabet, so you'll have to drop whitespace and punctuation. Yes it makes decryption a bit harder. 

## Declaration of Independence

When in the course of human events it becomes necessary for one people to dissolve the political bands which have connected them with another and to assume among the powers of the earth the separate and equal station to which the laws of nature and of nature's god entitle them a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation we hold these truths to be self evident that all men are created equal that they are endowed by their creator with certain unalienable rights that among these are life liberty and the pursuit of happiness that to secure these rights governments are instituted among men deriving their just powers from the consent of the governed that whenever any form of government becomes destructive of these ends it is the right of the people to alter or to abolish it and to institute new government laying its foundation on such principles and organizing its powers in such form as to them shall seem most likely to effect their safety and happiness prudence indeed will dictate that governments long established should not be changed for light and transient causes and accordingly all experience hath shown that mankind are more disposed to suffer while evils are sufferable than to right themselves by abolishing the forms to which they are accustomed but when a long train of abuses and usurpations pursuing invariably the same object evinces a design to reduce them under absolute despotism it is their right it is their duty to throw off such government and to provide new guards for their future security such has been the patient sufferance of these colonies and such is now the necessity which constrains them to alter their former systems of government the history of the present king of great Britain is a history of repeated injuries and usurpations all having in direct object the establishment of an absolute tyranny over these states to prove this let facts be submitted to a candid world he has refused his assent to laws the most wholesome and necessary for the public good he has forbidden his governors to pass laws of immediate and pressing importance unless suspended in their operation till his assent should be obtained and when so suspended he has utterly neglected to attend to them he has refused to pass other laws for the accommodation of large districts of people unless those people would relinquish the right of representation in the legislature a right inestimable to them and formidable to tyrants only he has called together legislative bodies at places unusual uncomfortable and distant from the depository of their public records for the sole purpose of fatiguing them into compliance with his measures he has dissolved representative houses repeatedly for opposing with manly firmness his invasions on the rights of the people he has refused for a long time after such dissolutions to cause others to be elected whereby the legislative powers incapable of annihilation have returned to the people at large for their exercise the state remaining in the meantime exposed to all the dangers of invasion from without and convulsions within he has endeavored to prevent the population of these states for that purpose obstructing the laws for naturalization of foreigners refusing to pass others to encourage their migration hither and raising the conditions of new appropriations of lands he has obstructed the administration of justice by refusing his assent to laws for establishing judiciary powers he has made judges dependent on his will alone for the tenure of their offices and the amount and payment of their salaries he has erected a multitude of new offices and sent hither swarms of officers to harass our people and eat out their substance he has kept among us in times of peace standing armies without the consent of our legislatures he has affected to render the military independent of and superior to the civil power he has combined with others to subject us to a jurisdiction foreign to our constitution and unacknowledged by our laws giving his assent to their acts of pretended legislation for quartering large bodies of armed troops among us for protecting them by a mock trial from punishment for any murders which they should commit on the inhabitants of these states for cutting off our trade with all parts of the world for imposing taxes on us without our consent for depriving us in many cases of the benefits of trial by jury for transporting us beyond seas to be tried for pretended offenses for abolishing the free system of English laws in a neighboring province establishing therein an arbitrary government and enlarging its boundaries so as to render it at once an example and fit instrument for introducing the same absolute rule into these colonies for taking away our charters abolishing our most valuable laws and altering fundamentally the forms of our governments for suspending our own legislature and declaring themselves invested with power to legislate for us in all cases whatsoever he has abdicated government here by declaring us out of his protection and waging war against us he has plundered our seas ravaged our coasts burnt our towns and destroyed the lives of our people he is at this time transporting large armies of foreign mercenaries to complete the works of death desolation and tyranny already begun with circumstances of cruelty and perfidy scarcely paralleled in the most barbarous ages and totally unworthy the head of a civilized nation he has constrained our fellow citizens taken captive on the high seas to bear arms against their country to become the executioners of their friends and brethren or to fall themselves by their hands he has excited domestic insurrections amongst us and has endeavored to bring on the inhabitants of our frontiers the merciless Indian savages whose known rule of warfare is an undistinguished destruction of all ages sexes and conditions in every stage of these oppressions we have petitioned for redress in the most humble terms our repeated petitions have been answered only by repeated injury a prince whole character is thus marked by every act which may define a tyrant is unfit to be the ruler of a free people nor have we been wanting in attention to our British brethren we have warned them from time to time of attempts by their legislature to extend an unwarrantable jurisdiction over us we have reminded them of the circumstances of our emigration and settlement here we have appealed to their native justice and magnanimity and we have conjured them by the ties of our common kindred to disavow these usurpations which would inevitably interrupt our connections and correspondence they too have been deaf to the voice of justice and of consanguinity we must therefore acquiesce in the necessity which denounces our separation and hold them as we hold the rest of mankind enemies in war in peace friends we therefore the representatives of the united states of America in general congress assembled appealing to the supreme judge of the world for the rectitude of our intentions do in the name and by authority of the good people of these colonies solemnly publish and declare that these united colonies are and of right ought to be free and independent states that they are absolved from all allegiance to the British crown and that all political connection between them and the state of great Britain is and ought to be totally dissolved and that as free and independent states they have full power to levy war conclude peace contract alliances establish commerce and to do all other acts and things which independent states may of right do and for the support of this declaration with a firm reliance on the protection of divine providence we mutually pledge to each other our lives our fortunes and our sacred honor .

##  Input Description

You'll be given a sentence, one per line, that serve as your plaintext. Example:

    Hello, world!

## Output Description

Your program should emit a string of numbers that encode the plaintext in Beale's cipher. Example:

1268, 777, 881, 1319, 496, 718, 610, 987, 337, 138

That's one valid output for it. Another might be:

1052, 950, 652, 652, 1150, 415, 369, 1159, 423, 1117

And so on.

## Challenge Input

    I have deposited in the county of Bedford, about four miles from Buford's, 
    in an excavation or vault, six feet below the surface of the ground, the 
    following articles

## Challenge Output

641, 623, 823, 1135, 499, 527, 950, 1018, 402, 38, 3, 794, 777, 527, 1011, 552, 1297, 484, 1278, 68, 528, 640, 781, 214, 238, 198, 1201, 587, 1196, 475, 1187, 115, 1259, 878, 280, 1284, 374, 765, 679, 1284, 845, 1084, 562, 370, 489, 777, 1093, 1009, 1159, 770, 751, 580, 412, 1009, 109, 872, 249, 720, 724, 1199, 1097, 1051, 965, 495, 1048, 821, 1322, 237, 641, 496, 392, 128, 1293, 821, 1231, 845, 236, 842, 455, 118, 1049, 587, 777, 921, 700, 1278, 351, 266, 985, 1188, 1325, 193, 518, 319, 795, 404, 943, 649, 1034, 858, 1263, 459, 962, 777, 688, 399, 528, 1078, 928, 901, 538, 1052, 1001, 1167, 1047, 778, 1074, 109, 1273, 520, 272, 116, 903, 316, 1004, 460, 533, 489, 1034, 38

## Python Solution

    def beale_cipher(plaintext, decl):
        def _startswith(ch, ideclrange):
            for i in ideclrange:
                if i[1].lower().startswith(ch.lower()):
                    return i[0]
        idecl = map(lambda x: x[0], zip(enumerate(decl.split(), 1)))
        res = []
        for ch in plaintext.replace(" ", ""):
            i = random.randint(1, len(idecl))
            app = _startswith(ch, idecl[i:])
            if app:
                res.append(app)
            else:
                # maybe we went too far, start from beginning
                res.append(_startswith(ch, idecl))
        return res

# Title

Sturdy Brick Walls

## Difficulty

Intermediate

http://codegolf.stackexchange.com/questions/49536/build-a-steady-brick-wall

## Description

A brick wall is a rectangle made of horizontal 1-by-n bricks stacked into rows. A wall is sturdy if no two vertical edges of bricks appear in the same line. Here's an example of a sturdy wall:

	[___][___]
	_][___][__
	[___][___]

And here's an example of a wall with a fault (it is not sturdy):

	[______][______]   
	[__][____][__][]   
	[][______][____]   
	[____][______][]   

In this challenge your task is to create walls at least three bricks high that are sturdy.

## Input Description

You'll be given a list of integers that correspond to brick widths, one wall per line. Draw your bricks like this (e.g. the number tells you how many underscores to draw):

	1: [_]
	2: [__]
	3: [___]
	4: [____]
	...

## Output Description

Your program should emit a sturdy brick wall as ASCII art. If you have more than one possible solution, draw one or more.

## Challenge Input

	1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
	1, 2, 3, 4, 5, 6, 7, 8, 9
	1, 1, 2, 2, 3, 3, 3, 3

## Challenge Output

	[][__][__]
	[__][__][]
	[][__][__]
	[__][__][]
	[][__][__]

	[][______________]
	[__][____________]
	[________________]
	[____][__________]
	[______][________]

	[][__][____]
	[__][____][]
	[____][____]

# Title

Calkin-Wilf Tree

## Difficulty

Intermediate

## Description

In number theory, the Calkin–Wilf tree is a tree in which the vertices correspond 1-for-1 to the positive rational numbers. The tree is rooted at the number 1, and any rational number expressed in simplest terms as the fraction a/b has as its two children the numbers a/(a + b) and (a + b)/b. Every positive rational number appears exactly once in the tree.

The children of any vertex in the Calkin–Wilf tree may be computed by inverting the formula for the parents of a vertex. Each vertex a/b has one child whose value is less than 1, a/(a + b), because this is the only value less than 1 whose parent formula leads back to a/b. Similarly, each vertex a/b has one child whose value is greater than 1, (a + b)/b.

## Input Description

You'll be given an integer on a line, *n*. This is the depth of the tree to which you should generate (with the root as depth 1). For example:

    3

## Output Description

Your program should emit the sequence of rational numbers at that depth. For example:

    3 -> 1/3, 3/2, 2/3, 3/1

## Challenge Input

    5
    
## Challenge Output

    5 -> 1/9, 9/8,  8/15, 15/7, 7/20, 20/13,  13/19, 19/6, 6/23, 23/17,  17/28, 28/11, 11/27, 27/16,  16/21, 21/5,
    5/24, 24/19,  19/33, 33/14, 14/37, 37/23,  23/32, 32/9, 9/31,  31/22, 22/35, 35/13, 13/30,  30/17, 17/21,
    21/4, 4/23, 23/19,  19/34, 34/15, 15/41, 41/26,  26/37, 37/11, 11/40, 40/29, 29/47,  47/18, 18/43, 43/25,
    25/32, 32/7, 7/31,  31/24, 24/41, 41/17, 17/44,  44/27, 27/37, 37/10, 10/33, 33/23,  23/36, 36/13, 13/29,
    29/16, 16/19, 19/3,  3/20, 20/17, 17/31, 31/14,  14/39, 39/25, 25/36, 36/11, 11/41,  41/30, 30/49, 49/19,
    19/46, 46/27, 27/35,  35/8, 8/37, 37/29, 29/50,  50/21, 21/55, 55/34, 34/47, 47/13,  13/44, 44/31, 31/49,
    49/18, 18/41, 41/23,  23/28, 28/5, 5/27, 27/22,  22/39, 39/17, 17/46, 46/29, 29/41,  41/12, 12/43, 43/31,
    31/50, 50/19,  19/45, 45/26, 26/33,  33/7, 7/30,  30/23, 23/39, 39/16,  16/41, 41/25, 25/34,  34/9, 9/29,
    29/20, 20/31,  31/11, 11/24, 24/13, 13/15,  15/2, 2/15, 15/13,  13/24, 24/11, 11/31, 31/20,  20/29, 29/9,
    9/34, 34/25,  25/41, 41/16, 16/39, 39/23,  23/30, 30/7, 7/33,  33/26, 26/45, 45/19, 19/50,  50/31, 31/43,
    43/12, 12/41, 41/29,  29/46, 46/17, 17/39, 39/22,  22/27, 27/5, 5/28, 28/23, 23/41,  41/18, 18/49, 49/31,
    31/44, 44/13, 13/47,  47/34, 34/55, 55/21, 21/50,  50/29, 29/37, 37/8, 8/35, 35/27,  27/46, 46/19, 19/49,
    49/30, 30/41, 41/11,  11/36, 36/25, 25/39, 39/14,  14/31, 31/17, 17/20, 20/3, 3/19,  19/16, 16/29, 29/13,
    13/36, 36/23, 23/33,  33/10, 10/37, 37/27, 27/44,  44/17, 17/41, 41/24, 24/31, 31/7,  7/32, 32/25, 25/43,
    43/18, 18/47, 47/29,  29/40, 40/11, 11/37, 37/26,  26/41, 41/15, 15/34, 34/19, 19/23,  23/4, 4/21, 21/17,
    17/30, 30/13,  13/35, 35/22, 22/31,  31/9, 9/32,  32/23, 23/37, 37/14,  14/33, 33/19, 19/24,  24/5, 5/21,
    21/16, 16/27, 27/11, 11/28, 28/17, 17/23, 23/6, 6/19, 19/13, 13/20, 20/7, 7/15, 15/8, 8/9, 9/1


https://en.wikipedia.org/wiki/Calkin%E2%80%93Wilf_tree

## Scala Solution

    class Rational(numerator: Int, denominator: Int) {

      require(denominator != 0)

      private val gcd = greatestCommonDivisor(numerator.abs,
        denominator.abs)
      val n = numerator / gcd
      val d = denominator / gcd

      def this(n: Int) = this(n, 1)

      private def greatestCommonDivisor(a: Int, b: Int): Int =
      if (b == 0) a else greatestCommonDivisor(b, a % b)

      def + (that: Rational): Rational =
      new Rational(n * that.d + d * that.n, d * that.d)

      def - (that: Rational): Rational =
      new Rational(n * that.d - d * that.n, d * that.d)

      def * (that: Rational): Rational =
      new Rational(n * that.n, d * that.d)

      def / (that: Rational): Rational =
      new Rational(n * that.d, d * that.n)

      override def toString = n + "/" + d
    }


    def leaf(r:Rational): (Rational, Rational) = (new Rational(r.n, r.n+r.d),  new Rational(r.n+r.d,r.d))
    def leafToList(rr:(Rational,Rational)): List[Rational] = List(rr._1, rr._2)

    def calkin_wilf(n:Int): List[Rational] = {
        val root = new Rational(1,1)
        def loop(r:Rational): List[Rational] = {
            leafToList(leaf(r)).flatMap(x => leafToList(leaf(x)))
        }
        var res = loop(root)
        for (_ <- (2 to n-1)) {
            res = res.flatMap(loop)
        }
        res
    }

# Title

Change Ringing

http://en.wikipedia.org/wiki/Change_ringing

## Difficulty

Intermediate

## Description

Change ringing is the art of ringing a set of tuned bells in a series of mathematical patterns called "changes". Change ringing differs from many other forms of campanology (such as carillon ringing) in that no attempt is made to produce a conventional melody. Developed in the 17th century, change ringing remains popular in England.

Permutations of the bells are done a pair at a time. Each row of bells is then rung once per row in that order before the next permutation and ringing. An example of this method is this set of rows, where 1 pair of neighbors is swapped for each permutation. This method yields the following pattern: 

1,2,3,4,5,6	
1,3,2,4,5,6	
1,3,2,5,4,6	
1,3,5,2,4,6	
3,1,5,2,4,6	
...

For some people, the ultimate goal of this system is to ring all the permutations, to ring a tower's bells in every possible order without repeating — what is called an "extent" (or sometimes, formerly, a "full peal"). This pattern continues until the original ordering is returned. There are *N!* permutations.

## Input Description

For this challenge you'll be given a single integer, *N*, which is the number of bells to organize.

## Output Description

Your program should emit the complete list of steps to take in the permutation, the "full peal". 

## Challenge Input

	6

## Challenge Output


# Title

Constructing Cyclic Numbers

## Difficulty

Intermediate

## Description

A [cyclic number](https://en.wikipedia.org/wiki/Cyclic_number) is an integer in which cyclic permutations of the digits are successive multiples of the number. The most widely known in base 10 is 142857:

    142857 * 1 = 142857
    142857 * 2 = 285714
    142857 * 3 = 428571
    142857 * 4 = 571428
    142857 * 5 = 714285
    142857 * 6 = 857142

You can watch the `714` loop through the number again and again, showing you the cycle.

Cyclic numbers can be constructed using the following steps: 

1. Let *b* be the number base (e.g. 10 for decimal)
1. Let *p* be a prime that does not divide *b*.
1. Let *t* = 0.
1. Let *r* = 1.
1. Let *n* = 0.
1. Loop over the following steps:
    1. Let *t* = *t* + 1
    1. Let *x* = *r* * *b*
    1. Let *d* = int(*x*/*p*)
    1. Let *r* = *x* mod *p*
    1. Let *n* = *n* * *b* + *d*
    1. If r != 1 then repeat the loop.
1. if *t* = *p* - 1 then n is a cyclic number.

Your challenge today is a bit different than a typical challenge. Instead of creating or hunting for an algorithm, your challenge is to *implement* the above algorithm and create some cyclic numbers. 

## Note

Implementing an algorithm from a description is a valuable skill to have, just as is designing an algorithm. That's why this is a programming challenge - not solving a puzzle, but applying your language knowledge to a problem. 

## Scala Solution

    def makeCyclic(b:Int, p:Int): Int = {
        var t = 0
        var r = 1
        var n = 0
        def loop(n: Int, t:Int, r:Int, b:Int): Int = {
            val tt = t + 1
            val x = r * b
            val d = x/p
            var nn = n * b * d
            r match {
                case 1 => t
                case _ => loop(nn, t, r, b)
            }
        }
        t = loop(n, t, r, b)
        if (t == p - 1) {
            return t
        } else {
            return -1
        }
    }

# Title

Cyclic Words

## Difficulty

Intermediate

## Description

A cyclic word is a word that can be cleaved somewhere in the middle of it, the two halves swapped and then rejoined to form another legitimate word. For example the word `slaughter` is one with `laughters` - cleave after the `s` and move `laughter` from the end to the beginning.

For this challenge you can use the famous `enable1.txt` file or `/usr/share/dict/words`, as long as it's an English dictionary. 

## Input Description

You'll be given an integer on one line telling you how many words to read, then a list of *N* words words to read. Example:

    2
    slaughter
    calculate

## Output Description

Your program should emit if the words are cyclic in some fashion. Example:

    slaughter CYCLIC
    calculate NOT CYCLIC

## Challenge Input

    10
    large
    easel
    steak
    believe
    spot
    words 
    overt
    respite
    ranger
    neurectomy

## Challenge Output

    large NOT CYCLIC
    easel CYCLIC
    steak CYCLIC
    believe NOT CYCLIC
    spot CYCLIC
    words CYCLIC
    overt NOT CYCLIC
    respite NOT CYCLIC
    ranger NOT CYCLIC
    neurectomy NOT CYCLIC

# Title

Calculating De Bruijn sequences

## Difficulty

Intermediate

## Description

In combinatorial mathematics, a *k-ary* De Bruijn sequence *B(k, n)* of order *n*, named after the Dutch mathematician Nicolaas Govert de Bruijn, is a cyclic sequence of a given alphabet *A* with size *k* for which every possible subsequence of length *n* in *A* appears as a sequence of consecutive characters exactly once. At the terminus, you "wrap" the end of the sequence around to the beginning to get any remaining subsequences. 

Each *B(k, n)* has length *k^n*.

A De Bruijn sequence *B(2, 3)* (with alphabet *0* and *1*) is therefore:

    00010111

Similarly, *B("abcd", 2)* (with alphabet "a", "b", "c", and "d") is therefore:

    aabacadbbcbdccdd

For those sequences of length, every trigram (for the former case) or bigram (for the latter case) is represented in the result. 

De Bruijn sequences have various applications, including in PIN pad testing and rotor angle calculation. 

## Input Description

You'll be given two inputs *k* and *n*, the first is an integer or a a string of unique characters, the second is the length of the subsequences to ensure are encoded.

## Output Description

Your program should emit a string that encodes the De Bruijn sequence.

## Input

    5 3
    2 4
    abcde 4

## Output

The outputs expected for those (in order) are:

    00010020030040110120130140210220230240310320330340410420430441112113114122123124132133134142143144222322423323424324433343444
    0000100110101111
    aaaabaaacaaadaaaeaabbaabcaabdaabeaacbaaccaacdaaceaadbaadcaaddaadeaaebaaecaaedaaeeababacabadabaeabbbabbcabbdabbeabcbabccabcdabceabdbabdcabddabdeabebabecabedabeeacacadacaeacbbacbcacbdacbeaccbacccaccdacceacdbacdcacddacdeacebacecacedaceeadadaeadbbadbcadbdadbeadcbadccadcdadceaddbaddcadddaddeadebadecadedadeeaeaebbaebcaebdaebeaecbaeccaecdaeceaedbaedcaeddaedeaeebaeecaeedaeeebbbbcbbbdbbbebbccbbcdbbcebbdcbbddbbdebbecbbedbbeebcbcbdbcbebcccbccdbccebcdcbcddbcdebcecbcedbceebdbdbebdccbdcdbdcebddcbdddbddebdecbdedbdeebebeccbecdbecebedcbeddbedebeecbeedbeeeccccdccceccddccdeccedcceecdcdcecdddcddecdedcdeececeddcedeceedceeeddddeddeededeeee

## Notes

Have an idea for a challenge? Please share it on /r/dailyprogrammer_ideas. 

# Title

Tallest Tower from a List of Digits

## Difficulty

Intermediate

## Description

Today we're building towers of digits. A digit can be on top of another one:

    2
    6

or can be supported by two other diagonally below it:

     9
    5 8

The bottom one(s) have to support the weight the upper one supports (if there is any), plus the upper one's weight which is always 1. If there are two supporters, they split the upper one's total weight evenly (50%-50%).

The weight of every digit is 1 independent of it's value. If one digit supports two others it has to be able to support the sum of their corresponding weight. A digit can support at most its numerical value.

Example valid towers look like this:

    7
    5
    2
    3

      1
     5 4
    5 9 5

## Input Description

You'll be given a list of space-separated integers, one list per line. Example:

    1 2 3 4 5

## Output Description

Your program should emit the maximal hieght of the tower you calculated and draw it, as well. Example:

    1 2 3 4 5 -> 5
    1
    2
    3
    4 
    5

## Challenge Input

    1 2 2 3 3 3 4 4 4 4 5 5 5 5 5
    0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9
    0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 5 5 5 5 5 6 6 6 6 6 7 7 7 7 7 8 8 8 8 8 9 9 9 9 9

## Challenge Output

    1 2 2 3 3 3 4 4 4 4 5 5 5 5 5 -> 9
       1
       2
       2
       3
       4
       5
      3 3
     4 4 4
    5 5 5 5

    0 0 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 -> 12
     0
     1
     2
     3
     4
     5
     6
     7
    4 5
    6 7
    8 8
    9 9

    0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 5 5 5 5 5 6 6 6 6 6 7 7 7 7 7 8 8 8 8 8 9 9 9 9 9 -> 18
          0
          1
          2
          3
          4
          5
          6
          7
          8
          9
         5 5
         6 6
         7 7
        4 8 4
       3 7 7 3
      2 6 8 6 2
     2 5 8 8 5 2
     3 9 9 9 9 3

# Title

Elgob - Make a Boggle Layout

## Difficulty

Intermediate

## Tags

word games, Boggle

## Description

The game of Boggle is familiar to many - a set of 36 6-sided dice with letters on them, which then turns into a 6x6 layout of letters, and then you work on finding properly spelled words by moving from one die to another. We've done a Boggle challenge in the past. In Boggle rules you may move left, right, up, down, and diagonally, but you may not use the same die twice as you spell a word. 

Now can you do it backwards? Given a list of target words, can you create a Boggle layout using any other letters you wish that could yield those words and more?

## Input Description

First you'll be given an integer on a line telling you how many words to target. Then you'll be given a list of *N* target words, one per line. Example:

    3 
    CATCHER
    MOUSE 
    AIRY 

## Output Description

Your program should emit a possible Boggle layout that could yield those words and any other ones that happen to be possible. For example:

    L   W   D   J   M   Q
    L   A	H	E	R   J
    K   C	I	E	S   O
    N   A	T	R	U   E
    P   C	Y	M	O   W
    T   E   O   H   T   C

Notice that you can spell words like COW, TOW, TOE, TOURS, and more in the above, in addition to the 3 words we had to target. 

## Challenge Input

    9
    MID
    RANA
    GRANT
    BOCCA
    CILIA
    WAIVE
    OSSAL
    SALMO
    FICE

## Credit

This challenge as inspired by [a question](https://www.reddit.com/r/compsci/comments/3zjt44/filling_a_grid_with_words_using_boggle_rules/) from /u/JRhapsodus. 
# Title

Math Snake

## Difficulty

Intermediate

## Description

There's a math puzzle making the rounds of the net as of May 2015. According to the VN Express, it was set as a problem for third graders in the town of Bao Loc in the Vietnamese highlands. You need to fill in the gaps with the digits from 1 to 9 so that the equation makes sense, following the order of operations - multiply first, then division, addition and subtraction last.

## Input Description

Rather than making you parse an ASCII snake, you can parse the input as a series of blanks and values. You'll be given oprands (`=`, `+`, `-`, `*` and `/`) and numbers together with blanks (as underscores, or `_`) that you need to fill in. 

## Output Description

Your program should emit a solution (multiple solutions may exist) as a valid equation.

## Challenge Input

    _ + 13 * _ / _ + _ + 12 * _ - _ - 11 + _ * _ / _ - 10 = 66

## Challenge Output

    3 + 13 * 2 / 1 + 5 + 12 * 4 - 7 - 11 + 9 * 8 / 6 - 10 = 66

## Notes

This puzzle comes from Alex Bellos at the Guardian's May 20, 2015 column http://www.theguardian.com/science/alexs-adventures-in-numberland/2015/may/20/can-you-do-the-maths-puzzle-for-vietnamese-eight-year-olds-that-has-stumped-parents-and-teachers?CMP=share_btn_tw 

# Title

Friedman numbers

## Difficulty

Intermediate

## Description

A Friedman number is an integer, which in a given base, is the result of an expression using all its own digits in combination with any of the four basic arithmetic operators (+, -, *, /), additive inverses, parentheses, and exponentiation. For example, 347 is a Friedman number, since 347 = 7^3 + 4. Parentheses can be used in the expressions, but only to override the default operator precedence, for example, in 1024 = (4 - 2)10. Allowing parentheses without operators would result in trivial Friedman numbers such as 24 = (24). Leading zeros cannot be used, since that would also result in trivial Friedman numbers, such as 001729 = 1700 + 29.

Two special cases of Friedman numbers worth noting: A **nice or "orderly" Friedman number** is a Friedman number where the digits in the expression can be arranged to be in the same order as in the number itself. For example, we can arrange 127 = 2^7 - 1 as 127 = -1 + 2^7. **Vampire numbers** are a type of Friedman numbers where the only operation is a multiplication of two numbers with the same number of digits, for example 1260 = 21 * 60.

## Input Description

You'll be given a number, which may or may not be a Friedman number, one per line. Examples:

    127
    2502
    576

## Output Description

You'll be asked to output the formula that results in the value according to Friedman number rules, or a statement that it is not:

    127 = 2^7+1
    2502 = 50^2+2
    576 NOT VALID

## Challenge Input

    343
    1285
    8147
    123456789

## Challenge Output

    343 = (3+4)^3
    1285 = (1+2^8)+5
    8147 NOT VALID
    123456789 = ((86 + 2 * 7)5 - 91) / 34

## Notes 

The August 2000 Math Magic problem was around Friedman numbers, here are many of them decomposed. http://www2.stetson.edu/~efriedma/mathmagic/0800.html

# Title

Graph Radius and Diameter

## Difficulty

Intermediate

## Description

Graph theory has a relatively straightforward way to calculate the *size* of a graph, using a few definitions:

* The eccentricity *ecc(v)* of *v* in *G* is the greatest distance from *v* to any other node.
* The radius *rad(G)* of *G* is the value of the smallest eccentricity.
* The diameter *diam(G)* of *G* is the value of the greatest eccentricity.
* The center of *G* is the set of nodes *v* such that *ecc(v)*=*rad(G)*

So, given a graph, we can calculate its size.

## Input Description

You'll be given a single integer on a line telling you how many lines to read, then a list of *n* lines telling you nodes of a *directed* graph as a pair of integers. Each integer pair is the source and destination of an edge. The node IDs will be stable. Example:

    3
    1 2
    1 3
    2 1

## Output Description

Your program should emit the radius and diameter of the graph. Example:

    Radius: 1
    Diameter: 2

## Challenge Input

    146
    10 2
    28 2
    2 10
    2 4
    2 29
    2 15
    23 24
    23 29
    15 29
    15 14
    15 34
    7 4
    7 24
    14 2
    14 7
    14 29
    14 11
    14 9
    14 15
    34 15
    34 14
    34 29
    34 24
    34 11
    34 33
    34 20
    29 23
    29 7
    29 2
    29 18
    29 27
    29 4
    29 13
    29 24
    29 11
    29 20
    29 9
    29 34
    29 14
    29 15
    18 27
    18 13
    18 11
    18 29
    27 18
    27 4
    27 24
    4 2
    4 27
    4 13
    4 35
    4 24
    4 20
    4 29
    13 18
    13 16
    13 30
    13 20
    13 29
    13 4
    13 2
    24 4
    24 30
    24 5
    24 19
    24 21
    24 20
    24 11
    24 29
    24 7
    11 18
    11 24
    11 30
    11 33
    11 20
    11 34
    11 14
    20 29
    20 11
    20 4
    20 24
    20 13
    20 33
    20 21
    20 26
    20 22
    20 34
    22 34
    22 11
    22 20
    9 29
    9 20
    21 9
    21 20
    21 19
    21 6
    33 24
    33 35
    33 20
    33 34
    33 14
    33 11
    35 33
    35 4
    35 30
    35 16
    35 19
    35 12
    35 26
    30 13
    30 19
    30 35
    30 11
    30 24
    16 36
    16 19
    16 35
    16 13
    36 16
    31 16
    31 19
    5 19
    19 30
    19 16
    19 5
    19 35
    19 33
    19 24
    12 33
    12 35
    12 3
    12 26
    26 21
    26 35
    6 21
    6 19
    1 6
    8 3
    8 6
    3 8
    3 6
    3 12
    3 35
    33 29
    29 33
    14 33
    29 21

## Challenge Output

    Radius: 3
    Diameter: 5
# Title

Hitori Solver

## Difficulty

Intermediate

## Description

Hitori is a logic puzzle similar to Soduku in that you aim to get unique digits in any column and row, but different in that you're given an *N*x*N* matrix and you have to knock out the flawed numbers. The rules (from [Wikipedia](http://en.wikipedia.org/wiki/Hitori)): "Hitori is played with a grid of squares or cells, and each cell contains a number. The objective is to eliminate numbers by filling in the squares such that remaining cells do not contain numbers that appear more than once in either a given row or column. Filled-in cells cannot be horizontally or vertically adjacent, although they can be diagonally adjacent. The remaining un-filled cells must form a single component connected horizontally and vertically." 

## Challenge Input

You'll be given an integer showing the number of rows and columns, then the board as a series of numbers, your program must output a board with the correct values removed (e.g. replaced with an X)

        8
        3 3 6 4 8 7 2 2 
        7 5 5 1 8 2 2 8
        4 7 4 5 6 1 8 2
        1 1 3 5 2 3 7 8
        2 8 8 3 1 4 6 5
        7 4 5 1 3 5 1 4
        8 5 7 2 4 5 2 3
        6 1 8 4 6 3 5 7

# Title 

IPv4 Subnet Calculator

## Difficulty

Intermediate

## Description

In IPv4 networking, classless inter-domain routing (CIDR) notation is used to specific network addresses that fall outside of the historic "class A", "class B" and "class C" desigation. Instead it's denoted in an IPv4 network address with a bit-lenegth mask. For example, the historic class A network of 10.0.0.0 is expressed as `10.0.0.0/8`, meaning only the first 8 bits of the network address are specified. CIDR notation allows you to specify networks outside of the classic octet boundaries.

For this challenge, you'll be given various IPv4 addresses and subnets and asked to remove ones already covered by a covering CIDR representation. 

## Input Description

You'll be given a single integer and then list of IPv4 host and addresses addresses, containing that many lines of input. Examples:

    3
    172.26.32.162/32
    172.26.32.0/24
    172.26.0.0/16

## Output Description

Your program should emit the minimal covering set of the network addresses to remove ones already specified by the network addresses. From the above example only `172.26.0.0/16` would remain.

## Challenge Input

	12
	192.168.0.0/16
	172.24.96.17/32
	172.50.137.225/32
	202.139.219.192/32
	172.24.68.0/24
	192.183.125.71/32
	201.45.111.138/32
	192.168.59.211/32
	192.168.26.13/32
	172.24.0.0/17
	172.24.5.1/32
	172.24.68.37/32

## Challenge Output

	192.168.0.0/16
	172.24.0.0/17	
	172.50.137.225/32
	202.139.219.192/32
	192.183.125.71/32
	201.45.111.138/32

# Title

Isomorphic Words

## Difficulty

Intermediate

## Description

In graph theory, geometry and other mathematical subjects, an isomorph can be thought of as a relationship between two inputs that share a similar structre. We'll define the relationship between two words as being *isomorphic* if they reuse letters in the same pattern. As an example, the words `ESTATE` and `DUELED` both have the pattern `abcdca`:

    ESTATE
    DUELED
    abcdca

Put another way, you can deduce a simple substitution cipher to convert from one word to another. 

## Input Description

Write code that takes two words and checks whether they are isomorphs. You'll be given two words per line and asked to determine if they're isomorphs of one another. Example:

    ESTATE DUELED
    FEED DEAD

## Output Description

Your program should emit if the two words are isomorphic or not. Example:

    ESTATE DUELED TRUE
    FEED DEAD FALSE

## Challenge Input

    RAMBUNCTIOUSLY THERMODYNAMICS
    DISCRIMINATIVE SIMPLIFICATION
    BANANA SENSES
    SNACK HEATER

## Challenge Output

    RAMBUNCTIOUSLY THERMODYNAMICS TRUE
    DISCRIMINATIVE SIMPLIFICATION TRUE
    BANANA SENSES FALSE
    SNACK HEATER FALSE

## Scala Solution

    def isomorphic(w1:String, w2:String): Boolean = {
        val m = w1.zip(w2).toMap
        w2 == w1.map(x => m(x)).mkString
    }

# Title 

Laser in a Box

## Difficulty

Intermediate

## Description

Today's challenge is based on ASCII art, boxes, and lasers. Simply put, can you trace the path of a laser in a rectangular box, assuming it's coated with mirrors inside? 

In this case, lasers will start in the upper left corner of the box and be made of only `/` or `\`. You should assume a perfect bounce off the side of the box. 

## Input Description

You'll be given two integers, *n* and *m*, representing the width and heigth of the box to build. Example:

5 3

## Output Description

Your program should emit the box with the full path of the laser traced. Example:

    #######
	#\/\/\#
	#/\/\/#
	#\/\/\#
    #######

## Challenge Input

	2 2
	22 6
	6 3

## Challenge Output

	####
	#\ #
	# \#
	####

	########################
	#\  /\  /\  /\  /\  /\ #
	# \/  \/  \/  \/  \/  \#
	# /\  /\  /\  /\  /\  /#
	#/  \/  \/  \/  \/  \/ #
	#\  /\  /\  /\  /\  /\ #
	# \/  \/  \/  \/  \/  \#
	########################

	########
	#\    /#
	# \  / #
	#  \/  #
	########


via http://codegolf.stackexchange.com/questions/48531/ascii-doodling-laser-in-a-box	

# Title

Needles in Haystacks

## Difficulty

Intermediate

## Description

Most of us are familiar with the concept of subsequences - a short string contained in a larger string is just a sequence of characters. It has a role in things like Markov models, suffix trees, and biological sequence motif analysis. 

For this challenge, your job is to implement a means to find the longest common substring between two strings. In this particular challenge data set I chose strings I built using a simple password generator based on English-language syllables. 

## Sample Input

You'll be given an integer on a line telling you how many pairs of words to read. Then you'll get that many lines of two words apiece. Example:

    1
    ARORHEREVESTNGEVEATALLULD HEANTOORISINOMETIOARNE

## Sample Output

Your program should emit the longest common substring between the two strings. Example:

    AR

## Challenge Input

    6
    ARTHAOURENESERAHENNDTHER OMEWITHEVEROMENOTHERERETHIFOR
    REENTHISHEERVERANDINGERATHE NTBUTTIOSHOSHONDMEULDTHIWIT
    HESHOMEMEULDSEINVERNTVER WITSEEREVEEREWASWAESARERE
    ARENEOMEINGERSTAROULHIITH ERTIOVERBUTOULVERVETHIWAER
    ESYOUORTHAREFORHEOULLEVER HENNTMEVERHERBUTISHISHANT
    VERNTMETERARHADHIFORERAENIONNGULDMEOMEHERTHTERERORNOTHAANLEONTHIHATSTANDERTHETHALEREHEOURTETIOALITHLEEREEVEATHINHISSHOHATNGULDENTTHAASSEALLHINITHSEARETINEESTEWAWATEDVEHIEAVEEDEAONNDTHAERAALLWITTIITTOINGFOROUREBUTIONASTEDNOTISOULOMEENTTHENTARESWASHER ENTHADESANTEERWITOULHEVEEAHERTHARETIBUTNOTTHAAREANDARAREOMEHIENOULALNTINGTIOITHWITTIOVERTERHATHALLEVEITHISONALEAERSELEULDNOTORHINANHINTEDASYOULEHATTHITOWASENTERASHOARTEDNGISSEITNEANDTITHEHEREDIONMEHIWAALLATINGIONRENEVERESTHEVEVEINMEHENERENDWAOURSTTHI

## Challenge Output

    THER
    THI
    ES
    OUL
    EVER
    EOMEH

## Bonus

Can you find the longest common substring of any pair of words in this Limerick poem?

    There was a young rustic named Mallory,
    who drew but a very small salary.
      When he went to the show,
      his purse made him go
    to a seat in the uppermost gallery.

## Scala Solution

    def LCS(a:String, b:String): String = {
        def substrings(s:String): List[String] = s.inits.flatMap(_.tails.toList.init).toList
        substrings(a).toSet.intersect(substrings(b).toSet).toList.sortBy(_.length).last
    }

# Title

Magic Squares

## Difficulty

Intermediate

## Description

A  magic square is an arrangement of numbers (usually integers) in a square grid, where the numbers in each row, and in each column, and the numbers in the forward and backward main diagonals, all add up to the same number. The requirement for a magic square is that the squares all have unique numbers, typically monotonically increasing (from 1 to *n^2*), arranged as described in the previous sentence. In math notation, a magic square is said to have *order n*, where  *n* stands for the number of rows (and columns) it has. Magic squares were known to Chinese mathematicians as early as 650 BCE, and have since appeared in many cultures around the world. 

Since then, algorithms have been found to construct magic squares and are now well known, with additional research done into strategies to solving larger ones. 

## Input Description

You will be given a single number *n* which is the order of the magic square to devise. Note that your magic square should start with 1 and go through *n^2* sequentially. Example:

    3

## Output Description

Your answer should emit the magic square as a simple grid of numbers separated by commas. Example:

    8,1,6
    3,5,7
    4,9,2

## Challenge Input

    10

## Challenge Input Solution

        1,9,17,25,33,68,76,84,92,100
        99,91,83,75,67,34,26,18,10,2
        3,11,19,27,35,66,74,82,90,98
        97,89,81,72,65,36,29,20,12,4
        60,42,58,44,56,50,49,53,47,46
        41,59,43,57,45,51,52,48,54,55
        96,88,80,73,64,37,28,21,13,5
        6,14,22,30,38,63,71,79,87,95
        94,86,78,70,62,39,31,23,15,7
        8,16,24,32,40,61,69,77,85,93



# Title

Generating Text with Markov Processes

## Difficulty

Intermediate

## Tags

Markov, text generation

## Description

Text generation algorithms exist in a wide variety of formats, including "Mad Libs" and Markov processes. A Markov chain algorithm generates text by creating a statistical model of potential textual suffixes for a given prefix. That's a fancy way of saying "it basically determines the next most probable word given the training set." Markov chain programs typically do this by breaking the input text into a series of words, then by sliding along them in some fixed sized window, storing the first N-1 words as a prefix and then the Nth word as a member of a set to choose from randomly for the suffix. Then, given a prefix, pick randomly from the suffixes to make the next piece of the chain. 

Take this example text:

    Now is not the time for desert, now is the time for dinner 

For a set of triples, yielding a bi-gram (2 word) prefix, we will generate the following prefixes and suffix:

    Prefixes        Suffixes
    --------        --------
    Now, is         not
    is, not         the
    not, the        time
    the, time       for
    time, for       desert
    for, desert     now
    desert, now     is
    now, is         not, the  
    is, the         time
    the, time       for
    time, for       desert, dinner

You'll see a couple of the prefixes have TWO suffixes, this is because they repeat but one with a different suffix and one with the same suffix. Repeating this over piles and piles of text will start to enable you to build statistically real but logically meaningless sentences. Take this example output from my program after running it over Star Trek plot summaries:

    "attack." In fact, Yeoman Tamura's tricorder shows that Kirk has been killed after
    beaming down to the bridge, Kirk reminisces about having time to beam down. Kirk wants
    Spock to grab hold of him in a fist fight with Kirk and Spock try to escape, the collars
    are activated, subjecting them to an entrance, which then opens. Scotty saves the day by
    pretending to help Spock, and Mullhall voluntarily agree, and the others transported to
    the one which is not at all obvious what to make diplomatic advances. Meanwhile Kirk is
    able to get inside. McCoy and nerve pinches Chief at

## Challenge

Your challenge today is to implement a Markov generator supporting a bi-gram prefix. It should be capable of ingesting a body of text for training and output a body of text generated from that. 

## Notes

[Markov Chain Algorithm](http://www.rose-hulman.edu/Users/faculty/young/CS-Classes/csse220/200820/web/Programs/Markov/markov.html) from rose-hulman.edu

If you want to reproduce my Star Trek fun, I extracted the summaries from [Eric Wasserman's site](http://www.ericweisstein.com/fun/startrek/) and made them into a [flat text file](https://drive.google.com/file/d/0B3rX15hRO_71NEt0cl8tcWMxNnM/view?usp=sharing). 

## Python Solution

This is based on the example from Kernighan and Pike's The Practice of Programming, chapter 3.

    from itertools import islice
    import random
    import sys

    class Markov(object):
        def __init__(self, open_file):
            self.cache = {}
            self.open_file = open_file
            self.words = self.file_to_words()
            self.word_size = len(self.words)
            self.database()

        def file_to_words(self):
            self.open_file.seek(0)
            data = self.open_file.read()
            words = list(filter(None, data.split()))
            return words

        def window(self, seq, n=3):
            "Returns a sliding window (of width n) over data from the iterable"
            "   s -> (s0,s1,...s[n-1]), (s1,s2,...,sn), ...                   "
            # from https://docs.python.org/release/2.3.5/lib/itertools-example.html
            it = iter(seq)
            result = tuple(islice(it, n))
            if len(result) == n:
                yield result    
            for elem in it:
                result = result[1:] + (elem,)
                yield result

        def database(self):
            for w1, w2, w3 in self.window(self.words, n=3):
                key = (w1, w2)
                if key in self.cache:
                    self.cache[key].append(w3)
                else: 
                    self.cache[key] = [w3]

        def generate_markov_text(self, size=25):
            seed = random.randint(0, self.word_size-3)
            w1, w2 = self.words[seed], self.words[seed+1]
            gen_words = []
            for i in range(size):
                gen_words.append(w1)
                try:
                    w1, w2 = w2, random.choice(self.cache[(w1, w2)])
                except:
                    pass
            gen_words.append(w2)
            return ' '.join(gen_words)

    if __name__ == '__main__':    
        for arg in sys.argv[1:]:
            m = Markov(open(sys.argv[1], 'r'))
            print(m.generate_markov_text(100))
            del(m)

# Title 

Mathagrams

## Difficulty 

Intermediate 

## Description

A mathagram is a puzzle where you have to fill in the unknown digits to arrive at a given sum, with the values being added using every digit between 1 and 9 exactly once (yielding three 3-digit numbers). For this challenge, you'll write a program to solve such puzzles. 

## Input Description

You'll be given a simple addition equation and the sum to arrive at, with the letter *x* in place of the unknown digit for you to fill it. Example:

        1xx + xxx = 468

## Output Description

Emit the filled in equation with the *x* placeholders replaced by digits, making sure the addition adds up to the stated sum.  Example: 

        193 + 275 = 468

## Challenge Input

        xx5 + xxx = 468
        x9x + xxx = 468
        xxx + x7x = 468

## Challenge Output

        175 + 293 = 468
        195 + 273 = 468
        295 + 173 = 468

# Title

Packing Stacks of Boxes

## Difficulty

Intermediate

## Description

You run a moving truck business, and you can pack the most in your truck when you have stacks of equal size - no slack space. So, you're an enterprising person, and you want to write some code to help you along. 

## Input Description

You'll be given two numbers per line. The first number is the number of stacks of boxes to yield. The second is a list of boxes, one integer per size, to pack. 

Example:

	2 343123321
	
That says "make two stacks of boxes with sizes 3, 4, 3, 1 etc". 

## Output Description

Your program should emit the stack of boxes as a series of integers, one stack per line. From the above example:

	331
	322
	34

If you can't make equal sized stacks, your program should emit nothing. 

## Challenge Input

	3 912743471352
	3 42137586
	9 2 
	4 064876318535318

## Challenge Output

	9124
	7342
	7135

	426
	138
	75

	(nothing)
	
	0665
	4733
	8315
	881

via http://codegolf.stackexchange.com/questions/48486/the-partition-problem-sorting-stacks-of-boxes
	
## Scala Solution

	import scala.annotation.tailrec

	def elemsEqual(L:List[Int]): Boolean = 
		L.distinct.length == 1 
	
	def pack(n:Int, boxes:List[Int]): List[List[Int]] = {
		val g = boxes.permutations	
		@tailrec def loop(g:Iterator[List[Int]]): List[List[Int]]= {
			val s = g.next.grouped(n).toList
			(elemsEqual(s.map(_.sum)) && (s.length == n)) match {
				case true  => s
				case false => loop(g)
			}
		}
		try {loop(g)}
		catch {
			case _ => List(List[Int]())
		} 
	}

	val boxes = args(2).toCharArray.map(_.toString.toInt).toList
	println(pack(args(1)toInt, boxes).map(_.mkString).mkString("\n"))

# Title

Picture Spot

## Difficulty

Intermediate

## Description

When we want to snap a picture at the zoo or a tourist attraction, we want to stand as close as we can. Sometimes there's a barrier in the way. Given a fence and the location of the thing you want to take a picture of, can you help calculate the best spot for a picture?

## Example Input

On the first line, you'll be given a pair of coordinates that describe the fence as a straight line. Then on the second line you'll be given the coordinates for the thing you want to take a picture of (e.g. an animal at the zoo). Example:

    (1,1),(1,5)
    (3,3)

## Example Output

Your program should emit the coordinates of where you should stand along the fence to be closest to the object you want to get a picture of. Example:

    (1,3)

## Challenge Input

    (1,1),(10,10)
    (7,3)

    (3,9),(10,1)
    (9,9)

## Challenge Output
# Title

Finding Numbers with Manners

## Difficulty

Intermediate

## Description

In number theory, a polite number is a positive integer that can be written as the sum of two or more consecutive positive integers. 3 is a polite number because `1 + 2 = 3`. 4 is not a polite number - it's an impolite number - because you cannot add any two consecutive numbers to yield a sum of 4. It turns out the impolite numbers are exactly the powers of two.

Furthermore, the *politeness* of a number is how many different arrangements of consecutive integers can sum to the given number. For instance, 9 has a politeness of 2 because:

    9 = 2 + 3 + 4 = 4 + 5

For every x, the politeness of x equals the number of odd divisors of x that are greater than 1. An easy way of calculating the politeness of a positive number is that of decomposing the number into its prime factors, taking the powers of all prime factors greater than 2, adding 1 to all of them, multiplying the numbers thus obtained with each other and subtracting 1.

##  Input Description

You'll be given a row with a single integer *N* that tells you how many numbers to read. Then you'll be given *N* lines of integers to determine the politeness for. Example:

    3
    3
    8
    90

## Output Description

Your program should emit the number and its politeness. Example:

    3 -> 1
    8 -> 0
    90 -> 5

## Challenge Input

    10
    42
    87
    3197
    200
    546
    38
    39
    19
    99
    34

## Challenge Output

    42 -> 3
    87 -> 3
    3197 -> 3
    200 -> 2
    546 -> 7
    38 -> 1
    39 -> 3
    19 -> 1
    99 -> 5
    34 -> 1

## Bonus

Find the largest politeness of numbers below 10000. 

## Scala Solution

    def politeness(n:Int): Int = {
        def loop(n:Int, len:Int, windows:List[Int], sofar:List[Int]): List[Int] = {
            if (len == n) { return sofar }
            else {return loop(n, len+1, windows, windows.sliding(len).map(_.sum).filter(_==n).toList++sofar)}
        }
        if (n < 3) {0}
        else {loop(n, 2, (1 to (n - 1)).toList, List()).length}
    }

# Title

Polydivisble Numbers

## Difficulty

Intermediate

## Description

In mathematics a polydivisible number is a number with digits *abcde*... that has the following properties :-

* Its first digit *a* is not 0.
* The number formed by its first two digits *ab* is a multiple of 2.
* The number formed by its first three digits *abc* is a multiple of 3.
* The number formed by its first four digits *abcd* is a multiple of 4.
* etc.

Your challenge today is to write a program that can generate one or more polydivisible numbers of a given length. 

## Input Description

You'll be given a single integer *N* on a line telling you how many digits long to generate a polydivisible number. Example:

    3

## Output Description

Your program should emit one or more polydivisible numbers for that length. Example:

    3 -> 246,249

## Challenge Input

    4
    5
    8

## Challenge Output

These are just some of the many polydivisible numbers. Your program may generate other valid ones. 

    4 -> 1020,1024
    5 -> 10205
    8 -> 10205448
# Title

Primes in Several Bases

## Difficulty

Intermediate

## Description

Take a number that's prime in base 10 and convert it to its representation in other bases. Now let’s forget that all these base numbers are in a bases b other than 10 and let’s ask how many of them keep being primes base 10.

For example: 379081 is a prime in base 10, 637001 in base 9 (and is prime in base 10), 1344311 in base 8 (and is prime in base 10), etc. 

## Input Description

You'll be given a series of integers, one set per line. Example:

    10 9 8

## Output Description

Your program should emit an integer that is prime in base 10 when converted to representations in those bases. Example:

    379081 637001 1344311

## Challenge Input

    10 9 8 7 6 5 3 2
    10 9 8 7 5 4 3 2
    10 9 8 7 6 5 3 2
    10 9 8 7 6 5 4 2

## Challenge Output

    59771671 
    146752831
    764479423
    1479830551

via http://www.primepuzzles.net/puzzles/puzz_024.htm
# Title

Punch Card Creator

## Difficulty

Intermediate

## Description

Punch (or punched) cards are an archaic form of recording instruction. Many people here may think of them from the early digital computing era, but they actually go back to fairground organs and textile mills in the 19th century! The format most of us are familiar with was originally patented by Hollerith, using stiff card stock. Over the years this format changed slightly and varied on this them, including a diagonal cut corner. For this challenge we'll focus on the tail end of punch cards with IBM, GE and UNIVAC type cards. 

To use them, a program would be transcribed to the punch cards. Each column represented a single character, 80 columns to the card, 12 rows to the column. The zone rows can be used to have *two* punches per column. You can visualize it like this:

	                  ____________
	                 /
	          /  12 / O
	  Zone rows  11|   O
	          \/  0|    O
	          /   1|     O
	         /    2|      O
	        /     3|       O
	  Numerc      4|        O
	  rows        5|         O
	        \     6|          O
	         \    7|           O
	          \   8|            O
	           \  9|             O
	               |______________

Each card vendor would have an alphabet, an array of characters that are numerically represented by the punches. Here's an example of the DEC9 simple alphabet showing you the punch codes and the order in which they appear.

    DEC9 &-0123456789ABCDEFGHIJKLMNOPQR/STUVWXYZ:#@'="[.<(+^!$*);\],%_>?
         ________________________________________________________________
        /&-0123456789ABCDEFGHIJKLMNOPQR/STUVWXYZ:#@'="[.<(+^!$*);\],%_>?
    12 / O           OOOOOOOOO                        OOOOOO
    11|   O                   OOOOOOOOO                     OOOOOO
     0|    O                           OOOOOOOOO                  OOOOOO
     1|     O        O        O        O
     2|      O        O        O        O       O     O     O     O
     3|       O        O        O        O       O     O     O     O
     4|        O        O        O        O       O     O     O     O
     5|         O        O        O        O       O     O     O     O
     6|          O        O        O        O       O     O     O     O
     7|           O        O        O        O       O     O     O     O
     8|            O        O        O        O OOOOOOOOOOOOOOOOOOOOOOOO
     9|             O        O        O        O
      |__________________________________________________________________

You can see the first 12 characters are represented by a single punch, then the next 9 have two punches (with one in the upper zone), then the next 9 use the next zone as that second punch, the fourth 9 use the next zone as the second punch, then we start on the lower zone for the next sets of 6 with the upper zone punched increasingly.

For some more information, including from where some of this info was taken, please see http://homepage.cs.uiowa.edu/~jones/cards/codes.html or Wikipedia http://en.wikipedia.org/wiki/Punched_card . 

So, given an alphabet array you should be able to encode a message in a punch card, right? Let's go back to the punch card! For this challenge, assume the same encoding methods as above given the character array at the top, they'll only differ in order of characters. 

## Input Description

On the first line you'll be given two words - the punched card identifier, and the alphabet in linear order. Then you'll be given *M*, a single integer on a line, telling you how many cshort messages to represent on that type of punch card. 

## Output Description

Your program should emit an ASCII art punchcard  in the format above, with the diagonal notch and everything, and the message across the top. 

## Challenge Input

    DEC9 &-0123456789ABCDEFGHIJKLMNOPQR/STUVWXYZ:#@'="[.<(+^!$*);\],%_>?
	3
	Hello, world!
	This is Reddit's r/dailyprogrammer challenge. 
	WRITE (6,7) FORMAT(13H HELLO, WORLD) STOP END

## Challenge Output

# Title

Finding Legal Reversi Moves

## Difficulty

Intermediate

## Descrition

The game of Reversi (or Othello) is a color flipping strategy game played between two players. It's played on an 8x8 uncheckered board. In each turn, the player must place a new chip on the gameboard. The chip must be placed in a currently empty square. The other requirement is that it be placed so that one or more of their opponent's chips lie between the empty square and another chip of the player's color. That is, the player placing a black chip must place it on an empty square with one or more white chips in a row - vertical, horizontal, or diagonal - between it and another black chip.

The object of the game is to have the majority of disks turned to display your color when the last playable empty square is filled.

Today's challenge is to review a game in progress and indicate legal moves for the next player. 

## Input Description

You'll be given a row with a single letter, `X` or `O`, denoting the player whose move it is. Then you'll be given the board as an 8x8 grid, with a dash `-` for an open square and an `X` or an `O` for a space occupied by that piece. Example:

    X
    --------
    --------
    --------
    ---OX---
    ---XO---
    --------
    --------
    --------

## Output Description

Your program should indicate the quantity of moves for that piece and then draw where they could be, indicated using a star `*`. Example

    4 legal moves for X
    --------
    --------
    ---*----
    --*OX---
    ---XO*--
    ----*---
    --------
    --------

## Challenge Input

    O
    --------
    --------
    ---O----
    --XXOX--
    ---XOO--
    ----X---
    --------
    --------

    X
    --------
    --------
    ---OX---
    --XXXO--
    --XOO---
    ---O----
    --------
    --------

## Challenge Output

    11 legal moves for O
    --------
    --------
    --*O-**-
    -*XXOX*-
    -**XOO--
    --**X---
    ---**---
    --------

    12 legal moves for X
    --------
    --***---
    --*OX---
    --XXXO*-
    --XOO**-
    --*O**--
    ---**---
    --------

## Note

For an interesting discussion of such algorithms, see the Wikipedia page on (computer Othello)[https://en.wikipedia.org/wiki/Computer_Othello]. An 8x8 board has nearly 10**28 legal moves in a game tree possible! One of the first computer Othello programs was published in 1977, written in FORTRAN. 
# Title

Singles

## Difficulty

Intermediate

## Description

Singles is a number grid game where you must remove some squares in order to stabilize the grid. Black out some of the squares, in such a way that:

* no number appears twice in any row or column
* no two black squares are adjacent
* the white squares form a single connected group (connections along diagonals do not count).

## Input Description

You'll be given a single digit integer, *N*, on the first line. Then you'll be given an *N* x *N* grid of integers to play. Example:

    5
    3 2 2 1 3
    2 3 2 5 4
    4 5 2 2 1
    2 1 5 3 3
    5 3 1 3 5

## Challenge Output

Your program should emit the grid with the numbers you knock out (using the above rules) indicated, perhaps with an *x* marking where they were. Example:

    3 2 x 1 x
    x 3 2 5 4
    4 5 x 2 1
    2 1 5 x 3
    5 x 1 3 x

## Challenge Input

    8
    6 7 1 6 8 2 1 7
    2 8 5 7 6 4 6 1
    5 2 4 2 5 4 8 8
    5 3 8 2 6 1 4 7
    4 4 3 1 2 1 3 2
    6 2 3 5 8 2 7 8
    4 6 7 6 1 3 1 2
    8 8 1 4 1 6 2 2 

## Challenge Output 

    x 7 x 6 8 x 1 x
    2 8 5 7 x 4 6 1
    x 2 4 x 5 x 8 x
    5 3 8 2 6 1 4 7
    x 4 x 1 2 x 3 x
    6 x 3 5 x 2 7 8
    4 6 7 x 1 3 x 2
    8 x 1 4 x 6 2 x 
    
via http://www.chiark.greenend.org.uk/~sgtatham/puzzles/js/singles.html

# Title

Slitherlink

## Difficulty

Intermediate

## Description

Slitherlink is a logic puzzle that was first published by Nikoli in Japan. The puzzle consists of a grid of dots, with some clue cells containing numbers. You connect horizontally or vertically adjacent dots to form a meandering path that forms a single loop or "Slitherlink." The loop must not have any branches and must not cross itself. The clue numbers indicate how many lines surround the cell. Empty cells may be surrounded by any number of lines (from 0 to 3). 

Remember, the three rules for Slitherlink are:

1. Connect dots with vertical / horizontal line and make one loop,
2. Numbers are the hints to know how many lines can be drawn around it. There may be any number of lines around cells without number,
3. Lines cannot be crossed or branch off.

A simple example would be like this:

    + + + +     +-+-+-+ 
     3 2 3  =>  |3 2 3|    
    + + + +     +-+-+-+ 

Using dashes `-` and pipes `|` draw the lines to connect the dots. 

## Input Description

You'll be given a square of numbers and nodes. The numbers indicate the square and the dots are represented by the `+` sign. Some squares may be blank, that's a wildcard. Example:

    + + + + +
     1 0   1
    + + + + +
     3 3
    + + + + +
         2 2
    + + + + +
     3   1 0 
    + + + + +

## Output Description

You should link the dots with a dash `-` or a pipe `|` as needed to satisfy the puzzle. Example:

    + + + + +
     1 0   1
    +-+ +-+-+
    |3|3|   |
    + +-+ +-+
    |    2|2
    + +-+-+ +
    |3|  1 0 
    +-+ + + +

## Challenge Input

    + + + + + + + + +
     0 2 3 3 3 2 2 3
    + + + + + + + + +
     2             3
    + + + + + + + + +
     2 2 3         3
    + + + + + + + + +
         1
    + + + + + + + + +
               3
    + + + + + + + + +
     0         0 2 2
    + + + + + + + + +
     2             1
    + + + + + + + + +
     3 1 1 3 2 2 3 1
    + + + + + + + + +

## Challenge Output

    + + +-+ +-+ +-+-+
     0 2|3|3|3|2|2 3|
    + +-+ +-+ + + +-+
     2|       | | |3
    +-+ +-+ + +-+ +-+
    |2 2|3|        3|
    + +-+ + +-+-+-+-+
    | |  1| |
    +-+ + + + +-+ +-+
          | | |3| | |
    + + +-+ +-+ +-+ +
     0  |      0 2 2|
    + +-+ +-+-+ +-+-+
     2|   |   | |  1
    +-+ + +-+ + +-+ +
    |3 1 1 3|2|2 3|1
    +-+-+-+-+ +-+-+ +

## Credit

This puzzle cam from the New York Times magazine on May 24, 2015. You can find more slitherlink puzzles on this website: http://krazydad.com/slitherlink/



http://www.kakuro-online.com/slitherlink/

# Title

Spinning Gears

## Difficulty

Intermediate

## Description

A popular game for the babies of nerdy parents are wooden or plastic gears. Kids put them on a peg board (or use magnets to attach them to the refrigerator) and watch them spin. It's a simple way for them to learn about actions and interactions. As a parent, it was sometimes fun to see how big I could make the gear networks. There's a logic puzzle game I play on the iPad, too, to solve gear puzzles. 

Today's challenge is to read a set of gear specifications - their size and layout - and describe what initial gear to turn to make the target gear move in the right fashion - speed and direction. It's a bit of algebra and graph theory all thrown into one. You should assume frictionless gears. 

## Sample Input

You'll be given a line with a single integer on it (*N*) telling you how many gear specifications to read, followed by *N* lines. Gear specifications are given as a unique letter to designate it and then the radius of the gear. Then you'll be  given another link with a single integer on it (*M*) telling you the layout, showing you what gears are touching by their letters, followed by *M* lines. Finally, you'll be asked on the last line to spin a gear (designated by a letter) in a direction (clockwise or counter-clockwise, CW or CCS) and how fast in RPMs, ending with the name of the gear to turn. Example of 3 gears forming an A-B and B-C line, asking you to spin A to make C turn at 30 RPM counter clockwise:

    3 
    A 6
    B 12
    C 3
    2
    A B
    B C
    C CCW 30 A

## Sample Output

Your program should emit the gear name, direction (CW or CCW) and speed to make the target gear spin as needed. From our example:

    A CCW 15

## Challenge Input

    9
    A 6
    B 12
    C 3
    D 4
    E 5
    F 10
    G 15
    H 13
    I 9
    J 18
    15
    A B
    B B
    B C
    C A
    C A
    C B
    C B
    C B
    C C
    C I
    D B
    E B
    F B
    G B
    H B
    B CW 75 I

# Title

Spoonerism

## Difficulty

Intermediate

## Description

A spoonerism is an error in speech or deliberate play on words in which corresponding consonants, vowels, or morphemes are switched (see metathesis) between two words in a phrase. It is named after the Reverend William Archibald Spooner (1844–1930), Warden of New College, Oxford, who was notoriously prone to this mistake. The term "Spoonerism" was well established by 1921. 

Example spoonerisms include:

* "A blushing crow." ("crushing blow")
* "Resident Pagan" (President Reagan)
* "belly jeans" (jelly beans)

Generating spoonerisms is kind of tricky, but follows a simple rule: swap the leading consonants of the two words. Programatically this is easy, adjusting spelling for the pronunciation is tougher (and out of scope for this challenge). 

## Input Description

You'll be given a two word phrase, one per line, for which to generate a spoonerism. Words with which you need to swap letters will be capitalized to differentiate from stop words. Example:

    Bold Clue

## Output Description

Your program should emit the spoonerism form of the two word phrase. Spelling isn't an issue. Example:

    Bold Clue -> Cold Blue

## Challenge Input

    Swap Letters
    Lord of the Flies
    Daily Bread

## Challenge Output

    Swap Letters -> Lap Swetters (which sounds like "Lop Sweaters")
    Lord of the Flies -> Flord of the Lies (which is awfully close to "Ford of the Lies")
    Daily Bread -> Braily Dead (or "Baily Dread")

# Title

English Word Syllbalizer

## Difficulty

Intermediate

## Description

A syllable is a unit of organization for a sequence of speech sounds. For example, the word water is composed of two syllables: wa and ter. A syllable is typically made up of a syllable nucleus (most often a vowel) with optional initial and final margins (typically, consonants).

For this challenge your program should take English language words and count the number of syllables in them.

If you have ever wished to automatically create poetry like a haiku, this is one of the components you'll need. 

## Input Description

You'll be given a series of English language words.

## Output Description

Your program should emit the word and the number of syllables it counted in them.

## Challenge Input

    water
    weigh
    neighbor
    neighborhood
    bread
    breadboard
    cummerbund
    cucumber
    approximately
    
## Challenge Output

    water 2 
    weigh 1
    neighbor 2
    neighborhood 3 
    bread 1 
    breadboard 2
    cummerbund 3
    cucumber 3 
    approximately 5

# Title

Tile Shuffling

## Difficulty 

Intermediate

## Description

Imagine an ecosystem where bugs that like to be solitary live on colored tiles, and different species inhabit different tiles. The bugs don't like to be together because when they're next to the same species, they explode. So, you have to keep them apart. You have been shipped a habitat of colored tiles and your task is to arrange them in a safe manner to keep the bugs wont explode. 

For this challenge, we'll work with the rule that we don't want contiguous color tiles. We need to rearrange them - so we have to keep the tile counts per color the same - to find a stable arrangement where none of the adjacent ones are the same color. We're only concerned about the 4 cardinal directions - up, down, left, right - so diagonals are OK. The same color can appear elsewhere in the row or column as long as they're not touching.

This problem actually has relevance to topics like contagion spread, where you want as heterogenous a connected population as possible. 

## Input  Description

You'll be given a single integer, *N*, on a line, and then a matrix of colors in the next *N* rows, with *N* tiles per row - you get an *N* by *N* square. Example:

    3
    RRR
    GGG
    BBB

## Output Description

Your program should emit a solution within the constraints - tiles rearranged so that no two adjacent ones are the same color. Here's one possible solution to the above challenge. 

    RGB
    BRG
    GBR

## Challenge Input

    75
    GYGOYRVYRBBIOGIYIRBRYBYRRRIVBOVIVIROVIOOOOOGROYVYYOIBIIOOGIYORRIIGRBYIVYOI
    YOVBGVGRYRVYRVBORIBBVGYRIRVYVIVRGYOGIGYGROBGVIIOGGBGBIOBYYOOOROVIVVBVIIRBY
    IOGVGYIIVOYGGBGVGBBGIGGVIRGIYGRIRIBRIGRBOYIVVYRGOVOGYRBIRIOBGYVIYBORVBOVIB
    IGGGIGOIBORVVORIIRROOIVOVYOGYRRVRRVYOGBYVVIYIYGRRGRORRBBRBOIYIBBRYOBGGRRBR
    OGIBYROIYGRYBYGBVRBBIVVIYVBYRIIBROBVRIYVYIVOVYRVRRBRIYORBIBBYRYOYGVIYRYROY
    VOGBGGRBIGYBBIIRBIVIVGYYORIYRIROOIOYRBGGBIYGVVGIGOGVGOYBRRBROYBOOVRVVROBYI
    OGBOYVROOROBVYGBYRVRRRRVIGGYGOGRVVVOGIBBIOVOOGIOIOIGBBVBBIRVRVGBROOOGBBRIY
    IVGYOVOGOIYBGROROGIOYBBIGBIOYYBBGIYIBYGIBIRIOYIRBBGIOVGVBIVRYRGBGVVVIOYVGI
    YBVOOOVIVROVIOOYRROYYYIIVYBGRBOORYIBBRYGRVRRBYVBOROIYIBOVGVVBROGGOYBOYRVOR
    GRRGYYYYYYVVRYIBGGGGVBIVGGGYYRYRGIOVIGGYGGVVBYYYIGVRYBIRYOOORYIORGBRYBGGGR
    OIGBOIVYVBGYVOGIIRBYVYRVOOVOVIBBRYVIIOGRRIOIOOOOBVVIOIRGIYIOOBRRRBIBGGRYRY
    BRVBORBGBOGOVBOIGRGIOVBIYVBYYOIVRIVBRGRBRBVGRIIBVVVOVVRYIVYRYYYOOOOIROGYRV
    IORRGYOOIIOOVIRGVIYVIGBOBGIBGRYVVBGOVORBYIVRBOIOIYBGIBGVIVGGOVBVRBOVYIGBIO
    GBOIVIBVGVGIIOVRVBYBVGGBGGGIGVBRRIVYGOYVVOBGRVVRVBYIVVRBYOBBOOBRYBRROOVRGO
    BGYVOVYGIGRGRGBVRRBIYOOYOGYVORORIGORYVOVGGVVGRRRIBRGYYRIBIOOGROIGVVVOVROBI
    RRIBRGIYYOYBIGBBBVRRBOYGOOOVGYOYBVVYGGVOVVRVBBROVYIIRVVBIBGYORGBRVYOVVBRIR
    IORGGGVIGVVBIBYGOIYROIOIGYYYOORYVROOGBVBRGOVORIRYBIBOOVRYRRYBYIVYVOVYGGGIG
    VGRYIGGGVVGOBIYRIGBGIVIIIYIVYIIOIGVVBYOOIIIOYIIIGIYBVGRYVOYRVROVVIOGIOVOVY
    ORYGRIIBVROVYRYGIOGYGIBYIVYBOIBGOBBRRGROBGIOGOVRYIBVBORIVYRYVIIIRBVGBGGBOO
    VRIGIVIGGBBIBYYOYRVGROGBIBGGIRYRIVVRRYYRGYBIGBBGRYRGYOIYRIGBYRYBIBGOIBIVOY
    RRVIRYBOOBOBRIOOOVROOGVIOBYRGGYGYVOVOOBRRIYYOIOIYBRBVGBRROYOYGGGRBOGOGYYIY
    GORVRYGVOBVGGROORIYGBVOVGOOIIVIGYIGYVBBVVRVVYVIOIGBIGGYYBGRBRRRGROOOGRRVRG
    GOBVOYVIRRRVGYVGBBGYRGYVIVYBGGBYOGGOORVIIYOYOGVVRVYRIGYRGYOYVIVBROVVGVIOVR
    RYRYYBOGOROYYRRGBYIRGIYYBOYRYOGVOVBVIRVBVIVYRBBVVYVRYIOVYBIOOVVIYVGGIVBOGB
    YGIIVOVOVBYGGGYIIRIBYVYGVRGBYRRYIBRYGIIVGVYVRBVBGGOIVBYYOVIOVOIYBVOOIIYBGB
    BGIIGBIVRYYVGVIIRIIYRVRVYYYYBGIOIRRVBGRBVGOBYRGIIGRVBVVIBYYIBVGVGVIIBBYBVR
    GBIGIBGBGGBROIOGGIYVGIBIYIRBYYVRYIVOGVVGGRRYGYVYVOYRYOORBGOYYVVVVVGOVVGBIO
    YIOBYYIIVOIYYBIVOBBVYGOVGIGYVVVYVYBOBGGVIVGYYVGOYRYBOYVGVYVROBVYGRBVBVOIRV
    OYYIGRIIGVVBRGYOROVRGOVRBGBOVVYRORIVGOIOVRYIRBVRBYVBRVIIOORRBYOOVVBVBOBBOO
    GVBBOIIOIIBGBRVVBRORYYRBGBOVRRGRBBYGIOYVROYGYRBBBIBGOYRVOIYVRIVBRVBIRGROII
    OIGBROOVVYBROVBOVGGOYGGVGBRYBGGRIRIOVVOOYVVGGYVBVGVVVGYRIVOROVOBRIVGBVVRVG
    RYYVOORVGIYRGGGOIBOBBVBRIBIRVYVVYVBYOIOGRVBYIBBGIRIBRYGGGOORGGYBBRVOVRBGBG
    VYOYBORBRYVRGYGBOVIORVOGOVGBIGYOOYGGGBROGBGOGIBIBVIBORBGIVVOBYYBBBGIYYVGBI
    BOOGYVROYVGBBBIBBOVBGGIGBOOGGIOIIRBGOBOGRBVVYYIYOYYIVIIYOORBBGBOGVYOGIRYYR
    GBBVBGVYBIYYRRGORVGGBBYIVGGIRRYRRIBVIIBGYYRGIOBIOOGBGGIRIIGRGOVIYBVYYGOIOI
    GVVGGOYOYIOIRGYYYIIVIYIIYBOOVRYYYIGGGBGVROBOGRGRBIORVVYRGRIOGVRYBIVRIVIRVR
    IIRBYGYBRYVBVRIOYVVYIBRGYGIGVBGRVVORRYGOIYOYYORBGRVGRYOYROIGGRRGGVYROYVVVO
    YIBVRIRGIOYBOOYBGIIIBYOYRGGVBIORGRIOYOBIOYBVIIYYBIBGRIIVBOBGRVYRYRIIGGVIGR
    RYBOYIIIYOGOIGOIVRIYYBOOVOGGIVRGYBBRGVVIVBROBYGIBYBGBGYYBOGRIGIYVGVBVYGOVO
    YYBBRVVBIYRYIVYVYOBBIOIBGOYVOBRGROGBGGVIGIBGBYYYYBGIBORBOVVBVIVIIBBOOOIOIR
    BIBRIIIGGGYRGGRIOBYIBYYBROYYBBIVBGVBVORYBIVBRIVVVRVOOOBOBBYGGRVIRRVIRIBOGG
    OYORYRGBVRIYGOVGIVIYOROOGGVVROBRRBGOBIYRVIVOBYRIOVVIIBGRIYRGGIYBBYYYOBVYVB
    RRVIYIBIIVOGYBVYRBRVYBVOBGGGYVVOOBORGVYYROGIGOROGRIVYOVBIBBYORIYGRIOROOIYB
    GRYOGBGROGGBVGBVVIGBGVYRBVRYVIOVVYRYYRRRRBOOGOGOYGRYGOIYROYOOIGGYIBYYIRGGV
    GVROYIOGVBOIORGBRBGOIIVBOYRGIOYOOBVIIBOYOIOVVVBOOYOYRYIBIOGIVRIYBOVIORVBOY
    RBRVIIORYOBIOBRVYBVYGYVYOVGRYVGORGGGBBBIVYOGBBBGYYGRGVVYYIIBOIYVGBIGVVRBRB
    ORIOBYGBYIGRRBYBBBROBROVOYBBYIGRRRROOYOVOIGVIGIGORIVGYBVBGGIGRYVVRORYBOIVY
    BIBGOOOYIIIIOOIRBBGGYBGOGGROOYROIOYGOYIBRVYVYVRIOIVYVGROOBGOOBBGYOOBBIIIRI
    BBOVOGRORGGIOGBGYBOYGRRYYRBBVGIGRIGGBBGGROGBRRIBBGBYIRVIYRYYVRVOIGIIIOIOGO
    RIRIGBGOGGIBRBRGBGOOIIVOOIGROYYGOGGYIIRGRBRVVVVRGGROYOOOGIIRIRVYYIVBROYIRB
    GORVYVBOIBYBVOIRIGIVOOORYIIBOYBVYOOVYRYYYBRYGVOGBIGIGGBIGGBIGIOYIOYYOIYOIO
    VVBVVOGOVOYBIOIYRGYYGVVOGBVGRIBBYORIRGOYGIVYYRGROYYGVIROYIOBYIGOGGRYIYOGIB
    VVIIYVGRIOBOGIORRBRYVBIBIOIRBBBYOIOYBIYYRIIYOYGYVRYIIYVOVOVGBYGGIVOVBOGYGY
    GIBORRRIOIBYROIYRYRGRVROGIIRRBGVYRBRRRGYVVRBBBVOGYRYYYBROIIGRIRVOVYOOYGBGV
    GVYYBVRBOBVOOGIYYRBBRGIVYGRGIYGYGVIYGOBIIRRYRGOGOOOOGBORYVIYGGYYOGVGYIYOOI
    RRIRIVVORYBRRRRVVYOVIRVIYRRGRVVIBOBGRGYOOGGOYVGGGIRIVVBIGYOIIIGYGOIBIOVYYO
    RORGBOVIGOVVIYGORRGGYOVIRRRYGYRGBYIGOOVBVBVYOVVIBIRGBRIOVGYVOYBOYVYBYVBYBY
    BIVVBOOVOOOYIYYRYYOIRVIVVRIYOIVOOYYIYIGYVIYGGGIBORYORIGGGBRGBBIGGGGRBYVYYG
    VBORGGOIOBYVGOOGRBGBYIGGOOGYYRBIYRIYIRVRRORIGGRGRIBIIOBGIIBOBGBBOVYOOYOYGV
    YOBYIVIIGVORVRORIROROBIIOOBRGBORBIGBGRRGVGYIVGBBYVBIBGIIRYRYOOOYRGBYOVOBYI
    OIYBROIRYGIYYOYYVOYOIIRIVGVVGGRBOBOBGYGOBYOYIRVGBIYYOOYOGYYGIBRIYROBBROIOY
    GGVGGVIOOBVGVIGVVBBIBIBBRRYYIIYOGBYGGBRYGOYRIVYBVOVVVVIGVRGGIYOVIGBYVGOGRR
    GYIBRYIOGBGYYYORIIYOVGYVBGBIOGBIIYVVRBVOOVYVBBOYGRBVRIORORRGYYVIVVOVIBRVVY
    RYIOROORIOGRRGOROIRVBIORVGIIVGBYOIIGVGGBBOGYYRRBGBGGIIOGBIYOIOBYYBBYBVRRBB
    VOROORVOVRRGYBBVRIGVOOYOBVOVOBVBIGIYIGYVGIYIGRYRORVRBBYIGVOGGIIOYGIGGGVVBO
    IRVIOBRBGOGIIGBVBIOORIIYYVVYORRRGYBRROVVIOIYGIGIVRIBVBRVVYORGRBIBGGYBOIRVG
    BOOBYGIROGROIIBRVGOGBYIGBVORYGIRYIOOVRORVYROBYVGBBIGBBGYRIBYGOOGIBIOOOYYRI
    VRROIRRVOOGVIYIOVBIOYIGIGBOGOGVRGGVGYVBYGBBYBGIVGBVBORROVBRRVBIGBBRYBIVIYV
    OOVBGRVIVYIYIIIBBIBBIBYIIBYGYOBRIVROROIVGYIIIYIYIYIBOYBRRRGIYOBBVRIYGGBVOO
    BVYYOGVGBIVVBVIIIGOVOGYBGIBIVVIIGYVRVRIIYBBRRRGGVRIIIYYVOIORYYRRVIYBGVRIYO
    YGRROYRIRGYBIRVORRYYVOVYYBOOIROVVVOGIIGOYGBGYROIRYGBIIRVIIRORGOGYVRVOOROOV
    OOYIYGRYYIIBIOORRGBVIRRGYIOBBIOIYVIBYOOGYRYIIVBIBYYIOIBVRORBIOOBOBOVRRGBVR
    YYBYBBOYRRIIRBOVVBBVYYBBGBOIRYYVOYYVOIROOBOOIBGRVBBGIGYRRIOIIROIIIGVIIGIOO
    OVOYIIBVRBIRVYOOORRIYVGBVVGIRVRBOVYVOYVVVBGYRYBIYYGOBOIGGVIBOYBGVYVOYRYYRG

# Title

Trees in the Park

## Difficulty

Intermediate

## Description

You manage the city parks of beautiful Tree Town. You have a team who loves to plant trees, but have so much pride that they insist their trees be visible by everyone and that no crowding exists. After many contentious meetings you arrive at a compromise: every tree planed must be in its own park, its own row and its own column, and no two trees can be diagonally from each other, either. In doing this, every arborist gets to maximize their tree's enjoyment. 

It's now left to you to plan where these trees will go. 

## Input Description

You'll be given a single integer *N* which tells you four things: how many rows to read, how many columns to read, how many parks you're working with, and how many trees to plant. You'll then be given the park layout as an ASCII art map with letters indicating the different park designations (e.g. "a", "b", "c" ...). An example map:

    5
    a a b c d
    a a b b d
    e a b d d
    e e e d d
    e e e e e

## Output Description

Your program should emit the map with the trees planted in the correct spot. Indicate trees with an uppercase "T". For the above example map the solution is:

    a a b T d
    T a b b d
    e a T d d
    e e e d T
    e T e e e

## Challenge Input

    5
    a b b b b
    a a b b b
    a c d b b
    a d d d e
    a a a e e

## Challenge Output

    T b b b b
    a a b T b
    a T d b b
    a d d d T
    a a T e e

# Title

Two for One

## Difficulty

Intermediate

## Description

This game is simple - swap one letter in the input word with a new pair of two letters (e.g. p -&gt; nn) to generate a valid resulting word (English words, only, please). 

## Formal Input Description

You'll be given a list of English words as input.

## Formal Output Description

Your program should emit the valid English words that result from the substitution. Use the [enable wordlist](https://code.google.com/p/dotnetperls-controls/downloads/detail?name=enable1.txt) if you lack a list of English words (e.g. /usr/share/dict/words).

## Sample Input

    chapel
    agenda

## Sample Output

    channel
    addenda

## Challenge Input

    barber
    cogent
    staple
    behave
    axle

## Challenge Input Solution (not visible by default)

    barbell
    comment
    steeple
    behoove
    apple

## Note (optional)

This was from the NYTimes magazine on March 16. Puzzle credit goes to the always estimable Will Shortz. 

Have a cool idea for a challenge? Submit it to /r/DailyProgrammer_Ideas!

## Scala Solution

    def candidates(word:String): List[String] = {
        val len = word.length
        scala.io.Source.
                      fromFile("/usr/share/dict/words").
                      getLines.
                      filter(_.length == len+1).
                      toList
    }

    def hammingDistance(a:String, b:String): Int = 
        a.toCharArray.zip(b.toCharArray).filter(x => (x._2 != x._1)).length

    def twoforone(a:String, b:String): Boolean = {
        for (i <- (0 to a.length-1)) {
            if (a(i) != b(i)) {
                println((a.slice(0,i) + b(i) + b(i) + a.slice(i+1, a.length)))
                if (a.slice(0,i) + b(i) + b(i) + a.slice(i+1, a.length) == b) {
                    return true
                }
            }
        } 
        return false
    }

    def check(word:String): List[String] = 
        candidates(word).filter(x => hammingDistance(word, x) == 3).filter(x => twoforone(word, x))



# Title

Calculting Ulam Numbers

## Difficulty

Intermediate

## Description

Ulam numbers are a sequence of integers that are composed of previous, distinct members of the sequence that have exactly one possible representation of two previous Ulam numbers added together. Starting with U_1 = 1 and U_2 = 2, the next Ulam number is 3 (1+2), then 4 (1+3). 5 is not a Ulam number because it can be represented in two ways: 1+4 and 2+3. Through 100 the first few terms are

1, 2, 3, 4, 6, 8, 11, 13, 16, 18, 26, 28, 36, 38, 47, 48, 53, 57, 62, 69, 72, 77, 82, 87, 97, 99

The sequence is named after the Polish physicist Stanislaw Ulam, who introduced it in 1964. There are infinitely many Ulam numbers. For, after the first n numbers in the sequence have already been determined, it is always possible to extend the sequence by one more element. 

Different sequences can be generated if U_1 and U_2 differ but the same rules apply. For example, for (1, 3) the sequence starts 1, 3, 4, 5, 6, 8, 10, 12, 17, 21, ...

## Input Description

You'll be given 2 integers representing U_1 and U_2. Example:

    1 2

## Output Description

Your program should emit the first 10 or so terms of the sequence for the given U starting values Example:

    1, 2, 3, 4, 6, 8, 11, 13, 16, 18

## Challenge Input

    2 5
    1 5
    3 7

## Challenge Output


# Title

Unique County Names

## Difficulty

Intermediate

## Description

In the United States, states are divided first into counties (or in the case of Louisiana *parishes*, in Alaska *minicipalities*, *census areas* or *boroughs*, and in the US territory Puerto Rico *municipios*) before being further divided into smaller chunks of land and then finally cities, towns and villages. A great number of these counties have common names (e.g. for US presidents), but even more have local and historic names such as native tribes. 

In this challenge, you're looking for those unique names. A couple of things to note:

- You can ignore the *type* of division it is, such as a county, city or parish. For comparisons, focus only on the **name** (e.g. Polk County would be the same as Polk Parish).
- Some of them have two word names (e.g. Prince William County), treat that as the name (Prince William). 
- Yes, this is part data munging because of the complexity of the data source - human names.
- Yes, there will be many, many unique names. That's part of the challenge. 
- Focus only on the 50 US states, so ignore Puerto Rico, DC, etc. The data set includes extra territories, so you'll have to analyze it first to discover which ones to omit. 

The data comes from the US Census Bureau and can be downloaded from this URL: http://www2.census.gov/geo/docs/reference/codes/files/national_county.txt 

## Input Description

You'll find that the website formatted the data in CSV. An example line is:

    AL,01,001,Autauga County,H1

We only care about the first and fourth columns, so in this case "AL" and "Autauga County". If you want to know more about the data, it's the [2010 FIPS Codes for Counties and County Equivalent Entities](https://www.census.gov/geo/reference/codes/cou.html), see that site for a full explanation. 

## Output Description

Your program should emit the unique county (or county equivalent) name as pairs of abbreviated state name (e.g. "AL") and county name (e.g. "Polk County") for the 50 US states. 

# Title

Unwrap Some Text

## Difficulty

Intermediate

## Description

Most of us are familiar with word wrap and justifying blocks of text. Our text editors do this for us - "wrap text to a width of 80 characters" and such. We've done challenges where we have [made columns of text](https://www.reddit.com/r/dailyprogrammer/comments/2hssx6/29092014_challenge_182_easy_the_column_conundrum/) and we've also played with [decolumnizing text](https://www.reddit.com/r/dailyprogrammer/comments/3esrkm/20150727_challenge_225_easyintermediate/). But this one's a bit different.

Given a block of text, can your program correctly identify the start of the next paragraph? You're free to use any heuristic you want. This one differs from previous challenges in that there is no whitespace between paragraphs like you had before. You may want to think about the statistics of lines the close a paragraph. 

## Challenge Input

    The ability to securely access (replicate and distribute) directory
    information throughout the network is necessary for successful
    deployment.  LDAP's acceptance as an access protocol for directory
    information is driving the need to provide an access control model
    definition for LDAP directory content among servers within an
    enterprise and the Internet.  Currently LDAP does not define an
    access control model, but is needed to ensure consistent secure
    access across heterogeneous LDAP implementations.  The requirements
    for access control are critical to the successful deployment and
    acceptance of LDAP in the market place.
    This section is divided into several areas of requirements: general,
    semantics/policy, usability, and nested groups (an unresolved issue).
    The requirements are not in any priority order.  Examples and
    explanatory text is provided where deemed necessary.  Usability is
    perhaps the one set of requirements that is generally overlooked, but
    must be addressed to provide a secure system. Usability is a security
    issue, not just a nice design goal and requirement. If it is
    impossible to set and manage a policy for a secure situation that a
    human can understand, then what was set up will probably be non-
    secure. We all need to think of usability as a functional security
    requirement.
    Copyright (C) The Internet Society (2000).  All Rights Reserved.
    This document and translations of it may be copied and furnished to
    others, and derivative works that comment on or otherwise explain it
    or assist in its implementation may be prepared, copied, published
    and distributed, in whole or in part, without restriction of any
    kind, provided that the above copyright notice and this paragraph are
    included on all such copies and derivative works.  However, this
    document itself may not be modified in any way, such as by removing
    the copyright notice or references to the Internet Society or other
    Internet organizations, except as needed for the purpose of
    developing Internet standards in which case the procedures for
    copyrights defined in the Internet Standards process must be
    followed, or as required to translate it into languages other than
    English.
    The limited permissions granted above are perpetual and will not be
    revoked by the Internet Society or its successors or assigns.
    This document and the information contained herein is provided on an
    "AS IS" basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
    TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
    BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
    HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
    MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

## Challenge Output

Your program should emit something like this:   

The ability to securely access (replicate and distribute) directory
information throughout the network is necessary for successful
deployment.  LDAP's acceptance as an access protocol for directory
information is driving the need to provide an access control model
definition for LDAP directory content among servers within an
enterprise and the Internet.  Currently LDAP does not define an
access control model, but is needed to ensure consistent secure
access across heterogeneous LDAP implementations.  The requirements
for access control are critical to the successful deployment and
acceptance of LDAP in the market place.

This section is divided into several areas of requirements: general,
semantics/policy, usability, and nested groups (an unresolved issue).
The requirements are not in any priority order.  Examples and
explanatory text is provided where deemed necessary.  Usability is
perhaps the one set of requirements that is generally overlooked, but
must be addressed to provide a secure system. Usability is a security
issue, not just a nice design goal and requirement. If it is
impossible to set and manage a policy for a secure situation that a
human can understand, then what was set up will probably be non-
secure. We all need to think of usability as a functional security
requirement.

Copyright (C) The Internet Society (2000).  All Rights Reserved.
This document and translations of it may be copied and furnished to
others, and derivative works that comment on or otherwise explain it
or assist in its implementation may be prepared, copied, published
and distributed, in whole or in part, without restriction of any
kind, provided that the above copyright notice and this paragraph are
included on all such copies and derivative works.  However, this
document itself may not be modified in any way, such as by removing
the copyright notice or references to the Internet Society or other
Internet organizations, except as needed for the purpose of
developing Internet standards in which case the procedures for
copyrights defined in the Internet Standards process must be
followed, or as required to translate it into languages other than
English.

The limited permissions granted above are perpetual and will not be
revoked by the Internet Society or its successors or assigns.

This document and the information contained herein is provided on an
"AS IS" basis and THE INTERNET SOCIETY AND THE INTERNET ENGINEERING
TASK FORCE DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION
HEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES OF
MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

# Title

Vaki Puzzle Solver

## Difficulty

Intermediate

## Description

Vaki puzzles are solved by completing the grid so that there are two symbols in each cell (most commonly a letter and a number), each letter and each number appears once in each column and once in each row, and each pair appears only once in the grid. 

Vaki puzzles are solved by completing the grid so that there is a letter and a number and in each cell, each letter and each number appears once in each column and once in each row, and each pair appears only once in the grid.

For a little bit more, see http://www.vakipuzzles.com/. 

## Input Description

On the first line you'll be given a single integer, *N*, which is the size of the grid to make (both in the horizontal and vertical axes, it's a square grid). Assume the numbers go from *1* to *N* and the letters from *A* to the *Nth* letter (e.g. C = 3, D = 4, etc). Subsequent lines will specify 3 values - two integers (row and column respectively) and one additional value, either a letter (e.g. *C_*), a number (e.g. *_2*), or a combination (e.g. *D1*). The "_" underscore means that there's a missing value.

## Output Description

You should emit a simple grid showing all positions filled in for a valid puzzle with those constraints. 

## Sample Input

        4
        1 2 D3
        4 4 C_
        2 3 _2

## Sample Output

        C2      D3      A1      B4
        D1      C4      B2      A3
        A4      B1      C3      D2
        B3      A2      D4      C1

## Notes

The basic ideas of a Soduku solver apply here, although at a different depth (3 fold compared to Soduku). 


# Title 

Longest Word in a Box

## Difficulty 

Intermediate

## Description

Can you find the shortest path from one corner of a box of letters to another? Here's the rub: the path you take through the box has to spell an English word.

## Input Description

You'll be given an integer *N* which tells you how many rows and columns it has (it's a square), and then the box of letters. You can move up, down, left, or right but not diagonally. 

## Output Description

Starting from the top left corner and ending at the lower right, your program should emit the shortest English language word starting in one corner and ending in the opposite it can find by tracing a path through the box. Optionally show the path it took. 

## Challenge Input

    11
    b   u       h       l       d       r       t       w       f       v       b
    f   c       j       k       c       k       r       g       k       m       r
    x   k       m       i       n       s       t       f       q       q       w
    d   x       f       n       s       q       e       r       g       h       j
    v   t       w       w       q       t       z       f       u       t       g
    b   r       w       d       l       r       s       a       l       e       e
    n   w       t       q       q       e       x       e       l       h       w
    h   r       q       w       g       w       v       t       e       r       q
    r   r       w       r       t       w       g       y       v       e       n
    w   f       t       h       h       d       h       u       s       j       e
    q   d       y       y       j       n       p       j       w       v       s

## Challenge Output

        buckminsterfullerenes



##  Title 

Word Wheel

## Difficulty

Intermediate

## Description

A word wheel is a puzzle where there's a series of letters on the outside of a circle and one in the middle. You then have to find as many words as possible that contain the letter in the middle and two or more of the letters on the outside.

For this challenge you'll be asked to solve word wheels. 

## Sample Input

You'll be given a word wheel as a small piece of ASCII art. Because wheels in ASCII are very tough, instead you'll be given three lines. The middle line will be the center of the wheel and the first and third lines will be the outside of the wheel. For your dictionary use /usr/share/dict/words or the classic enable1.txt file: http://code.google.com/p/dotnetperls-controls/downloads/detail?name=enable1.txt

	e f t
	  i
	p   d

## Sample Output

Your program should emit all words of the maximum length. For the above wheel we get:

	tepid
	fetid

## Challenge Input

	t a f e
	   m
	 b i s

## Challenge Output

	ambits
	bemist
	misate
	miseat
	samite

## Credit

Many thanks to Ben Everard for the idea!

# Title

XOR Decoding

## Difficulty

Easy

## Description

One of the simplest ways to obfuscate text is to XOR a single byte value over the input data. This is not uncommon in malware, for example. If you know you have text strings in there, even better a *particular* text string, you can use that to test for the correct XOR value.

For example, take the following string in hex encoding (using ASCII values for characters):

    0x6a 0x67 0x6e 0x6e 0x6d 0x22 0x75 0x6d 0x70 0x6e 0x66

Or in ASCII:

    jgnnm"umpnf

This is XOR encoded with 0x02, so we can decode it the same way:

    j XOR 0x2 = h
    g XOR 0x2 = e
    ...

yielding "hello world". 

## Decoding Notes

You may want to think about how to decide if it's decoded. Perhaps letter frequencies, dictionary lookups, etc. 

## Input Description

You'll be given an input string that has been XOR encoded (with a single byte). 

## Output Description

Your program should emit the XOR byte value and the decoded string. 

## Challenge Input

    Sont'wuh`ufj'dfiihs'eb'uri'ni'CHT'Jhcb)
    jvvr8--uuu,pgffkv,amo-p-fckn{rpmepcoogp

## Challenge Output

    0x07 This program cannot be run in DOS Mode.
    0x02 http://www.reddit.com/r/dailyprogrammer
    

# Title

Zeckendorf Representations of Positive Integers

## Difficulty

Intermediate

## Description

Zeckendorf's theorem, named after Belgian mathematician Edouard Zeckendorf, is a theorem about the representation of integers as sums of Fibonacci numbers.

Zeckendorf's theorem states that every positive integer can be represented uniquely as the sum of one or more distinct Fibonacci numbers in such a way that the sum does not include any two consecutive Fibonacci numbers. 

For example, the Zeckendorf representation of 100 is

    100 = 89 + 8 + 3

There are other ways of representing 100 as the sum of Fibonacci numbers – for example

    100 = 89 + 8 + 2 + 1
    100 = 55 + 34 + 8 + 3

but these are not Zeckendorf representations because 1 and 2 are consecutive Fibonacci numbers, as are 34 and 55.

Your challenge today is to write a program that can decompose a positive integer into its Zeckendorf representation.

## Sample Input

You'll be given a number *N* on the first line, telling you how many lines to read. You'll be given a list of *N* positive integers, one per line. Example:

    3
    4
    100
    30

## Sample Output

Your program should emit the Zeckendorf representation for each of the numbers. Example:

    4 = 3 + 1
    100 = 89 + 8 + 3 
    30 = 21 + 8 + 1

## Challenge Input

    5
    120
    34
    88
    90
    320

## Challenge Output


# Title

Zombies Invaded my Village

## Difficulty

Intermediate

## Description

(Read this in the tone of "Manic Pixie Dream Girls", the spirit in which it's intended.)

Help! Zombies invaded my village! I need your help to isolate them!

Let me describe my village. We have houses connected with paths between them, and that's how we get from one house to another. Sometimes I have to visit one house before I can get to another because I don't have a path from my house to that one, but that's OK. For example, I love walking past grandma's house, she always makes me rice pudding (yum!). 

But now zombies threaten our village. Our mayor, Francine, started to describe how to isolate the zombies by tearing up the paths and breaking the village into two parts. That means that some parts of the village will be turned into zombies, but thats better than the whole village being infected. (I hope grandma will be ok!) Before we could get to work, Francine was zombified, and now we're all left trying to figure out how to achieve her plan. She went to a really good university, and I am not that smart so I need your help!

What we want to do is to tell you about my village and have you tell me which paths to tear up and split our village into two parts so that we can defend it. We have to work fast so please tell me the minimum number of paths to tear up. 

Help us, DailyProgrammer, you're my only hope!

## Input Description

You'll be given a two integers on the first line, telling you how many lines to read (*N*) and how many distinct node IDs (*M*). Then you'll be given *N* lines of integers showing you the edge between the two nodes referenced by ID (1 -> *M*). Assume an edge weight of 1 and an undirected graph. Example:

    3
    1 2
    1 3
    2 3

## Output Description

Your program should emit the smallest number of edges to remove from the graph to split it into two. Example:

    1 2
    1 3

## Challenge Input

    89 18 14
    1 1 
    1 2 
    1 3 
    1 4 
    1 5 
    1 6 
    1 7 
    1 8 
    2 1 
    2 2 
    2 3 
    2 5 
    2 6 
    2 9 
    2 7 
    3 2 
    3 3 
    3 4 
    3 5 
    3 6 
    3 9 
    3 7 
    3 8 
    4 1 
    4 3 
    4 4 
    4 5 
    4 6 
    4 9 
    4 7 
    5 3 
    5 4 
    5 5 
    5 9 
    6 3 
    6 5 
    6 6 
    6 7 
    7 5 
    7 6 
    7 9 
    7 7 
    8 6 
    8 7 
    8 8 
    9 5 
    9 9 
    9 7 
    9 8 
    10 9 
    10 7 
    10 8 
    10 10 
    11 7 
    11 8 
    11 11 
    11 10 
    12 7 
    12 8 
    12 11 
    12 10 
    12 12 
    12 13 
    13 9 
    13 7 
    13 8 
    13 11 
    13 10 
    13 12 
    13 13 
    14 6 
    14 9 
    14 8 
    14 11 
    14 14 
    14 10 
    14 12 
    14 13 
    15 9 
    15 7 
    15 11 
    15 14 
    15 10 
    16 7 
    16 8 
    17 8 
    17 14 
    18 8 
    18 14 

