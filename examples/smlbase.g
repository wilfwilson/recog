# A diagonal in A_5^1000 wr a prim. group on 1000 points:
gens1 := [[2,3,4,5,1],[1,2,4,5,3]];
gensd := List(gens1,ShallowCopy);
for i in [1..999] do
    for j in [1..2] do
        Append(gensd[j],gens1[j]+5*i);
    od;
od;
gensd := List(gensd,PermList);
gensp :=
[ (   1,787, 12,267,414,235,544,131,589)(   2,767,412,265,444,
      135,549,101,789)(   3,797,612,266,474,335,550,121,989)
    (   4,737,512,261,484, 35,547,111,289)(   5,747,112,269,404,
      735,542,161,489)(   6,777,312,270,424,935,543,191,689)
    (   7,717,212,264,434,535,541,181, 89)(   8,757,812,268,454,
      835,548,151,889)(   9,707,712,262,464,435,545,141,189)
    (  10,727,912,263,494,635,546,171,389)(  11,287, 14,237,514,
      231,584, 31,587)(  13,297,614,236,574,331,590, 21,987)
    (  15,247,114,239,504,731,582, 61,487)(  16,277,314,240,524,
      931,583, 91,687)(  17,217,214,234,534,531,581, 81, 87)
    (  18,257,814,238,554,831,588, 51,887)(  19,207,714,232,564,
      431,585, 41,187)(  20,227,914,233,594,631,586, 71,387)
    (  22,967,413,295,644,136,579,301,790)(  23,997,613,296,674,
      336,580,321,990)(  24,937,513,291,684, 36,577,311,290)
    (  25,947,113,299,604,736,572,361,490)(  26,977,313,300,624,
      936,573,391,690)(  27,917,213,294,634,536,571,381, 90)
    (  28,957,813,298,654,836,578,351,890)(  29,907,713,292,664,
      436,575,341,190)(  30,927,913,293,694,636,576,371,390)
    (  32,567,411,285, 44,137,519,201,784)(  33,597,611,286, 74,
      337,520,221,984)(  34,537,511,281, 84, 37,517,211,284)
    (  38,557,811,288, 54,837,518,251,884)(  39,507,711,282, 64,
      437,515,241,184)(  40,527,911,283, 94,637,516,271,384)
    (  42,167,419,205,744,132,569,401,785)(  43,197,619,206,774,
      332,570,421,985)(  45,147,119,209,704,732,562,461,485)
    (  46,177,319,210,724,932,563,491,685)(  47,117,219,204,734,
      532,561,481, 85)(  48,157,819,208,754,832,568,451,885)
    (  49,107,719,202,764,432,565,441,185)(  50,127,919,203,794,
      632,566,471,385)(  52,867,418,255,844,138,559,801,788)
    (  53,897,618,256,874,338,560,821,988)(  55,847,118,259,804,
      738,552,861,488)(  56,877,318,260,824,938,553,891,688)
    (  57,817,218,254,834,538,551,881, 88)(  58,857,818,258,854,
      838,558,851,888)(  59,807,718,252,864,438,555,841,188)
    (  60,827,918,253,894,638,556,871,388)(  62,467,415,245,144,
      139,509,701,782)(  63,497,615,246,174,339,510,721,982)
    (  65,447,115,249,104,739,502,761,482)(  66,477,315,250,124,
      939,503,791,682)(  67,417,215,244,134,539,501,781, 82)
    (  68,457,815,248,154,839,508,751,882)(  69,407,715,242,164,
      439,505,741,182)(  70,427,915,243,194,639,506,771,382)
    (  72,367,420,225,944,133,599,601,786)(  73,397,620,226,974,
      333,600,621,986)(  75,347,120,229,904,733,592,661,486)
    (  76,377,320,230,924,933,593,691,686)(  77,317,220,224,934,
      533,591,681, 86)(  78,357,820,228,954,833,598,651,886)
    (  79,307,720,222,964,433,595,641,186)(  80,327,920,223,994,
      633,596,671,386)(  83, 97,617,216,274,334,540,521,981)
    (  92,667,416,275,344,140,529,901,783)(  93,697,616,276,374,
      340,530,921,983)(  95,647,116,279,304,740,522,961,483)
    (  96,677,316,280,324,940,523,991,683)(  98,657,816,278,354,
      840,528,951,883)(  99,607,716,272,364,440,525,941,183)
    ( 100,627,916,273,394,640,526,971,383)( 102,769,402,765,442,
      165,449,105,749)( 103,799,602,766,472,365,450,125,949)
    ( 106,779,302,770,422,965,443,195,649)( 108,759,802,768,452,
      865,448,155,849)( 109,709,702,762,462,465,445,145,149)
    ( 110,729,902,763,492,665,446,175,349)( 122,969,403,795,642,
      166,479,305,750)( 123,999,603,796,672,366,480,325,950)
    ( 126,979,303,800,622,966,473,395,650)( 128,959,803,798,652,
      866,478,355,850)( 129,909,703,792,662,466,475,345,150)
    ( 130,929,903,793,692,666,476,375,350)( 142,169,409,705,742,
      162,469,405,745)( 143,199,609,706,772,362,470,425,945)
    ( 146,179,309,710,722,962,463,495,645)( 148,159,809,708,752,
      862,468,455,845)( 152,869,408,755,842,168,459,805,748)
    ( 153,899,608,756,872,368,460,825,948)( 156,879,308,760,822,
      968,453,895,648)( 158,859,808,758,852,868,458,855,848)
    ( 160,829,908,753,892,668,456,875,348)( 163,499,605,746,172,
      369,410,725,942)( 170,429,905,743,192,669,406,775,342)
    ( 173,399,610,726,972,363,500,625,946)( 176,379,310,730,922,
      963,493,695,646)( 178,359,810,728,952,863,498,655,846)
    ( 180,329,910,723,992,663,496,675,346)( 193,699,606,776,372,
      370,430,925,943)( 196,679,306,780,322,970,423,995,643)
    ( 198,659,806,778,352,870,428,955,843)( 200,629,906,773,392,
      670,426,975,343)( 323,1000,623,996,673,396,680,326,980)
    ( 328,960,823,998,653,896,678,356,880)( 330,930,923,993,693,
      696,676,376,380)( 353,900,628,956,873,398,660,826,978)
    ( 358,860,828,958,853,898,658,856,878)( 360,830,928,953,893,
      698,656,876,378)( 373,400,630,926,973,393,700,626,976),
  (   1,564,799,828,616, 81,164,709,528,696,881,114,  9,568,796,
     821,614, 89,168,706,521,694,889,118,  6,561,794,829,618,
       86,161,704,529,698,886,111,  4,569,798,826,611, 84,169,
      708,526,691,884,119,  8,566,791,824,619, 88,166,701,524,
      699,888,116)(   2,570,795,823,617, 82,170,705,523,697,882,
      120,  5,563,797,822,620, 85,163,707,522,700,885,113,  7,
      562,800,825,613, 87,162,710,525,693,887,112, 10,565,793,
      827,612, 90,165,703,527,692,890,115,  3,567,792,830,615,
       83,167,702,530,695,883,117)(  11, 64,769,728,626,681,184,
      109,508,596,891,814, 19, 68,766,721,624,689,188,106,501,
      594,899,818, 16, 61,764,729,628,686,181,104,509,598,896,
      811, 14, 69,768,726,621,684,189,108,506,591,894,819, 18,
       66,761,724,629,688,186,101,504,599,898,816)(  12, 70,765,
      723,627,682,190,105,503,597,892,820, 15, 63,767,722,630,
      685,183,107,502,600,895,813, 17, 62,770,725,623,687,182,
      110,505,593,897,812, 20, 65,763,727,622,690,185,103,507,
      592,900,815, 13, 67,762,730,625,683,187,102,510,595,893,
      817)(  21,664,789,128,606,581,194,809,518, 96,861,714, 29,
      668,786,121,604,589,198,806,511, 94,869,718, 26,661,784,
      129,608,586,191,804,519, 98,866,711, 24,669,788,126,601,
      584,199,808,516, 91,864,719, 28,666,781,124,609,588,196,
      801,514, 99,868,716)(  22,670,785,123,607,582,200,805,513,
       97,862,720, 25,663,787,122,610,585,193,807,512,100,865,
      713, 27,662,790,125,603,587,192,810,515, 93,867,712, 30,
      665,783,127,602,590,195,803,517, 92,870,715, 23,667,782,
      130,605,583,197,802,520, 95,863,717)(  31,464,739,428,636,
      481,134,409,538,496,831,414, 39,468,736,421,634,489,138,
      406,531,494,839,418, 36,461,734,429,638,486,131,404,539,
      498,836,411, 34,469,738,426,631,484,139,408,536,491,834,
      419, 38,466,731,424,639,488,136,401,534,499,838,416)
    (  32,470,735,423,637,482,140,405,533,497,832,420, 35,463,
      737,422,640,485,133,407,532,500,835,413, 37,462,740,425,
      633,487,132,410,535,493,837,412, 40,465,733,427,632,490,
      135,403,537,492,840,415, 33,467,732,430,635,483,137,402,
      540,495,833,417)(  41,264,759,928,676,381,144,209,558,996,
      871,314, 49,268,756,921,674,389,148,206,551,994,879,318,
       46,261,754,929,678,386,141,204,559,998,876,311, 44,269,
      758,926,671,384,149,208,556,991,874,319, 48,266,751,924,
      679,388,146,201,554,999,878,316)(  42,270,755,923,677,382,
      150,205,553,997,872,320, 45,263,757,922,680,385,143,207,
      552,1000,875,313, 47,262,760,925,673,387,142,210,555,993,
      877,312, 50,265,753,927,672,390,145,203,557,992,880,315,
       43,267,752,930,675,383,147,202,560,995,873,317)
    (  51,964,779,328,646,281,154,909,578,396,841,214, 59,968,
      776,321,644,289,158,906,571,394,849,218, 56,961,774,329,
      648,286,151,904,579,398,846,211, 54,969,778,326,641,284,
      159,908,576,391,844,219, 58,966,771,324,649,288,156,901,
      574,399,848,216)(  52,970,775,323,647,282,160,905,573,397,
      842,220, 55,963,777,322,650,285,153,907,572,400,845,213,
       57,962,780,325,643,287,152,910,575,393,847,212, 60,965,
      773,327,642,290,155,903,577,392,850,215, 53,967,772,330,
      645,283,157,902,580,395,843,217)(  71,364,749,228,656,981,
      174,309,548,296,851,914, 79,368,746,221,654,989,178,306,
      541,294,859,918, 76,361,744,229,658,986,171,304,549,298,
      856,911, 74,369,748,226,651,984,179,308,546,291,854,919,
       78,366,741,224,659,988,176,301,544,299,858,916)
    (  72,370,745,223,657,982,180,305,543,297,852,920, 75,363,
      747,222,660,985,173,307,542,300,855,913, 77,362,750,225,
      653,987,172,310,545,293,857,912, 80,365,743,227,652,990,
      175,303,547,292,860,915, 73,367,742,230,655,983,177,302,
      550,295,853,917)( 231,454,939,478,336,441,234,459,938,476,
      331,444,239,458,936,471,334,449,238,456,931,474,339,448,
      236,451,934,479,338,446)( 232,460,935,473,337,442,240,455,
      933,477,332,450,235,453,937,472,340,445,233,457,932,480,
      335,443,237,452,940,475,333,447)( 241,254,959,978,376,341,
      244,259,958,976,371,344,249,258,956,971,374,349,248,256,
      951,974,379,348,246,251,954,979,378,346)( 242,260,955,973,
      377,342,250,255,953,977,372,350,245,253,957,972,380,345,
      243,257,952,980,375,343,247,252,960,975,373,347)
    ( 271,354,949,278,356,941,274,359,948,276,351,944,279,358,
      946)( 272,360,945,273,357,942,280,355,943,277,352,950,275,
      353,947)( 431,434,439,438,436)( 432,440,435,433,437) ];
gensp := List(gensp,ListPerm);
l := [];
for i in gensp[1] do
    Append(l,[i*5-4..i*5]);
od;
Add(gensd,PermList(l));
l := [];
for i in gensp[2] do
    Append(l,[i*5-4..i*5]);
od;
Add(gensd,PermList(l));
g := Group(gensd);

