gap> g := Group(Z(5)^0 * [
>    [ [ 0, 1, 0, 0, 0 ],
>      [ 1, 0, 0, 0, 0 ],
>      [ 0, 0, 0, 1, 0 ],
>      [ 0, 0, 1, 0, 0 ],
>      [ 2, 3, 3, 2, 1 ] ],
>    [ [ 0, 0, 1, 0, 0 ],
>      [ 0, 4, 4, 0, 0 ],
>      [ 1, 2, 1, 0, 0 ],
>      [ 0, 0, 0, 0, 1 ],
>      [ 4, 4, 4, 4, 4 ] ],
> ]);;
gap> ri := RECOG.TestGroup(g, true, 660);;
