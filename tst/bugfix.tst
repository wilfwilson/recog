#
gap> START_TEST("bugfix.tst");

# See https://github.com/gap-packages/recog/issues/1
gap> gens := [];; e:=Z(2)^0;;
gap> mat:=IdentityMat(4,GF(2));; mat[1,2]:=e;; Add(gens, mat);
gap> mat:=IdentityMat(4,GF(2));; mat[2,1]:=e;; Add(gens, mat);
gap> mat:=IdentityMat(4,GF(2));; mat[3,2]:=e;; Add(gens, mat);
gap> mat:=IdentityMat(4,GF(2));; mat[4,3]:=e;; Add(gens, mat);
gap> G:=Group(gens);
<matrix group with 4 generators>
gap> SetInfoLevel(InfoRecog, 0);
gap> ri:=RECOG.TestGroup(G, false, 192);;
Test was OK!
..............................
30 random elements successfully sifted!
gap> outsider:=Reversed(IdentityMat(4,GF(2)));;
gap> outsider in ri;
false

# The following test used to run into an error
# See https://github.com/gap-packages/recog/issues/35
gap> seedRS:=[ 5, [ 225113392, 116373310, 13315847, 185413588, 109376684, 208186004, 247160821, 214444193, 32311622, 106294770, 219253574, 169980985, 50045007, 211591822, 54141775, 25691115, 39393953, 200036935, 193770276, 208267651, 39100788, 126999690, 232504932, 226553591, 20638563, 139831559, 121338016, 205231825, 14714209, 127491343, 20425766, 228741984, 241036124, 166916515, 168213747, 135516487, 186091181, 203271793, 17966524, 16814514, 34159989, 240650236, 47708100, 114868532, 30568327, 94464039, 120748884, 52644563, 104015293, 11624778, 68043632, 212959210, 141675590, 139554261, 165463607 ] ];;
gap> seedMT:=[ "\020\267\245\255\tY\255\226\242\343\237\304!\233\377\336\025b\246:\304O\240\230\231\223\240\237\302v\253yl\n\351\310\275fnvNIS\026x_M\202E\n\233t\023\207\343\352\365\262\202m^ \332\302\267\0337\341.a\340\377Gt~S=F\360\0301\301&cr\023\035\332\342\262U\302O\304\213\377\324Qc~Nt\230\231\365\331\2472\361\000GD\213\215\374\314\027g\r\>+\306\354h\201\204\013\322\3279\303\213\201'\025\201k!\366\032\rdX}MK\"\347\273)9@\267\241[ah\2057\225g\224\256\3777\356o\253\245!\347\224\243\373\005;\>\0145\031\014\030\352?\327^-\363O\027\t\353>5\346MN6\355\030|\036*\375\243\023m\\\035|\240\341\267\333\020\2516\266{x\267+^\323#\324\322\321\303}p\215\022\200\262u\216\331\014\327\364[5\234\301\"\260\214\265T\354\005\325\301\\\375\t\2275{H\2060\273'K\313\347$\256\357}P\013\265\200\260u^G\013\207z\336\270\342\251K\217\324j\007!t;\c\036\262;\370\224E\331\225\207\325\305H\337\321o\370\306f\215f^g4\205\314\037\213[\340,\246\2155\252\213\n}\345\210\337aP\256\004+.\262p\211\365\370\036\034\231\215\231+W7\017\243Vm|\315F\014/\340\365\337\200V\216\240\330\233YK\306\323\3160\004_:\375%\036\352\343\326\000\025\235r\212\224X\3116\233\351\024\354\206\>\271@\220*6\320\354\r\206*Xj\307\2120Vn\306\242\351\213b\007\026'0\315~\273\227\315H\375\321\020e]\3622\231\251\237\363c#\272\3707\<\262d\262\024\3425\026\242\206\223a\005S\<\301&m\265>\356\372o]Qk{E\366-\233c\2110\>\350\026%V\375r\0314\250\021\220\317\374\224\302\377\371 \361\317?6M\007\326\231Um\225-\2201\323\007\376\377\>Fts\224\202(\020w\033I;\313\275\364\311\332\357\206=\336d\363z\014\340\"1\302z\014\204\232\027\240f\337\r_\376\371:Q\237\257\230R\225O\352\205\236\341\242s\<\007a\014\272(u\276e\b-\312\354\274\214#\016\335O\215\303\340ajO!b\253\>\006Ss\272\212\350\303\177\2209\033\3576\235/\342\0250dg\306\033@\330\374\361r\250NG\316\212\231F\021\236C[\347\<\237\343\231\360!(\317\227\322V:RNVw\341\356\c\362\205_\352\312\335\313\222\234\352\345Oz\>\206\274\346\272\323\240ZL\365\360\301\266\225\324\367_\362\200%C\375g\342T\211\377|\341Ys\272\307\023K\>R\306B\023\".2\251\370\231\353\035x|F\270\343\205E\234\224\2400\<?\314\360F)\305\250\024\375\007i\331x\354o\274\177\360\027\205\354\243\245\374\220Q\340\323\\\225T\344\212`4\305=#5Yc\331\247d\005\332\374\244U\311\034\251\037\300\364ZJY\"f\262y\302\277\353=\014/V\236\337Lz\235p\373I\013\017\344K]KJ%\024\222f\c\024\315\n\255\253\317\300<\316l\231\311Bm\332Te\256\325\265\033j\217\311\313&7\317\222\022,\303\342f\245c\204\241\n\353\312\243\024%<\312\201\236\257\236{\320\273\344\352\034\005I2\343\017\275\236\020\026\204J\215\363\311\r\246d\211\356\213\377\235m\372\244qb\200b\324E,#,\210\221\005c\215\362\265,\255~\202\035r\264\013QZ\205\241b\033\272\000U$\302\201\000\332y\360\315\266T\237\336\372`\304U\262\234\273\366if\200\236\264\220_\253\363\305$:\210\214\313}\310\263\241\247,\tZ\346r\330k\335)\365\0361\201\023\201]Y5k\221\341\335S]T\353\032\275Jf\021\234\232\245\024|\031*2\252\332|\033`F\246\361RG\366\257\221\255\014)^j\352O?\323\301\377\260\347\320\205lmZ:\273\226\264\262\364\262\347\266\354\226\343h\240\346}\n\316\337a\035\356\267\033\317\335 \n\350\251\320\216#\023y\2201\025\201\005\031\377`\316~\022\347;2\367-#\367\340\024Q\202\256\215\311Z\241I\223\023\311Uq\365\037a[\272\036\324\000\252*x-\355\334\275\205\202jw\252:\263\221\365\307\\P\325\353\031\275S\261k;\345'\200U\2248\\\312\223?)\013X\3144\272C\352X\375\377C0\300'x\341\214]\032\013\315\201fw\231\032R\242\226L\212\240\004\262<d\\\310\370x\370\020\202`\331.\261J\317>Ks|\221\334\n\217\035\227s\027\316N\343\<\211\304\004\375D'L\033c\355\200\24493%#\3052\203\005\034\030\334T\360u\355\230\327l\2256S\242\377]\>\254V\303D7\030\037?\226\267\223\355Z\375\b\360\014\257\203\214\317G\247\325\273q\255\207\032\254\325\004\371\036'\350\244\014\222\343,\316\217.\>[\277\022\023M\>\375p\267\\u\227\250\272\331-\251\346\>\222& D\262\263B@\007)\345\367\r\273\037\2169\240\036L\265:\354\236\247J^\211\216\223\265\325;|> =\273U\213es\307\326\275\277|\01407\320G\313xZ{\300L}?\307S\236f\266\013\344\345P\217}=l\352\305\267\017O\316M\3556\242`\265fb\\;\034\275\274\333\304\237\\I\307\265\312r-sb\014bz\231\254\230\240&\305\346\350\251\207W\252\t\025\r\300hB\"\251\200\252+oR*j\024P\362\225\323\310s\325k\270\212\243)C\222\215\342L\2422\3259\205`\226U\274\0272C\301\350\264\264\263\276@\006@m\236\2645\213\033J\345\345|+`\264\276\304\246\b\345\022\274\364\027 \336\3223\315+<\357Z\332\336[\2553\250\271\027k7\\\254\210\256\324$\323\345\331\034\274x\256\253T\021!\007\3136\340\n\322\321Q\\\223\327h\244L\265\360\372M\316\211\334\364\265\343&\315\034\025\356)\321{\373/\325\363\252.\225\257\253\201\340\333\030\r\237Q\225\367*h\251p4\372\250XA{\340\024\253\372\036?+.T-[\307gc\374\345\201\02716e%\251\<j\tl|\271e\276\273X\267\365\203\207\r\331\034\251SKko^|\204*\275\246\004\034\223Ocl\301\370\305\304]~V\335\\\365\222\324\342\320\026\225\354\237\\\324-\232\246\276due\037*\234\210H\366\020=G\202d&\005\023\024\032\013\345\257\326\315j\354\251\307m\311\342s\366\2435\024!\254U\301V\<\272\341x\3528\246\275\357\034#\300\275\207,WS\330;d\027[\2736d\275\2672\253\2700\317\313\327\323+\346\202\344%\t\334\320\303\3447\236\361\256\364#\200\303\270\367\3758\037Y\226\234\215_n\244{>\271t\343>\225\344\315\203iP\221=7k\252>\213\034\367\024vT\211\261\227\371+\250M\374\024\235y\363\331A\253\356R]\303\221c\335\372\213$i\366/\224z\255\240*\244f\032ur4\307RY#\366\033U\352\372\225\233\327\252\220\340\302D\3534c\202\343\237\372\377N\2232\027\024\332\354\246\347\347\212tG\377\323\031\231\"V7\032)7\317k\232\242\3201\2307t]\276\223\265\334\242h9\212\342u)\034\332FZ\017\021U`\236;\036\372\035v\335\375\177Y8\375\300/(\335\367\000\000\021\272)\214\2659\330\030\247\377\347\267\243%\370\255\\\366\270\266\345N~\024\014VT:<\261 \214\322\371\344\212\253\014\343\032\0044uR\330r\210\343\253\020\243 W[\037\2467\374\304U\350+\344p\265\030O\317\344\036\336\201\256\n\355\370\004 \334\252(2\cy\237\340\242\225{iL\312\332\0325\006\t\352s!U\235\"\323-\334\247\360I\020[Zz\334\032\377\204\303\270\013-\033#/.\374\343\3108\303t\354b\231O\323\224\222\246\310\373\351!L\275vx<*\226\336\304\c\265\313H\227LG\305\021\n\201\243\247\213/L~\361\351\347tO!{\216j\374\254\334D\345\021\246\315\261\224\b\177U\0073\364\320W\030\377\030!\026\266\276\306\257\266\007{q|\277\313\355\353p\334.X\377\206<\365*Q<\341\032_\237\334\254\225\211(}Yc\013\336\356{\306~\017\250\262 m\202\353\013C\264\023:\237\021&mk\227\267\251R\351\351\267!\221\214b\370\006a*\233\201\367\376\225\031O\370z7\355\235\<\301\343\364\356\316\335\222\027W\213\231\271\253\246\264\221jw\235\311\<F%\317z\360\353}\365d\302k\021\323R9q\334\034\247\253\032\275\371\035\262_Q\274\024\211\334\275XH\326\327\0326\nUd\310n\262\314\370\177@\213\304\021(q\t\372\273\017Dh\225\000\005*>\025\243\027\241\301W\r\275\331\260a\2062\020\344p\017\240\360\177e|\324\244\332\231\335\211yv\030v\255\364\343\212G\237tkF\257e\031.\221X09\205\030\026eA7\322\361\250\254xL\211x&1%\310b\276\032\317\333oo2O\bN\227\246'9v\3518\316\331\307\214UF{K7\231\205>R<\235)2Sl\200\331\214\327\3647\321\t\034\241Fx\361\320\007@B\360\rq\213\347\014\337\264\375JvdGn\271\275%:\275aE\323\263\327\216-\022\007\000{Ck\375\037\n@\000\000\0001234" ];;
gap> Reset(GlobalMersenneTwister, seedMT);;
gap> Reset(GlobalRandomSource, seedRS);;
gap> G:=ClassicalMaximals("L",3,3)[4];;
gap> ri:=RecognizeGroup(G);;
gap> Size(ri);
24

#
gap> STOP_TEST("bugfix.tst");