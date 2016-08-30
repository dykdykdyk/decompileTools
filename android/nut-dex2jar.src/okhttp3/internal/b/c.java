package okhttp3.internal.b;

import a.i;
import a.j;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okhttp3.aa;
import okhttp3.ad;
import okhttp3.ap;
import okhttp3.bd;
import okhttp3.internal.a.e;
import okhttp3.internal.a.t;
import okhttp3.internal.http.ab;

public final class c extends okhttp3.internal.a.n
  implements okhttp3.n
{
  public final bd b;
  public Socket c;
  public Socket d;
  public aa e;
  public volatile e f;
  public int g;
  public j h;
  public i i;
  public int j;
  public final List<Reference<ab>> k = new ArrayList();
  public boolean l;
  public long m = 9223372036854775807L;
  private ap n;

  public c(bd parambd)
  {
    this.b = parambd;
  }

  public final bd a()
  {
    return this.b;
  }

  // ERROR //
  public final void a(int paramInt1, int paramInt2, int paramInt3, List<okhttp3.q> paramList, boolean paramBoolean)
    throws okhttp3.internal.http.RouteException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   4: ifnull +13 -> 17
    //   7: new 67	java/lang/IllegalStateException
    //   10: dup
    //   11: ldc 69
    //   13: invokespecial 72	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: new 74	okhttp3/internal/a
    //   20: dup
    //   21: aload 4
    //   23: invokespecial 77	okhttp3/internal/a:<init>	(Ljava/util/List;)V
    //   26: astore 15
    //   28: aload_0
    //   29: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   32: getfield 82	okhttp3/bd:b	Ljava/net/Proxy;
    //   35: astore 16
    //   37: aload_0
    //   38: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   41: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   44: astore 17
    //   46: aload_0
    //   47: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   50: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   53: getfield 90	okhttp3/a:i	Ljavax/net/ssl/SSLSocketFactory;
    //   56: ifnonnull +1487 -> 1543
    //   59: aload 4
    //   61: getstatic 95	okhttp3/q:c	Lokhttp3/q;
    //   64: invokeinterface 101 2 0
    //   69: ifne +1474 -> 1543
    //   72: new 53	okhttp3/internal/http/RouteException
    //   75: dup
    //   76: new 103	java/net/UnknownServiceException
    //   79: dup
    //   80: new 105	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 107
    //   86: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload 4
    //   91: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   94: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: invokespecial 117	java/net/UnknownServiceException:<init>	(Ljava/lang/String;)V
    //   100: invokespecial 120	okhttp3/internal/http/RouteException:<init>	(Ljava/io/IOException;)V
    //   103: athrow
    //   104: aconst_null
    //   105: astore 11
    //   107: aload_0
    //   108: aload 12
    //   110: putfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   113: aload_0
    //   114: aload_0
    //   115: getfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   118: invokestatic 127	a/q:b	(Ljava/net/Socket;)La/aa;
    //   121: invokestatic 130	a/q:a	(La/aa;)La/j;
    //   124: putfield 132	okhttp3/internal/b/c:h	La/j;
    //   127: aload_0
    //   128: aload_0
    //   129: getfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   132: invokestatic 135	a/q:a	(Ljava/net/Socket;)La/z;
    //   135: invokestatic 138	a/q:a	(La/z;)La/i;
    //   138: putfield 140	okhttp3/internal/b/c:i	La/i;
    //   141: aload_0
    //   142: aload 14
    //   144: putfield 142	okhttp3/internal/b/c:e	Lokhttp3/aa;
    //   147: aload 11
    //   149: ifnull +1278 -> 1427
    //   152: aload 11
    //   154: invokestatic 147	okhttp3/ap:a	(Ljava/lang/String;)Lokhttp3/ap;
    //   157: astore 11
    //   159: aload_0
    //   160: aload 11
    //   162: putfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   165: aload 12
    //   167: ifnull +11 -> 178
    //   170: invokestatic 152	okhttp3/internal/j:a	()Lokhttp3/internal/j;
    //   173: aload 12
    //   175: invokevirtual 155	okhttp3/internal/j:a	(Ljavax/net/ssl/SSLSocket;)V
    //   178: aload_0
    //   179: getfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   182: getstatic 157	okhttp3/ap:c	Lokhttp3/ap;
    //   185: if_acmpeq +13 -> 198
    //   188: aload_0
    //   189: getfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   192: getstatic 159	okhttp3/ap:d	Lokhttp3/ap;
    //   195: if_acmpne +1265 -> 1460
    //   198: aload_0
    //   199: getfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   202: iconst_0
    //   203: invokevirtual 165	java/net/Socket:setSoTimeout	(I)V
    //   206: new 167	okhttp3/internal/a/m
    //   209: dup
    //   210: invokespecial 168	okhttp3/internal/a/m:<init>	()V
    //   213: astore 11
    //   215: aload_0
    //   216: getfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   219: astore 12
    //   221: aload_0
    //   222: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   225: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   228: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   231: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   234: astore 13
    //   236: aload_0
    //   237: getfield 132	okhttp3/internal/b/c:h	La/j;
    //   240: astore 14
    //   242: aload_0
    //   243: getfield 140	okhttp3/internal/b/c:i	La/i;
    //   246: astore 18
    //   248: aload 11
    //   250: aload 12
    //   252: putfield 178	okhttp3/internal/a/m:a	Ljava/net/Socket;
    //   255: aload 11
    //   257: aload 13
    //   259: putfield 179	okhttp3/internal/a/m:b	Ljava/lang/String;
    //   262: aload 11
    //   264: aload 14
    //   266: putfield 181	okhttp3/internal/a/m:c	La/j;
    //   269: aload 11
    //   271: aload 18
    //   273: putfield 183	okhttp3/internal/a/m:d	La/i;
    //   276: aload 11
    //   278: aload_0
    //   279: getfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   282: putfield 185	okhttp3/internal/a/m:f	Lokhttp3/ap;
    //   285: aload 11
    //   287: aload_0
    //   288: putfield 188	okhttp3/internal/a/m:e	Lokhttp3/internal/a/n;
    //   291: new 190	okhttp3/internal/a/e
    //   294: dup
    //   295: aload 11
    //   297: iconst_0
    //   298: invokespecial 193	okhttp3/internal/a/e:<init>	(Lokhttp3/internal/a/m;B)V
    //   301: astore 11
    //   303: aload 11
    //   305: getfield 196	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   308: invokeinterface 200 1 0
    //   313: aload 11
    //   315: getfield 196	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   318: aload 11
    //   320: getfield 203	okhttp3/internal/a/e:e	Lokhttp3/internal/a/ap;
    //   323: invokeinterface 206 2 0
    //   328: aload 11
    //   330: getfield 203	okhttp3/internal/a/e:e	Lokhttp3/internal/a/ap;
    //   333: invokevirtual 211	okhttp3/internal/a/ap:b	()I
    //   336: istore 6
    //   338: iload 6
    //   340: ldc 212
    //   342: if_icmpeq +20 -> 362
    //   345: aload 11
    //   347: getfield 196	okhttp3/internal/a/e:i	Lokhttp3/internal/a/d;
    //   350: iconst_0
    //   351: iload 6
    //   353: ldc 212
    //   355: isub
    //   356: i2l
    //   357: invokeinterface 215 4 0
    //   362: aload_0
    //   363: aload 11
    //   365: invokevirtual 217	okhttp3/internal/a/e:a	()I
    //   368: putfield 219	okhttp3/internal/b/c:j	I
    //   371: aload_0
    //   372: aload 11
    //   374: putfield 221	okhttp3/internal/b/c:f	Lokhttp3/internal/a/e;
    //   377: aload_0
    //   378: getfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   381: ifnonnull +1137 -> 1518
    //   384: aload 16
    //   386: invokevirtual 227	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   389: getstatic 233	java/net/Proxy$Type:DIRECT	Ljava/net/Proxy$Type;
    //   392: if_acmpeq +14 -> 406
    //   395: aload 16
    //   397: invokevirtual 227	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   400: getstatic 236	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   403: if_acmpne +581 -> 984
    //   406: aload 17
    //   408: getfield 239	okhttp3/a:c	Ljavax/net/SocketFactory;
    //   411: invokevirtual 245	javax/net/SocketFactory:createSocket	()Ljava/net/Socket;
    //   414: astore 11
    //   416: aload_0
    //   417: aload 11
    //   419: putfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   422: aload_0
    //   423: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   426: iload_2
    //   427: invokevirtual 165	java/net/Socket:setSoTimeout	(I)V
    //   430: invokestatic 152	okhttp3/internal/j:a	()Lokhttp3/internal/j;
    //   433: aload_0
    //   434: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   437: aload_0
    //   438: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   441: getfield 250	okhttp3/bd:c	Ljava/net/InetSocketAddress;
    //   444: iload_1
    //   445: invokevirtual 253	okhttp3/internal/j:a	(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    //   448: aload_0
    //   449: aload_0
    //   450: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   453: invokestatic 127	a/q:b	(Ljava/net/Socket;)La/aa;
    //   456: invokestatic 130	a/q:a	(La/aa;)La/j;
    //   459: putfield 132	okhttp3/internal/b/c:h	La/j;
    //   462: aload_0
    //   463: aload_0
    //   464: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   467: invokestatic 135	a/q:a	(Ljava/net/Socket;)La/z;
    //   470: invokestatic 138	a/q:a	(La/z;)La/i;
    //   473: putfield 140	okhttp3/internal/b/c:i	La/i;
    //   476: aload_0
    //   477: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   480: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   483: getfield 90	okhttp3/a:i	Ljavax/net/ssl/SSLSocketFactory;
    //   486: ifnull +956 -> 1442
    //   489: aload_0
    //   490: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   493: astore 11
    //   495: aload 11
    //   497: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   500: getfield 90	okhttp3/a:i	Ljavax/net/ssl/SSLSocketFactory;
    //   503: ifnull +1049 -> 1552
    //   506: aload 11
    //   508: getfield 82	okhttp3/bd:b	Ljava/net/Proxy;
    //   511: invokevirtual 227	java/net/Proxy:type	()Ljava/net/Proxy$Type;
    //   514: getstatic 236	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   517: if_acmpne +1035 -> 1552
    //   520: iconst_1
    //   521: istore 6
    //   523: iload 6
    //   525: ifeq +574 -> 1099
    //   528: new 255	okhttp3/au
    //   531: dup
    //   532: invokespecial 256	okhttp3/au:<init>	()V
    //   535: aload_0
    //   536: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   539: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   542: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   545: invokevirtual 259	okhttp3/au:a	(Lokhttp3/ad;)Lokhttp3/au;
    //   548: ldc_w 261
    //   551: aload_0
    //   552: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   555: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   558: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   561: iconst_1
    //   562: invokestatic 266	okhttp3/internal/o:a	(Lokhttp3/ad;Z)Ljava/lang/String;
    //   565: invokevirtual 269	okhttp3/au:a	(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/au;
    //   568: ldc_w 271
    //   571: ldc_w 273
    //   574: invokevirtual 269	okhttp3/au:a	(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/au;
    //   577: ldc_w 275
    //   580: ldc_w 277
    //   583: invokevirtual 269	okhttp3/au:a	(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/au;
    //   586: invokevirtual 280	okhttp3/au:a	()Lokhttp3/at;
    //   589: astore 11
    //   591: aload 11
    //   593: getfield 283	okhttp3/at:a	Lokhttp3/ad;
    //   596: astore 12
    //   598: new 105	java/lang/StringBuilder
    //   601: dup
    //   602: ldc_w 285
    //   605: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   608: aload 12
    //   610: iconst_1
    //   611: invokestatic 266	okhttp3/internal/o:a	(Lokhttp3/ad;Z)Ljava/lang/String;
    //   614: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   617: ldc_w 290
    //   620: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   626: astore 13
    //   628: new 292	okhttp3/internal/http/e
    //   631: dup
    //   632: aconst_null
    //   633: aload_0
    //   634: getfield 132	okhttp3/internal/b/c:h	La/j;
    //   637: aload_0
    //   638: getfield 140	okhttp3/internal/b/c:i	La/i;
    //   641: invokespecial 295	okhttp3/internal/http/e:<init>	(Lokhttp3/internal/http/ab;La/j;La/i;)V
    //   644: astore 12
    //   646: aload_0
    //   647: getfield 132	okhttp3/internal/b/c:h	La/j;
    //   650: invokeinterface 301 1 0
    //   655: iload_2
    //   656: i2l
    //   657: getstatic 307	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   660: invokevirtual 312	a/ab:a	(JLjava/util/concurrent/TimeUnit;)La/ab;
    //   663: pop
    //   664: aload_0
    //   665: getfield 140	okhttp3/internal/b/c:i	La/i;
    //   668: invokeinterface 315 1 0
    //   673: iload_3
    //   674: i2l
    //   675: getstatic 307	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   678: invokevirtual 312	a/ab:a	(JLjava/util/concurrent/TimeUnit;)La/ab;
    //   681: pop
    //   682: aload 12
    //   684: aload 11
    //   686: getfield 318	okhttp3/at:c	Lokhttp3/ab;
    //   689: aload 13
    //   691: invokevirtual 321	okhttp3/internal/http/e:a	(Lokhttp3/ab;Ljava/lang/String;)V
    //   694: aload 12
    //   696: invokevirtual 323	okhttp3/internal/http/e:c	()V
    //   699: aload 12
    //   701: invokevirtual 326	okhttp3/internal/http/e:d	()Lokhttp3/ba;
    //   704: astore 13
    //   706: aload 13
    //   708: aload 11
    //   710: putfield 331	okhttp3/ba:a	Lokhttp3/at;
    //   713: aload 13
    //   715: invokevirtual 334	okhttp3/ba:a	()Lokhttp3/az;
    //   718: astore 11
    //   720: aload 11
    //   722: invokestatic 339	okhttp3/internal/http/v:a	(Lokhttp3/az;)J
    //   725: lstore 9
    //   727: lload 9
    //   729: lstore 7
    //   731: lload 9
    //   733: ldc2_w 340
    //   736: lcmp
    //   737: ifne +6 -> 743
    //   740: lconst_0
    //   741: lstore 7
    //   743: aload 12
    //   745: lload 7
    //   747: invokevirtual 344	okhttp3/internal/http/e:a	(J)La/aa;
    //   750: astore 12
    //   752: aload 12
    //   754: ldc_w 345
    //   757: getstatic 307	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   760: invokestatic 348	okhttp3/internal/o:a	(La/aa;ILjava/util/concurrent/TimeUnit;)Z
    //   763: pop
    //   764: aload 12
    //   766: invokeinterface 353 1 0
    //   771: aload 11
    //   773: getfield 357	okhttp3/az:b	I
    //   776: lookupswitch	default:+773->1549, 200:+255->1031, 407:+296->1072
    //   805: nop
    //   806: dstore 89
    //   808: new 105	java/lang/StringBuilder
    //   811: dup
    //   812: ldc_w 359
    //   815: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   818: aload 11
    //   820: getfield 357	okhttp3/az:b	I
    //   823: invokevirtual 362	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   826: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   829: invokespecial 363	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   832: athrow
    //   833: astore 11
    //   835: aload_0
    //   836: getfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   839: invokestatic 366	okhttp3/internal/o:a	(Ljava/net/Socket;)V
    //   842: aload_0
    //   843: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   846: invokestatic 366	okhttp3/internal/o:a	(Ljava/net/Socket;)V
    //   849: aload_0
    //   850: aconst_null
    //   851: putfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   854: aload_0
    //   855: aconst_null
    //   856: putfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   859: aload_0
    //   860: aconst_null
    //   861: putfield 132	okhttp3/internal/b/c:h	La/j;
    //   864: aload_0
    //   865: aconst_null
    //   866: putfield 140	okhttp3/internal/b/c:i	La/i;
    //   869: aload_0
    //   870: aconst_null
    //   871: putfield 142	okhttp3/internal/b/c:e	Lokhttp3/aa;
    //   874: aload_0
    //   875: aconst_null
    //   876: putfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   879: aload 4
    //   881: ifnonnull +587 -> 1468
    //   884: new 53	okhttp3/internal/http/RouteException
    //   887: dup
    //   888: aload 11
    //   890: invokespecial 120	okhttp3/internal/http/RouteException:<init>	(Ljava/io/IOException;)V
    //   893: astore 4
    //   895: iload 5
    //   897: ifeq +84 -> 981
    //   900: aload 15
    //   902: iconst_1
    //   903: putfield 368	okhttp3/internal/a:b	Z
    //   906: aload 15
    //   908: getfield 370	okhttp3/internal/a:a	Z
    //   911: ifeq +598 -> 1509
    //   914: aload 11
    //   916: instanceof 372
    //   919: ifne +590 -> 1509
    //   922: aload 11
    //   924: instanceof 374
    //   927: ifne +582 -> 1509
    //   930: aload 11
    //   932: instanceof 376
    //   935: ifeq +14 -> 949
    //   938: aload 11
    //   940: invokevirtual 380	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   943: instanceof 382
    //   946: ifne +563 -> 1509
    //   949: aload 11
    //   951: instanceof 384
    //   954: ifne +555 -> 1509
    //   957: aload 11
    //   959: instanceof 376
    //   962: ifne +11 -> 973
    //   965: aload 11
    //   967: instanceof 386
    //   970: ifeq +539 -> 1509
    //   973: iconst_1
    //   974: istore 6
    //   976: iload 6
    //   978: ifne +537 -> 1515
    //   981: aload 4
    //   983: athrow
    //   984: new 161	java/net/Socket
    //   987: dup
    //   988: aload 16
    //   990: invokespecial 389	java/net/Socket:<init>	(Ljava/net/Proxy;)V
    //   993: astore 11
    //   995: goto -579 -> 416
    //   998: astore 11
    //   1000: new 59	java/net/ConnectException
    //   1003: dup
    //   1004: new 105	java/lang/StringBuilder
    //   1007: dup
    //   1008: ldc_w 391
    //   1011: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1014: aload_0
    //   1015: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   1018: getfield 250	okhttp3/bd:c	Ljava/net/InetSocketAddress;
    //   1021: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1024: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1027: invokespecial 392	java/net/ConnectException:<init>	(Ljava/lang/String;)V
    //   1030: athrow
    //   1031: aload_0
    //   1032: getfield 132	okhttp3/internal/b/c:h	La/j;
    //   1035: invokeinterface 395 1 0
    //   1040: invokevirtual 400	a/f:c	()Z
    //   1043: ifeq +18 -> 1061
    //   1046: aload_0
    //   1047: getfield 140	okhttp3/internal/b/c:i	La/i;
    //   1050: invokeinterface 401 1 0
    //   1055: invokevirtual 400	a/f:c	()Z
    //   1058: ifne +41 -> 1099
    //   1061: new 57	java/io/IOException
    //   1064: dup
    //   1065: ldc_w 403
    //   1068: invokespecial 363	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1071: athrow
    //   1072: aload_0
    //   1073: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   1076: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   1079: getfield 406	okhttp3/a:d	Lokhttp3/b;
    //   1082: invokeinterface 409 1 0
    //   1087: pop
    //   1088: new 57	java/io/IOException
    //   1091: dup
    //   1092: ldc_w 411
    //   1095: invokespecial 363	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1098: athrow
    //   1099: aload_0
    //   1100: getfield 47	okhttp3/internal/b/c:b	Lokhttp3/bd;
    //   1103: getfield 85	okhttp3/bd:a	Lokhttp3/a;
    //   1106: astore 13
    //   1108: aload 13
    //   1110: getfield 90	okhttp3/a:i	Ljavax/net/ssl/SSLSocketFactory;
    //   1113: astore 12
    //   1115: aconst_null
    //   1116: astore 11
    //   1118: aconst_null
    //   1119: astore 14
    //   1121: aload 12
    //   1123: aload_0
    //   1124: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   1127: aload 13
    //   1129: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1132: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   1135: aload 13
    //   1137: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1140: getfield 413	okhttp3/ad:c	I
    //   1143: iconst_1
    //   1144: invokevirtual 418	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   1147: checkcast 420	javax/net/ssl/SSLSocket
    //   1150: astore 12
    //   1152: aload 15
    //   1154: aload 12
    //   1156: invokevirtual 423	okhttp3/internal/a:a	(Ljavax/net/ssl/SSLSocket;)Lokhttp3/q;
    //   1159: astore 11
    //   1161: aload 11
    //   1163: getfield 425	okhttp3/q:e	Z
    //   1166: ifeq +24 -> 1190
    //   1169: invokestatic 152	okhttp3/internal/j:a	()Lokhttp3/internal/j;
    //   1172: aload 12
    //   1174: aload 13
    //   1176: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1179: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   1182: aload 13
    //   1184: getfield 427	okhttp3/a:e	Ljava/util/List;
    //   1187: invokevirtual 430	okhttp3/internal/j:a	(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    //   1190: aload 12
    //   1192: invokevirtual 433	javax/net/ssl/SSLSocket:startHandshake	()V
    //   1195: aload 12
    //   1197: invokevirtual 437	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   1200: invokestatic 442	okhttp3/aa:a	(Ljavax/net/ssl/SSLSession;)Lokhttp3/aa;
    //   1203: astore 14
    //   1205: aload 13
    //   1207: getfield 445	okhttp3/a:j	Ljavax/net/ssl/HostnameVerifier;
    //   1210: aload 13
    //   1212: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1215: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   1218: aload 12
    //   1220: invokevirtual 437	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   1223: invokeinterface 451 3 0
    //   1228: ifne +157 -> 1385
    //   1231: aload 14
    //   1233: getfield 453	okhttp3/aa:b	Ljava/util/List;
    //   1236: iconst_0
    //   1237: invokeinterface 457 2 0
    //   1242: checkcast 459	java/security/cert/X509Certificate
    //   1245: astore 11
    //   1247: new 384	javax/net/ssl/SSLPeerUnverifiedException
    //   1250: dup
    //   1251: new 105	java/lang/StringBuilder
    //   1254: dup
    //   1255: ldc_w 461
    //   1258: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1261: aload 13
    //   1263: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1266: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   1269: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1272: ldc_w 463
    //   1275: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1278: aload 11
    //   1280: invokestatic 468	okhttp3/j:a	(Ljava/security/cert/Certificate;)Ljava/lang/String;
    //   1283: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1286: ldc_w 470
    //   1289: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1292: aload 11
    //   1294: invokevirtual 474	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   1297: invokeinterface 479 1 0
    //   1302: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1305: ldc_w 481
    //   1308: invokevirtual 288	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1311: aload 11
    //   1313: invokestatic 486	okhttp3/internal/c/d:a	(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    //   1316: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1319: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1322: invokespecial 487	javax/net/ssl/SSLPeerUnverifiedException:<init>	(Ljava/lang/String;)V
    //   1325: athrow
    //   1326: astore 13
    //   1328: aload 12
    //   1330: astore 11
    //   1332: aload 13
    //   1334: invokestatic 490	okhttp3/internal/o:a	(Ljava/lang/AssertionError;)Z
    //   1337: ifeq +98 -> 1435
    //   1340: aload 12
    //   1342: astore 11
    //   1344: new 57	java/io/IOException
    //   1347: dup
    //   1348: aload 13
    //   1350: invokespecial 493	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   1353: athrow
    //   1354: astore 13
    //   1356: aload 11
    //   1358: astore 12
    //   1360: aload 13
    //   1362: astore 11
    //   1364: aload 12
    //   1366: ifnull +11 -> 1377
    //   1369: invokestatic 152	okhttp3/internal/j:a	()Lokhttp3/internal/j;
    //   1372: aload 12
    //   1374: invokevirtual 155	okhttp3/internal/j:a	(Ljavax/net/ssl/SSLSocket;)V
    //   1377: aload 12
    //   1379: invokestatic 366	okhttp3/internal/o:a	(Ljava/net/Socket;)V
    //   1382: aload 11
    //   1384: athrow
    //   1385: aload 13
    //   1387: getfield 496	okhttp3/a:k	Lokhttp3/j;
    //   1390: aload 13
    //   1392: getfield 171	okhttp3/a:a	Lokhttp3/ad;
    //   1395: getfield 176	okhttp3/ad:b	Ljava/lang/String;
    //   1398: aload 14
    //   1400: getfield 453	okhttp3/aa:b	Ljava/util/List;
    //   1403: invokevirtual 499	okhttp3/j:a	(Ljava/lang/String;Ljava/util/List;)V
    //   1406: aload 11
    //   1408: getfield 425	okhttp3/q:e	Z
    //   1411: ifeq -1307 -> 104
    //   1414: invokestatic 152	okhttp3/internal/j:a	()Lokhttp3/internal/j;
    //   1417: aload 12
    //   1419: invokevirtual 502	okhttp3/internal/j:b	(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    //   1422: astore 11
    //   1424: goto -1317 -> 107
    //   1427: getstatic 504	okhttp3/ap:b	Lokhttp3/ap;
    //   1430: astore 11
    //   1432: goto -1273 -> 159
    //   1435: aload 12
    //   1437: astore 11
    //   1439: aload 13
    //   1441: athrow
    //   1442: aload_0
    //   1443: getstatic 504	okhttp3/ap:b	Lokhttp3/ap;
    //   1446: putfield 65	okhttp3/internal/b/c:n	Lokhttp3/ap;
    //   1449: aload_0
    //   1450: aload_0
    //   1451: getfield 247	okhttp3/internal/b/c:c	Ljava/net/Socket;
    //   1454: putfield 122	okhttp3/internal/b/c:d	Ljava/net/Socket;
    //   1457: goto -1279 -> 178
    //   1460: aload_0
    //   1461: iconst_1
    //   1462: putfield 219	okhttp3/internal/b/c:j	I
    //   1465: goto -1088 -> 377
    //   1468: aload 4
    //   1470: getfield 507	okhttp3/internal/http/RouteException:b	Ljava/io/IOException;
    //   1473: astore 12
    //   1475: getstatic 510	okhttp3/internal/http/RouteException:a	Ljava/lang/reflect/Method;
    //   1478: ifnull +21 -> 1499
    //   1481: getstatic 510	okhttp3/internal/http/RouteException:a	Ljava/lang/reflect/Method;
    //   1484: aload 11
    //   1486: iconst_1
    //   1487: anewarray 512	java/lang/Object
    //   1490: dup
    //   1491: iconst_0
    //   1492: aload 12
    //   1494: aastore
    //   1495: invokevirtual 518	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   1498: pop
    //   1499: aload 4
    //   1501: aload 11
    //   1503: putfield 507	okhttp3/internal/http/RouteException:b	Ljava/io/IOException;
    //   1506: goto -611 -> 895
    //   1509: iconst_0
    //   1510: istore 6
    //   1512: goto -536 -> 976
    //   1515: goto -1138 -> 377
    //   1518: return
    //   1519: astore 12
    //   1521: goto -22 -> 1499
    //   1524: astore 12
    //   1526: goto -27 -> 1499
    //   1529: astore 11
    //   1531: goto -167 -> 1364
    //   1534: astore 13
    //   1536: aload 14
    //   1538: astore 12
    //   1540: goto -212 -> 1328
    //   1543: aconst_null
    //   1544: astore 4
    //   1546: goto -1169 -> 377
    //   1549: goto -745 -> 804
    //   1552: iconst_0
    //   1553: istore 6
    //   1555: goto -1032 -> 523
    //
    // Exception table:
    //   from	to	target	type
    //   170	178	833	java/io/IOException
    //   178	198	833	java/io/IOException
    //   198	338	833	java/io/IOException
    //   345	362	833	java/io/IOException
    //   362	377	833	java/io/IOException
    //   384	406	833	java/io/IOException
    //   406	416	833	java/io/IOException
    //   416	430	833	java/io/IOException
    //   430	448	833	java/io/IOException
    //   448	520	833	java/io/IOException
    //   528	727	833	java/io/IOException
    //   743	804	833	java/io/IOException
    //   804	833	833	java/io/IOException
    //   984	995	833	java/io/IOException
    //   1000	1031	833	java/io/IOException
    //   1031	1061	833	java/io/IOException
    //   1061	1072	833	java/io/IOException
    //   1072	1099	833	java/io/IOException
    //   1099	1115	833	java/io/IOException
    //   1369	1377	833	java/io/IOException
    //   1377	1385	833	java/io/IOException
    //   1442	1457	833	java/io/IOException
    //   1460	1465	833	java/io/IOException
    //   430	448	998	java/net/ConnectException
    //   107	147	1326	java/lang/AssertionError
    //   152	159	1326	java/lang/AssertionError
    //   159	165	1326	java/lang/AssertionError
    //   1152	1190	1326	java/lang/AssertionError
    //   1190	1326	1326	java/lang/AssertionError
    //   1385	1424	1326	java/lang/AssertionError
    //   1427	1432	1326	java/lang/AssertionError
    //   1121	1152	1354	finally
    //   1332	1340	1354	finally
    //   1344	1354	1354	finally
    //   1439	1442	1354	finally
    //   1481	1499	1519	java/lang/reflect/InvocationTargetException
    //   1481	1499	1524	java/lang/IllegalAccessException
    //   107	147	1529	finally
    //   152	159	1529	finally
    //   159	165	1529	finally
    //   1152	1190	1529	finally
    //   1190	1326	1529	finally
    //   1385	1424	1529	finally
    //   1427	1432	1529	finally
    //   1121	1152	1534	java/lang/AssertionError
  }

  public final void a(e parame)
  {
    this.j = parame.a();
  }

  public final void a(t paramt)
    throws IOException
  {
    paramt.a(okhttp3.internal.a.a.k);
  }

  public final boolean a(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((this.d.isClosed()) || (this.d.isInputShutdown()) || (this.d.isOutputShutdown()))
      bool1 = false;
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      }
      while (this.f != null);
      bool1 = bool2;
    }
    while (!paramBoolean);
    try
    {
      int i1 = this.d.getSoTimeout();
      try
      {
        this.d.setSoTimeout(1);
        paramBoolean = this.h.c();
        return !paramBoolean;
      }
      finally
      {
        this.d.setSoTimeout(i1);
      }
    }
    catch (IOException localIOException)
    {
      return false;
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
    }
    return true;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Connection{").append(this.b.a.a.b).append(":").append(this.b.a.a.c).append(", proxy=").append(this.b.b).append(" hostAddress=").append(this.b.c).append(" cipherSuite=");
    if (this.e != null);
    for (Object localObject = this.e.a; ; localObject = "none")
      return localObject + " protocol=" + this.n + '}';
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.b.c
 * JD-Core Version:    0.6.2
 */