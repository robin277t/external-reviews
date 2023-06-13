Company makes academic maths papers easier to read.

Product scans through maths papers.

Pulls out any sums as strings

Evaluates the sums, and then presents the result alongside original string it pulled out.

Sum string can contain 1 or 2 terms. Eg 1 + 1 is a 2x term sum.

"1"	["1", 1.0]

"1 + 1"	["1 + 1", 2.0]

present result to 2 decimal places only if required, else default to 1

"11111" => ["11111", 11111.0] TICK
"10.5 + 11.25" => ["10.5 + 11.25", 21.75]
"100 / 10" => ["100 / 10", 10.0]
"44 * 3" => [44 * 3, 132.0]



