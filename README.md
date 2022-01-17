# venn-random-walk
a place to hold some code and notes about Venn's graph of randomness using pi


Alex Bellos book introduced me to the problem.

I thought it would be a simple distraction. Making a random walk

that draws lines to the 8 directions N NE E SE S SW W NW

most other random walks I had just used 4 directions

However it brought to light an interesting problem in the history of ideas, the search for precision and the very concept of randomness

Venn in doing his graph which is explained in chapter 5 of his book

https://www.gutenberg.org/files/57359/57359-pdf.pdf

the logic of chance

uses Shanks 707 digits of pi which were found to be incorrect in the 1940s

you can find more info on that here

http://bit-player.org/wp-content/extras/shanks/

In my recreations of Venn's original published I use his numbers

however I had found it hard to recreate as Venn published

I was however able to recreate exactly the method using the modern digits of pi

which the new formatted version of Venn's book on guterberg also uses

It seems like they must also have had trouble trying to recreate as it appeared in the actual published third

edition even with Shanks 707 digits.

https://www.researchgate.net/publication/342024889_The_First_Random_Walk_A_Note_on_John_Venn%27s_Graph#pf3


if you trace it out on paper it is very easy to see where Venn goes wrong. I was wondering if it was

a typesetting compromise.

But I really believe that he is using another rule for the same digits that appear in a row

as you see he differs from Shanks digits when three threes need to be plotted which which makes

a long diagonal in my plot. This long diagonal does not appear in his plot.

I had a guess that he would deal with these multiple digits by just plotting one of them

so I cleaned the data in python but it did not produce as he originally published.

I need to analyze more closely with paper and pen.

