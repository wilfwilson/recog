gap> for F  in [ GF(5), GF(9), GF(16) ] do
>     for n in [1, 2, 3, 7] do
>         gens := [];
>         l := ShallowCopy(Elements(F));
>         RemoveSet(l,Zero(F));
>         for i in [1..5] do
>             m := IdentityMat(7,F);
>             for j in [1..7] do
>                 m[j,j] := Random(l);
>             od;
>             Add(gens,m);
>         od;
>         g := GroupWithGenerators(gens);
>         Print("Testing MatDiagonal over ", F, ":\n");
>         ri := RECOG.TestGroup(g,false,Size(g));
>         Print("\n");
>         Assert(0, Size(ri) = Size(g));
>     od;
> od;
Testing MatDiagonal over GF(5):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(5):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(5):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(5):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(3^2):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(3^2):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(3^2):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(3^2):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(2^4):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(2^4):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(2^4):
Test was OK!
..............................
30 random elements successfully sifted!

Testing MatDiagonal over GF(2^4):
Test was OK!
..............................
30 random elements successfully sifted!
