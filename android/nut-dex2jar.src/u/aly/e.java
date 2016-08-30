package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import com.umeng.analytics.a;
import com.umeng.analytics.aa;
import com.umeng.analytics.h;
import com.umeng.analytics.i;
import com.umeng.analytics.r;
import com.umeng.analytics.y;
import java.util.List;

public final class e
  implements n, t
{
  static Context f;
  x a = null;
  aq b = null;
  ap c = null;
  ar d = null;
  fk e = null;
  private final long g = 28800000L;
  private final int h = 5000;
  private q i = null;
  private aa j = null;
  private g k = null;
  private int l = 10;
  private long m = 0L;
  private int n = 0;
  private int o = 0;

  public e(Context paramContext)
  {
    f = paramContext;
    this.i = new q(paramContext);
    this.a = new x(paramContext);
    this.j = aa.a(paramContext);
    this.e = fj.a(paramContext).b;
    this.k = new g(this);
    this.c = ap.a(f);
    this.b = aq.a(f);
    this.d = ar.a(f, this.a);
    paramContext = f.getSharedPreferences("umeng_general_config", 0);
    this.m = paramContext.getLong("thtstart", 0L);
    this.n = paramContext.getInt("gkvc", 0);
    this.o = paramContext.getInt("ekvc", 0);
  }

  // ERROR //
  private z a(int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: getstatic 71	u/aly/e:f	Landroid/content/Context;
    //   5: invokestatic 143	com/umeng/analytics/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   8: invokestatic 149	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   11: ifeq +10 -> 21
    //   14: ldc 151
    //   16: invokestatic 156	u/aly/ct:d	(Ljava/lang/String;)V
    //   19: aconst_null
    //   20: areturn
    //   21: getstatic 71	u/aly/e:f	Landroid/content/Context;
    //   24: invokestatic 83	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   27: pop
    //   28: invokestatic 159	com/umeng/analytics/aa:d	()Lu/aly/z;
    //   31: astore 5
    //   33: aload 5
    //   35: ifnonnull +15 -> 50
    //   38: aload_0
    //   39: getfield 47	u/aly/e:i	Lu/aly/q;
    //   42: invokevirtual 162	u/aly/q:a	()I
    //   45: ifne +5 -> 50
    //   48: aconst_null
    //   49: areturn
    //   50: aload 5
    //   52: astore 4
    //   54: aload 5
    //   56: ifnonnull +12 -> 68
    //   59: new 164	u/aly/z
    //   62: dup
    //   63: invokespecial 165	u/aly/z:<init>	()V
    //   66: astore 4
    //   68: aload_0
    //   69: getfield 47	u/aly/e:i	Lu/aly/q;
    //   72: astore 5
    //   74: aload 5
    //   76: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   79: invokestatic 171	u/aly/w:d	(Landroid/content/Context;)Ljava/lang/String;
    //   82: ifnull +597 -> 679
    //   85: aload 4
    //   87: getfield 174	u/aly/z:a	Lu/aly/am;
    //   90: aload 5
    //   92: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   95: invokestatic 143	com/umeng/analytics/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   98: putfield 179	u/aly/am:a	Ljava/lang/String;
    //   101: aload 4
    //   103: getfield 174	u/aly/z:a	Lu/aly/am;
    //   106: aload 5
    //   108: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   111: invokestatic 181	com/umeng/analytics/a:b	(Landroid/content/Context;)Ljava/lang/String;
    //   114: putfield 183	u/aly/am:b	Ljava/lang/String;
    //   117: aload 4
    //   119: getfield 174	u/aly/z:a	Lu/aly/am;
    //   122: aload 5
    //   124: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   127: invokestatic 185	com/umeng/analytics/a:c	(Landroid/content/Context;)Ljava/lang/String;
    //   130: invokestatic 190	u/aly/cs:a	(Ljava/lang/String;)Ljava/lang/String;
    //   133: putfield 192	u/aly/am:c	Ljava/lang/String;
    //   136: aload 4
    //   138: getfield 174	u/aly/z:a	Lu/aly/am;
    //   141: aload 5
    //   143: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   146: invokestatic 195	com/umeng/analytics/a:d	(Landroid/content/Context;)I
    //   149: putfield 197	u/aly/am:m	I
    //   152: aload 4
    //   154: getfield 174	u/aly/z:a	Lu/aly/am;
    //   157: invokestatic 200	com/umeng/analytics/a:b	()Ljava/lang/String;
    //   160: putfield 202	u/aly/am:l	Ljava/lang/String;
    //   163: aload 4
    //   165: getfield 174	u/aly/z:a	Lu/aly/am;
    //   168: aload 5
    //   170: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   173: invokestatic 207	u/aly/cr:q	(Landroid/content/Context;)Ljava/lang/String;
    //   176: putfield 209	u/aly/am:e	Ljava/lang/String;
    //   179: aload 5
    //   181: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   184: invokestatic 210	u/aly/cr:a	(Landroid/content/Context;)Ljava/lang/String;
    //   187: invokestatic 216	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   190: istore_3
    //   191: aload 5
    //   193: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   196: invokestatic 217	u/aly/cr:b	(Landroid/content/Context;)Ljava/lang/String;
    //   199: astore 6
    //   201: aload 5
    //   203: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   206: ldc 112
    //   208: iconst_0
    //   209: invokevirtual 118	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   212: astore 7
    //   214: aload 7
    //   216: ifnonnull +547 -> 763
    //   219: aload 4
    //   221: getfield 174	u/aly/z:a	Lu/aly/am;
    //   224: iload_3
    //   225: putfield 218	u/aly/am:h	I
    //   228: aload 4
    //   230: getfield 174	u/aly/z:a	Lu/aly/am;
    //   233: aload 6
    //   235: putfield 220	u/aly/am:d	Ljava/lang/String;
    //   238: aload 4
    //   240: getfield 174	u/aly/z:a	Lu/aly/am;
    //   243: aload 5
    //   245: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   248: invokestatic 223	u/aly/cr:r	(Landroid/content/Context;)Ljava/lang/String;
    //   251: putfield 225	u/aly/am:f	Ljava/lang/String;
    //   254: aload 4
    //   256: getfield 174	u/aly/z:a	Lu/aly/am;
    //   259: aload 5
    //   261: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   264: invokestatic 228	u/aly/cr:t	(Landroid/content/Context;)Ljava/lang/String;
    //   267: putfield 230	u/aly/am:g	Ljava/lang/String;
    //   270: getstatic 231	com/umeng/analytics/a:a	Ljava/lang/String;
    //   273: ifnull +31 -> 304
    //   276: getstatic 232	com/umeng/analytics/a:b	Ljava/lang/String;
    //   279: ifnull +25 -> 304
    //   282: aload 4
    //   284: getfield 174	u/aly/z:a	Lu/aly/am;
    //   287: getstatic 231	com/umeng/analytics/a:a	Ljava/lang/String;
    //   290: putfield 234	u/aly/am:i	Ljava/lang/String;
    //   293: aload 4
    //   295: getfield 174	u/aly/z:a	Lu/aly/am;
    //   298: getstatic 232	com/umeng/analytics/a:b	Ljava/lang/String;
    //   301: putfield 236	u/aly/am:j	Ljava/lang/String;
    //   304: aload 4
    //   306: getfield 174	u/aly/z:a	Lu/aly/am;
    //   309: aload 5
    //   311: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   314: invokestatic 237	u/aly/cr:c	(Landroid/content/Context;)Ljava/lang/String;
    //   317: putfield 239	u/aly/am:t	Ljava/lang/String;
    //   320: aload 4
    //   322: getfield 174	u/aly/z:a	Lu/aly/am;
    //   325: aload 5
    //   327: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   330: invokestatic 240	u/aly/cr:d	(Landroid/content/Context;)Ljava/lang/String;
    //   333: putfield 242	u/aly/am:n	Ljava/lang/String;
    //   336: aload 4
    //   338: getfield 174	u/aly/z:a	Lu/aly/am;
    //   341: aload 5
    //   343: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   346: invokestatic 244	u/aly/cr:n	(Landroid/content/Context;)Ljava/lang/String;
    //   349: putfield 247	u/aly/am:s	Ljava/lang/String;
    //   352: aload 4
    //   354: getfield 174	u/aly/z:a	Lu/aly/am;
    //   357: invokestatic 248	u/aly/cr:b	()Ljava/lang/String;
    //   360: putfield 251	u/aly/am:B	Ljava/lang/String;
    //   363: aload 4
    //   365: getfield 174	u/aly/z:a	Lu/aly/am;
    //   368: invokestatic 253	u/aly/cr:c	()Ljava/lang/String;
    //   371: putfield 256	u/aly/am:C	Ljava/lang/String;
    //   374: aload 5
    //   376: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   379: invokestatic 259	u/aly/cr:o	(Landroid/content/Context;)[I
    //   382: astore 6
    //   384: aload 6
    //   386: ifnull +41 -> 427
    //   389: aload 4
    //   391: getfield 174	u/aly/z:a	Lu/aly/am;
    //   394: new 261	java/lang/StringBuilder
    //   397: dup
    //   398: invokespecial 262	java/lang/StringBuilder:<init>	()V
    //   401: aload 6
    //   403: iconst_1
    //   404: iaload
    //   405: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   408: ldc_w 268
    //   411: invokevirtual 271	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: aload 6
    //   416: iconst_0
    //   417: iaload
    //   418: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   421: invokevirtual 274	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: putfield 276	u/aly/am:r	Ljava/lang/String;
    //   427: aload 5
    //   429: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   432: invokestatic 279	u/aly/cr:g	(Landroid/content/Context;)[Ljava/lang/String;
    //   435: astore 6
    //   437: ldc_w 281
    //   440: aload 6
    //   442: iconst_0
    //   443: aaload
    //   444: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   447: ifeq +382 -> 829
    //   450: aload 4
    //   452: getfield 174	u/aly/z:a	Lu/aly/am;
    //   455: ldc_w 289
    //   458: putfield 292	u/aly/am:H	Ljava/lang/String;
    //   461: ldc_w 294
    //   464: aload 6
    //   466: iconst_1
    //   467: aaload
    //   468: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   471: ifne +15 -> 486
    //   474: aload 4
    //   476: getfield 174	u/aly/z:a	Lu/aly/am;
    //   479: aload 6
    //   481: iconst_1
    //   482: aaload
    //   483: putfield 296	u/aly/am:I	Ljava/lang/String;
    //   486: aload 5
    //   488: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   491: invokestatic 298	u/aly/cr:e	(Landroid/content/Context;)Ljava/lang/String;
    //   494: astore 6
    //   496: aload 6
    //   498: invokestatic 149	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   501: ifne +13 -> 514
    //   504: aload 4
    //   506: getfield 174	u/aly/z:a	Lu/aly/am;
    //   509: aload 6
    //   511: putfield 300	u/aly/am:J	Ljava/lang/String;
    //   514: aload 4
    //   516: getfield 174	u/aly/z:a	Lu/aly/am;
    //   519: aload 5
    //   521: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   524: invokestatic 302	u/aly/cr:f	(Landroid/content/Context;)Ljava/lang/String;
    //   527: putfield 305	u/aly/am:G	Ljava/lang/String;
    //   530: aload 5
    //   532: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   535: invokestatic 307	u/aly/cr:l	(Landroid/content/Context;)[Ljava/lang/String;
    //   538: astore 6
    //   540: aload 4
    //   542: getfield 174	u/aly/z:a	Lu/aly/am;
    //   545: aload 6
    //   547: iconst_0
    //   548: aaload
    //   549: putfield 310	u/aly/am:F	Ljava/lang/String;
    //   552: aload 4
    //   554: getfield 174	u/aly/z:a	Lu/aly/am;
    //   557: aload 6
    //   559: iconst_1
    //   560: aaload
    //   561: putfield 313	u/aly/am:E	Ljava/lang/String;
    //   564: aload 4
    //   566: getfield 174	u/aly/z:a	Lu/aly/am;
    //   569: aload 5
    //   571: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   574: invokestatic 315	u/aly/cr:j	(Landroid/content/Context;)I
    //   577: i2l
    //   578: putfield 318	u/aly/am:D	J
    //   581: aload 5
    //   583: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   586: ldc 112
    //   588: iconst_0
    //   589: invokevirtual 118	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   592: astore 6
    //   594: aload 4
    //   596: getfield 174	u/aly/z:a	Lu/aly/am;
    //   599: aload 6
    //   601: ldc_w 320
    //   604: iconst_0
    //   605: invokeinterface 132 3 0
    //   610: i2l
    //   611: putfield 323	u/aly/am:L	J
    //   614: aload 4
    //   616: getfield 174	u/aly/z:a	Lu/aly/am;
    //   619: aload 6
    //   621: ldc_w 325
    //   624: iconst_0
    //   625: invokeinterface 132 3 0
    //   630: i2l
    //   631: putfield 328	u/aly/am:K	J
    //   634: aload 4
    //   636: getfield 174	u/aly/z:a	Lu/aly/am;
    //   639: aload 6
    //   641: ldc_w 330
    //   644: iconst_0
    //   645: invokeinterface 132 3 0
    //   650: i2l
    //   651: putfield 333	u/aly/am:M	J
    //   654: aload 5
    //   656: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   659: invokestatic 338	u/aly/fg:a	(Landroid/content/Context;)Lu/aly/fg;
    //   662: getfield 341	u/aly/fg:a	Lu/aly/bf;
    //   665: astore 6
    //   667: aload 6
    //   669: ifnonnull +201 -> 870
    //   672: aload 5
    //   674: aload 4
    //   676: invokevirtual 344	u/aly/q:a	(Lu/aly/z;)V
    //   679: aload 4
    //   681: getfield 347	u/aly/z:b	Lu/aly/al;
    //   684: getfield 352	u/aly/al:c	Ljava/util/List;
    //   687: ifnull +279 -> 966
    //   690: getstatic 355	u/aly/ct:a	Z
    //   693: ifeq +273 -> 966
    //   696: aload 4
    //   698: getfield 347	u/aly/z:b	Lu/aly/al;
    //   701: getfield 352	u/aly/al:c	Ljava/util/List;
    //   704: invokeinterface 360 1 0
    //   709: ifle +257 -> 966
    //   712: aload 4
    //   714: getfield 347	u/aly/z:b	Lu/aly/al;
    //   717: getfield 352	u/aly/al:c	Ljava/util/List;
    //   720: invokeinterface 364 1 0
    //   725: astore 5
    //   727: aload 5
    //   729: invokeinterface 370 1 0
    //   734: ifeq +222 -> 956
    //   737: aload 5
    //   739: invokeinterface 374 1 0
    //   744: checkcast 376	u/aly/an
    //   747: getfield 378	u/aly/an:h	Ljava/util/List;
    //   750: invokeinterface 360 1 0
    //   755: ifle +466 -> 1221
    //   758: iconst_1
    //   759: istore_2
    //   760: goto +464 -> 1224
    //   763: aload 4
    //   765: getfield 174	u/aly/z:a	Lu/aly/am;
    //   768: aload 7
    //   770: ldc_w 380
    //   773: iconst_0
    //   774: invokeinterface 132 3 0
    //   779: putfield 218	u/aly/am:h	I
    //   782: aload 4
    //   784: getfield 174	u/aly/z:a	Lu/aly/am;
    //   787: aload 7
    //   789: ldc_w 382
    //   792: ldc_w 294
    //   795: invokeinterface 386 3 0
    //   800: putfield 220	u/aly/am:d	Ljava/lang/String;
    //   803: goto -565 -> 238
    //   806: astore_1
    //   807: ldc_w 388
    //   810: aload_1
    //   811: invokestatic 391	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   814: getstatic 71	u/aly/e:f	Landroid/content/Context;
    //   817: invokestatic 83	com/umeng/analytics/aa:a	(Landroid/content/Context;)Lcom/umeng/analytics/aa;
    //   820: invokevirtual 393	com/umeng/analytics/aa:e	()V
    //   823: aload_1
    //   824: invokestatic 396	u/aly/ct:a	(Ljava/lang/Throwable;)V
    //   827: aconst_null
    //   828: areturn
    //   829: ldc_w 398
    //   832: aload 6
    //   834: iconst_0
    //   835: aaload
    //   836: invokevirtual 287	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   839: ifeq +17 -> 856
    //   842: aload 4
    //   844: getfield 174	u/aly/z:a	Lu/aly/am;
    //   847: ldc_w 398
    //   850: putfield 292	u/aly/am:H	Ljava/lang/String;
    //   853: goto -392 -> 461
    //   856: aload 4
    //   858: getfield 174	u/aly/z:a	Lu/aly/am;
    //   861: ldc_w 400
    //   864: putfield 292	u/aly/am:H	Ljava/lang/String;
    //   867: goto -406 -> 461
    //   870: new 402	u/aly/da
    //   873: dup
    //   874: invokespecial 403	u/aly/da:<init>	()V
    //   877: aload 6
    //   879: invokevirtual 406	u/aly/da:a	(Lu/aly/cw;)[B
    //   882: astore 6
    //   884: aload 4
    //   886: getfield 174	u/aly/z:a	Lu/aly/am;
    //   889: aload 6
    //   891: iconst_0
    //   892: invokestatic 412	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   895: putfield 415	u/aly/am:O	Ljava/lang/String;
    //   898: aload 5
    //   900: getfield 167	u/aly/q:a	Landroid/content/Context;
    //   903: invokestatic 88	u/aly/fj:a	(Landroid/content/Context;)Lu/aly/fj;
    //   906: invokevirtual 418	u/aly/fj:a	()Lu/aly/bl;
    //   909: astore 6
    //   911: aload 6
    //   913: ifnonnull +12 -> 925
    //   916: ldc_w 420
    //   919: invokestatic 156	u/aly/ct:d	(Ljava/lang/String;)V
    //   922: goto -250 -> 672
    //   925: new 402	u/aly/da
    //   928: dup
    //   929: invokespecial 403	u/aly/da:<init>	()V
    //   932: aload 6
    //   934: invokevirtual 406	u/aly/da:a	(Lu/aly/cw;)[B
    //   937: astore 6
    //   939: aload 4
    //   941: getfield 174	u/aly/z:a	Lu/aly/am;
    //   944: aload 6
    //   946: iconst_0
    //   947: invokestatic 412	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   950: putfield 423	u/aly/am:N	Ljava/lang/String;
    //   953: goto -281 -> 672
    //   956: iload_2
    //   957: ifne +9 -> 966
    //   960: ldc_w 425
    //   963: invokestatic 427	u/aly/ct:c	(Ljava/lang/String;)V
    //   966: aload_0
    //   967: getfield 53	u/aly/e:b	Lu/aly/aq;
    //   970: astore 5
    //   972: getstatic 71	u/aly/e:f	Landroid/content/Context;
    //   975: astore 6
    //   977: aload 5
    //   979: getfield 429	u/aly/aq:a	I
    //   982: iconst_1
    //   983: if_icmpne +96 -> 1079
    //   986: aload 4
    //   988: getfield 347	u/aly/z:b	Lu/aly/al;
    //   991: aconst_null
    //   992: putfield 431	u/aly/al:i	Ljava/util/List;
    //   995: aload 4
    //   997: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1000: aconst_null
    //   1001: putfield 433	u/aly/al:a	Ljava/util/List;
    //   1004: aload 4
    //   1006: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1009: aconst_null
    //   1010: putfield 435	u/aly/al:b	Ljava/util/List;
    //   1013: aload 4
    //   1015: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1018: aconst_null
    //   1019: putfield 438	u/aly/al:h	Lu/aly/ac;
    //   1022: aload_1
    //   1023: arraylength
    //   1024: iconst_2
    //   1025: if_icmpne +207 -> 1232
    //   1028: aload 4
    //   1030: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1033: getfield 441	u/aly/al:e	Lu/aly/af;
    //   1036: aload_1
    //   1037: iconst_0
    //   1038: iaload
    //   1039: sipush 1000
    //   1042: idiv
    //   1043: invokestatic 445	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1046: putfield 450	u/aly/af:a	Ljava/lang/Integer;
    //   1049: aload 4
    //   1051: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1054: getfield 441	u/aly/al:e	Lu/aly/af;
    //   1057: aload_1
    //   1058: iconst_1
    //   1059: iaload
    //   1060: i2l
    //   1061: putfield 452	u/aly/af:b	J
    //   1064: aload 4
    //   1066: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1069: getfield 441	u/aly/al:e	Lu/aly/af;
    //   1072: iconst_1
    //   1073: putfield 454	u/aly/af:c	Z
    //   1076: goto +156 -> 1232
    //   1079: aload 5
    //   1081: getfield 429	u/aly/aq:a	I
    //   1084: iconst_2
    //   1085: if_icmpne +74 -> 1159
    //   1088: aload 4
    //   1090: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1093: getfield 352	u/aly/al:c	Ljava/util/List;
    //   1096: invokeinterface 457 1 0
    //   1101: aload 4
    //   1103: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1106: getfield 352	u/aly/al:c	Ljava/util/List;
    //   1109: aload 6
    //   1111: invokestatic 460	u/aly/aq:b	(Landroid/content/Context;)Lu/aly/an;
    //   1114: invokeinterface 463 2 0
    //   1119: pop
    //   1120: aload 4
    //   1122: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1125: aconst_null
    //   1126: putfield 431	u/aly/al:i	Ljava/util/List;
    //   1129: aload 4
    //   1131: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1134: aconst_null
    //   1135: putfield 433	u/aly/al:a	Ljava/util/List;
    //   1138: aload 4
    //   1140: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1143: aconst_null
    //   1144: putfield 435	u/aly/al:b	Ljava/util/List;
    //   1147: aload 4
    //   1149: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1152: aconst_null
    //   1153: putfield 438	u/aly/al:h	Lu/aly/ac;
    //   1156: goto -134 -> 1022
    //   1159: aload 5
    //   1161: getfield 429	u/aly/aq:a	I
    //   1164: iconst_3
    //   1165: if_icmpne -143 -> 1022
    //   1168: aload 4
    //   1170: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1173: aconst_null
    //   1174: putfield 352	u/aly/al:c	Ljava/util/List;
    //   1177: aload 4
    //   1179: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1182: aconst_null
    //   1183: putfield 431	u/aly/al:i	Ljava/util/List;
    //   1186: aload 4
    //   1188: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1191: aconst_null
    //   1192: putfield 433	u/aly/al:a	Ljava/util/List;
    //   1195: aload 4
    //   1197: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1200: aconst_null
    //   1201: putfield 435	u/aly/al:b	Ljava/util/List;
    //   1204: aload 4
    //   1206: getfield 347	u/aly/z:b	Lu/aly/al;
    //   1209: aconst_null
    //   1210: putfield 438	u/aly/al:h	Lu/aly/ac;
    //   1213: goto -191 -> 1022
    //   1216: astore 6
    //   1218: goto -320 -> 898
    //   1221: goto +3 -> 1224
    //   1224: goto -497 -> 727
    //   1227: astore 6
    //   1229: goto -557 -> 672
    //   1232: aload 4
    //   1234: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   2	19	806	java/lang/Exception
    //   21	33	806	java/lang/Exception
    //   38	48	806	java/lang/Exception
    //   59	68	806	java/lang/Exception
    //   68	214	806	java/lang/Exception
    //   219	238	806	java/lang/Exception
    //   238	304	806	java/lang/Exception
    //   304	384	806	java/lang/Exception
    //   389	427	806	java/lang/Exception
    //   427	461	806	java/lang/Exception
    //   461	486	806	java/lang/Exception
    //   486	514	806	java/lang/Exception
    //   514	654	806	java/lang/Exception
    //   672	679	806	java/lang/Exception
    //   679	727	806	java/lang/Exception
    //   727	758	806	java/lang/Exception
    //   763	803	806	java/lang/Exception
    //   829	853	806	java/lang/Exception
    //   856	867	806	java/lang/Exception
    //   960	966	806	java/lang/Exception
    //   966	1022	806	java/lang/Exception
    //   1022	1076	806	java/lang/Exception
    //   1079	1156	806	java/lang/Exception
    //   1159	1213	806	java/lang/Exception
    //   654	667	1216	java/lang/Exception
    //   870	898	1216	java/lang/Exception
    //   898	911	1227	java/lang/Exception
    //   916	922	1227	java/lang/Exception
    //   925	953	1227	java/lang/Exception
  }

  private static void a(int paramInt1, int paramInt2, z paramz)
  {
    int i1;
    if (paramInt1 > 0)
    {
      List localList = paramz.b.b;
      if (localList.size() >= paramInt1)
      {
        int i2 = localList.size();
        i1 = localList.size() - 1;
        while (i1 >= i2 - paramInt1)
        {
          localList.remove(i1);
          i1 -= 1;
        }
      }
      localList.size();
      localList.clear();
    }
    if (paramInt2 > 0)
    {
      paramz = paramz.b.a;
      if (paramz.size() >= paramInt2)
      {
        i1 = paramz.size();
        paramInt1 = paramz.size() - 1;
        while (paramInt1 >= i1 - paramInt2)
        {
          paramz.remove(paramInt1);
          paramInt1 -= 1;
        }
      }
      paramz.size();
      paramz.clear();
    }
  }

  private void a(z paramz)
  {
    if (paramz != null);
    try
    {
      fg localfg = fg.a(f);
      localfg.a();
      try
      {
        Object localObject = localfg.a;
        localObject = new da().a((cw)localObject);
        paramz.a.O = Base64.encodeToString((byte[])localObject, 0);
        label44: paramz = aa.a(f).a(b(paramz));
        if (paramz == null)
          return;
        if (!r.a(f, paramz))
        {
          if (d());
          for (paramz = fe.b(f, a.a(f), paramz); ; paramz = fe.a(f, a.a(f), paramz))
          {
            paramz = paramz.a();
            localObject = aa.a(f);
            ((aa)localObject).e();
            ((aa)localObject).a(paramz);
            localfg.b();
            z.c = 0L;
            return;
          }
        }
      }
      catch (Exception localException)
      {
        break label44;
      }
      return;
    }
    catch (Exception paramz)
    {
    }
  }

  private z b(z paramz)
  {
    int i4 = 5000;
    int i5 = 0;
    int i3;
    if (paramz.b.a != null)
    {
      i3 = 0;
      i1 = 0;
      while (true)
      {
        i2 = i1;
        if (i3 >= paramz.b.a.size())
          break;
        i1 += ((ag)paramz.b.a.get(i3)).b.size();
        i3 += 1;
      }
    }
    int i2 = 0;
    int i1 = i2;
    if (paramz.b.b != null)
    {
      i3 = 0;
      while (true)
      {
        i1 = i2;
        if (i3 >= paramz.b.b.size())
          break;
        i2 += ((ag)paramz.b.b.get(i3)).b.size();
        i3 += 1;
      }
    }
    long l1 = System.currentTimeMillis();
    if (l1 - this.m > 28800000L)
    {
      i2 = i1 - 5000;
      if (i2 > 0)
        a(-5000, i2, paramz);
      this.n = 0;
      if (i2 > 0)
        i1 = 5000;
      this.o = i1;
      this.m = l1;
      return paramz;
    }
    if (this.n > 5000)
    {
      i3 = i5;
      if (this.o <= 5000)
        break label302;
      i2 = i1;
      label241: if ((i3 > 0) || (i2 > 0))
        a(i3, i2, paramz);
      if (i3 <= 0)
        break label316;
      i3 = 5000;
      label267: this.n = i3;
      if (i2 <= 0)
        break label327;
    }
    label302: label316: label327: for (i1 = i4; ; i1 = this.o + i1)
    {
      this.o = i1;
      return paramz;
      i3 = this.n + 0 - 5000;
      break;
      i2 = this.o + i1 - 5000;
      break label241;
      i3 = this.n + 0;
      break label267;
    }
  }

  private boolean d()
  {
    boolean bool = true;
    int i1 = -1;
    fk localfk = this.e;
    if ((localfk.b == 0) || (localfk.b == 1) || (localfk.b == -1))
      i1 = localfk.b;
    switch (i1)
    {
    default:
      bool = false;
    case 1:
      return bool;
    case 0:
      return false;
    case -1:
    }
    return a.j;
  }

  // ERROR //
  public final void a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 47	u/aly/e:i	Lu/aly/q;
    //   6: invokevirtual 162	u/aly/q:a	()I
    //   9: ifle +73 -> 82
    //   12: aload_0
    //   13: iconst_0
    //   14: newarray int
    //   16: invokespecial 526	u/aly/e:a	([I)Lu/aly/z;
    //   19: astore 4
    //   21: invokestatic 528	com/umeng/analytics/aa:h	()Ljava/lang/String;
    //   24: astore_2
    //   25: new 530	java/io/File
    //   28: dup
    //   29: getstatic 531	com/umeng/analytics/aa:a	Landroid/content/Context;
    //   32: invokevirtual 535	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   35: invokevirtual 539	android/content/Context:getFilesDir	()Ljava/io/File;
    //   38: invokevirtual 542	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   41: aload_2
    //   42: invokespecial 545	java/io/File:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   45: astore_2
    //   46: new 547	java/io/FileOutputStream
    //   49: dup
    //   50: aload_2
    //   51: invokespecial 550	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   54: astore_3
    //   55: new 552	java/io/ObjectOutputStream
    //   58: dup
    //   59: aload_3
    //   60: invokespecial 555	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   63: astore_2
    //   64: aload_2
    //   65: aload 4
    //   67: invokevirtual 559	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   70: aload_2
    //   71: invokevirtual 562	java/io/ObjectOutputStream:flush	()V
    //   74: aload_2
    //   75: invokevirtual 565	java/io/ObjectOutputStream:close	()V
    //   78: aload_3
    //   79: invokevirtual 566	java/io/FileOutputStream:close	()V
    //   82: getstatic 71	u/aly/e:f	Landroid/content/Context;
    //   85: ldc 112
    //   87: iconst_0
    //   88: invokevirtual 118	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   91: invokeinterface 570 1 0
    //   96: ldc 120
    //   98: aload_0
    //   99: getfield 65	u/aly/e:m	J
    //   102: invokeinterface 576 4 0
    //   107: ldc 128
    //   109: aload_0
    //   110: getfield 67	u/aly/e:n	I
    //   113: invokeinterface 580 3 0
    //   118: ldc 134
    //   120: aload_0
    //   121: getfield 69	u/aly/e:o	I
    //   124: invokeinterface 580 3 0
    //   129: invokeinterface 583 1 0
    //   134: pop
    //   135: return
    //   136: astore_1
    //   137: aload_1
    //   138: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   141: goto -63 -> 78
    //   144: astore_1
    //   145: aload_1
    //   146: invokestatic 396	u/aly/ct:a	(Ljava/lang/Throwable;)V
    //   149: aload_1
    //   150: instanceof 588
    //   153: ifeq +10 -> 163
    //   156: aload_0
    //   157: getfield 49	u/aly/e:j	Lcom/umeng/analytics/aa;
    //   160: invokevirtual 393	com/umeng/analytics/aa:e	()V
    //   163: aload_1
    //   164: invokevirtual 589	java/lang/Throwable:printStackTrace	()V
    //   167: goto -85 -> 82
    //   170: astore_1
    //   171: aload_1
    //   172: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   175: goto -93 -> 82
    //   178: astore_3
    //   179: aconst_null
    //   180: astore_2
    //   181: aload_3
    //   182: invokestatic 396	u/aly/ct:a	(Ljava/lang/Throwable;)V
    //   185: aload_3
    //   186: invokevirtual 590	java/lang/Exception:printStackTrace	()V
    //   189: aload_2
    //   190: ifnull +7 -> 197
    //   193: aload_2
    //   194: invokevirtual 565	java/io/ObjectOutputStream:close	()V
    //   197: aload_1
    //   198: ifnull -116 -> 82
    //   201: aload_1
    //   202: invokevirtual 566	java/io/FileOutputStream:close	()V
    //   205: goto -123 -> 82
    //   208: astore_1
    //   209: aload_1
    //   210: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   213: goto -131 -> 82
    //   216: astore_2
    //   217: aload_2
    //   218: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   221: goto -24 -> 197
    //   224: astore_1
    //   225: aconst_null
    //   226: astore_2
    //   227: aconst_null
    //   228: astore_3
    //   229: aload_2
    //   230: ifnull +7 -> 237
    //   233: aload_2
    //   234: invokevirtual 565	java/io/ObjectOutputStream:close	()V
    //   237: aload_3
    //   238: ifnull +7 -> 245
    //   241: aload_3
    //   242: invokevirtual 566	java/io/FileOutputStream:close	()V
    //   245: aload_1
    //   246: athrow
    //   247: astore_2
    //   248: aload_2
    //   249: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   252: goto -15 -> 237
    //   255: astore_2
    //   256: aload_2
    //   257: invokevirtual 586	java/io/IOException:printStackTrace	()V
    //   260: goto -15 -> 245
    //   263: astore_1
    //   264: aconst_null
    //   265: astore_2
    //   266: goto -37 -> 229
    //   269: astore_1
    //   270: goto -41 -> 229
    //   273: astore 4
    //   275: aload_1
    //   276: astore_3
    //   277: aload 4
    //   279: astore_1
    //   280: goto -51 -> 229
    //   283: astore 4
    //   285: aconst_null
    //   286: astore_2
    //   287: aload_3
    //   288: astore_1
    //   289: aload 4
    //   291: astore_3
    //   292: goto -111 -> 181
    //   295: astore 4
    //   297: aload_3
    //   298: astore_1
    //   299: aload 4
    //   301: astore_3
    //   302: goto -121 -> 181
    //
    // Exception table:
    //   from	to	target	type
    //   74	78	136	java/io/IOException
    //   12	46	144	java/lang/Throwable
    //   74	78	144	java/lang/Throwable
    //   78	82	144	java/lang/Throwable
    //   137	141	144	java/lang/Throwable
    //   171	175	144	java/lang/Throwable
    //   193	197	144	java/lang/Throwable
    //   201	205	144	java/lang/Throwable
    //   209	213	144	java/lang/Throwable
    //   217	221	144	java/lang/Throwable
    //   233	237	144	java/lang/Throwable
    //   241	245	144	java/lang/Throwable
    //   245	247	144	java/lang/Throwable
    //   248	252	144	java/lang/Throwable
    //   256	260	144	java/lang/Throwable
    //   78	82	170	java/io/IOException
    //   46	55	178	java/lang/Exception
    //   201	205	208	java/io/IOException
    //   193	197	216	java/io/IOException
    //   46	55	224	finally
    //   233	237	247	java/io/IOException
    //   241	245	255	java/io/IOException
    //   55	64	263	finally
    //   64	74	269	finally
    //   181	189	273	finally
    //   55	64	283	java/lang/Exception
    //   64	74	295	java/lang/Exception
  }

  public final void a(fk paramfk)
  {
    this.c.a(paramfk);
    this.b.a(paramfk);
    this.d.a(paramfk);
    g localg = this.k;
    paramfk = paramfk.b();
    localg.b = paramfk[0];
    localg.c = paramfk[1];
  }

  public final void a(o paramo)
  {
    int i3 = 0;
    if (paramo != null)
      this.i.a(paramo);
    boolean bool1 = paramo instanceof an;
    boolean bool2 = this.a.e();
    long l1;
    if (bool2)
    {
      paramo = this.a;
      if (paramo.h())
      {
        l1 = System.currentTimeMillis();
        z.c = l1;
      }
    }
    else
    {
      if (cr.i(f))
        break label94;
      ct.a("network is unavailable");
      bool1 = false;
    }
    label94: g localg;
    int i1;
    while (true)
      if (bool1)
      {
        c();
        return;
        l1 = paramo.e;
        break;
        if (this.a.e())
        {
          bool1 = true;
        }
        else
        {
          localg = this.k;
          if (localg.f.b.a())
          {
            if (((localg.a instanceof h)) && (localg.a.a()))
            {
              i1 = 1;
              label154: if (i1 == 0)
                break label220;
            }
            label170: label220: for (paramo = localg.a; ; paramo = new h(localg.f.a, localg.f.b))
            {
              localg.a = paramo;
              ct.a("Report policy : " + localg.a.getClass().getSimpleName());
              bool1 = localg.a.a(bool1);
              break;
              i1 = 0;
              break label154;
            }
          }
          if (((localg.a instanceof i)) && (localg.a.a()))
          {
            i1 = 1;
            label271: if (i1 != 0)
              break label459;
            if (!bool1)
              break label491;
            paramo = localg.f.d;
            if ((paramo.a.f()) || (paramo.b.e()))
              break label486;
            l1 = System.currentTimeMillis() - paramo.b.d;
            if (l1 <= paramo.c)
              break label461;
            String str = fe.a(paramo.g);
            paramo.e = r.a(paramo.d, str);
            paramo.f = l1;
            i1 = 1;
          }
          while (true)
          {
            if (i1 == 0)
              break label491;
            localg.a = new i((int)localg.f.d.e);
            paramo = localg.f;
            i1 = (int)localg.f.d.e;
            paramo.a(paramo.a(new int[] { i1, (int)(System.currentTimeMillis() - paramo.a.d) }));
            y.a(new f(paramo), i1);
            break;
            i1 = 0;
            break label271;
            label459: break;
            label461: if (l1 > 129600000L)
            {
              paramo.e = 0L;
              paramo.f = l1;
              i1 = 1;
            }
            else
            {
              label486: i1 = 0;
            }
          }
          label491: if (ct.a)
          {
            if (localg.f.e.e == 1);
            for (i1 = 1; ; i1 = 0)
            {
              if (i1 == 0)
                break label552;
              ct.a("Debug: send log every 15 seconds");
              localg.a = new com.umeng.analytics.g(localg.f.a);
              break;
            }
          }
          label552: if (localg.f.c.a)
          {
            ct.a("Start A/B Test");
            if (localg.f.c.b != 6)
              break label761;
            if (localg.f.e.c != -1)
            {
              i1 = 1;
              label605: if (i1 == 0)
                break label654;
              i1 = localg.f.e.a(90000);
            }
          }
        }
      }
    while (true)
    {
      localg.a = localg.a(localg.f.c.b, i1);
      break label170;
      i1 = 0;
      break label605;
      label654: if (localg.c > 0)
      {
        i1 = localg.c;
      }
      else
      {
        i1 = localg.e;
        continue;
        int i2 = localg.d;
        i1 = localg.e;
        if (localg.b != -1)
        {
          i2 = localg.b;
          i1 = localg.c;
        }
        localg.a = localg.a(i2, i1);
        break label170;
        if (!bool2)
        {
          i1 = i3;
          if (this.i.a() > this.l)
            i1 = 1;
          if (i1 == 0)
            break;
        }
        a();
        return;
        label761: i1 = 0;
      }
    }
  }

  public final void b()
  {
    a(a(new int[0]));
  }

  public final void b(o paramo)
  {
    this.i.a(paramo);
  }

  final void c()
  {
    int i2 = 1;
    while (true)
    {
      try
      {
        if (this.j.f())
        {
          localObject = new u(f, this.a);
          ((u)localObject).a(this);
          if (this.b.a())
            ((u)localObject).e = true;
          ((u)localObject).a();
          return;
        }
        Object localObject = a(new int[0]);
        if (localObject == null)
          break label227;
        if ((((z)localObject).a.t != null) && (((z)localObject).a.s != null) && (((z)localObject).a.r != null) && (((z)localObject).a.a != null) && (((z)localObject).a.b != null) && (((z)localObject).a.f != null) && (((z)localObject).a.e != null) && (((z)localObject).a.d != null))
        {
          i1 = 1;
          break label233;
          if (i1 == 0)
            break label232;
          u localu = new u(f, this.a);
          localu.a(this);
          if (this.b.a())
            localu.e = true;
          localu.c = b((z)localObject);
          localu.d = d();
          localu.a();
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      int i1 = 0;
      label227: label232: label233: 
      while (i1 == 0)
      {
        i1 = 0;
        break;
        return;
      }
      i1 = i2;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.e
 * JD-Core Version:    0.6.2
 */