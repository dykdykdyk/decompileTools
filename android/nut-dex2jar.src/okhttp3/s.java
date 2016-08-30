package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import okhttp3.internal.http.n;

public final class s
{
  private static final Pattern c = Pattern.compile("(\\d{2,4})[^\\d]*");
  private static final Pattern d = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
  private static final Pattern e = Pattern.compile("(\\d{1,2})[^\\d]*");
  private static final Pattern f = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
  public final String a;
  public final String b;
  private final long g;
  private final String h;
  private final String i;
  private final boolean j;
  private final boolean k;
  private final boolean l;
  private final boolean m;

  private s(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.g = paramLong;
    this.h = paramString3;
    this.i = paramString4;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
    this.m = paramBoolean3;
    this.l = paramBoolean4;
  }

  private static int a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    while (true)
    {
      int n = paramInt2;
      if (paramInt1 < paramInt2)
      {
        n = paramString.charAt(paramInt1);
        if (((n >= 32) || (n == 9)) && (n < 127) && ((n < 48) || (n > 57)) && ((n < 97) || (n > 122)) && ((n < 65) || (n > 90)) && (n != 58))
          break label108;
        n = 1;
        if (paramBoolean)
          break label114;
      }
      label108: label114: for (int i1 = 1; ; i1 = 0)
      {
        if (n != i1)
          break label120;
        n = paramInt1;
        return n;
        n = 0;
        break;
      }
      label120: paramInt1 += 1;
    }
  }

  private static long a(String paramString)
  {
    try
    {
      long l1 = Long.parseLong(paramString);
      if (l1 <= 0L)
        return -9223372036854775808L;
      return l1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (paramString.matches("-?\\d+"))
        if (!paramString.startsWith("-"))
          return 9223372036854775807L;
      throw localNumberFormatException;
    }
  }

  public static List<s> a(ad paramad, ab paramab)
  {
    int i1 = paramab.a.length / 2;
    int n = 0;
    Object localObject2;
    for (Object localObject1 = null; n < i1; localObject1 = localObject2)
    {
      localObject2 = localObject1;
      if ("Set-Cookie".equalsIgnoreCase(paramab.a(n)))
      {
        localObject2 = localObject1;
        if (localObject1 == null)
          localObject2 = new ArrayList(2);
        ((List)localObject2).add(paramab.b(n));
      }
      n += 1;
    }
    if (localObject1 != null)
    {
      localObject1 = Collections.unmodifiableList((List)localObject1);
      i1 = ((List)localObject1).size();
      paramab = null;
      n = 0;
      label102: if (n >= i1)
        break label172;
      localObject2 = (String)((List)localObject1).get(n);
      localObject2 = a(System.currentTimeMillis(), paramad, (String)localObject2);
      if (localObject2 == null)
        break label188;
      if (paramab != null)
        break label185;
      paramab = new ArrayList();
      label148: paramab.add(localObject2);
    }
    label172: label185: label188: 
    while (true)
    {
      n += 1;
      break label102;
      localObject1 = Collections.emptyList();
      break;
      if (paramab != null)
        return Collections.unmodifiableList(paramab);
      return Collections.emptyList();
      break label148;
    }
  }

  // ERROR //
  private static s a(long paramLong, ad paramad, String paramString)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual 160	java/lang/String:length	()I
    //   4: istore 17
    //   6: aload_3
    //   7: iconst_0
    //   8: iload 17
    //   10: bipush 59
    //   12: invokestatic 165	okhttp3/internal/o:a	(Ljava/lang/String;IIC)I
    //   15: istore 4
    //   17: aload_3
    //   18: iconst_0
    //   19: iload 4
    //   21: bipush 61
    //   23: invokestatic 165	okhttp3/internal/o:a	(Ljava/lang/String;IIC)I
    //   26: istore 5
    //   28: iload 5
    //   30: iload 4
    //   32: if_icmpne +5 -> 37
    //   35: aconst_null
    //   36: areturn
    //   37: aload_3
    //   38: iconst_0
    //   39: iload 5
    //   41: invokestatic 168	okhttp3/internal/o:c	(Ljava/lang/String;II)Ljava/lang/String;
    //   44: astore 34
    //   46: aload 34
    //   48: invokevirtual 172	java/lang/String:isEmpty	()Z
    //   51: ifeq +5 -> 56
    //   54: aconst_null
    //   55: areturn
    //   56: aload_3
    //   57: iload 5
    //   59: iconst_1
    //   60: iadd
    //   61: iload 4
    //   63: invokestatic 168	okhttp3/internal/o:c	(Ljava/lang/String;II)Ljava/lang/String;
    //   66: astore 35
    //   68: ldc2_w 173
    //   71: lstore 20
    //   73: ldc2_w 175
    //   76: lstore 22
    //   78: aconst_null
    //   79: astore 30
    //   81: aconst_null
    //   82: astore 31
    //   84: iconst_0
    //   85: istore 29
    //   87: iconst_0
    //   88: istore 28
    //   90: iconst_1
    //   91: istore 27
    //   93: iconst_0
    //   94: istore 26
    //   96: iload 4
    //   98: iconst_1
    //   99: iadd
    //   100: istore 4
    //   102: iload 4
    //   104: iload 17
    //   106: if_icmpge +878 -> 984
    //   109: aload_3
    //   110: iload 4
    //   112: iload 17
    //   114: bipush 59
    //   116: invokestatic 165	okhttp3/internal/o:a	(Ljava/lang/String;IIC)I
    //   119: istore 18
    //   121: aload_3
    //   122: iload 4
    //   124: iload 18
    //   126: bipush 61
    //   128: invokestatic 165	okhttp3/internal/o:a	(Ljava/lang/String;IIC)I
    //   131: istore 5
    //   133: aload_3
    //   134: iload 4
    //   136: iload 5
    //   138: invokestatic 168	okhttp3/internal/o:c	(Ljava/lang/String;II)Ljava/lang/String;
    //   141: astore 33
    //   143: iload 5
    //   145: iload 18
    //   147: if_icmpge +212 -> 359
    //   150: aload_3
    //   151: iload 5
    //   153: iconst_1
    //   154: iadd
    //   155: iload 18
    //   157: invokestatic 168	okhttp3/internal/o:c	(Ljava/lang/String;II)Ljava/lang/String;
    //   160: astore 32
    //   162: aload 33
    //   164: ldc 178
    //   166: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   169: ifeq +595 -> 764
    //   172: aload 32
    //   174: invokevirtual 160	java/lang/String:length	()I
    //   177: istore 19
    //   179: aload 32
    //   181: iconst_0
    //   182: iload 19
    //   184: iconst_0
    //   185: invokestatic 180	okhttp3/s:a	(Ljava/lang/String;IIZ)I
    //   188: istore 10
    //   190: iconst_m1
    //   191: istore 5
    //   193: iconst_m1
    //   194: istore 7
    //   196: iconst_m1
    //   197: istore 9
    //   199: iconst_m1
    //   200: istore 6
    //   202: iconst_m1
    //   203: istore 8
    //   205: iconst_m1
    //   206: istore 4
    //   208: getstatic 45	okhttp3/s:f	Ljava/util/regex/Pattern;
    //   211: aload 32
    //   213: invokevirtual 184	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   216: astore 33
    //   218: iload 10
    //   220: iload 19
    //   222: if_icmpge +1032 -> 1254
    //   225: aload 32
    //   227: iload 10
    //   229: iconst_1
    //   230: iadd
    //   231: iload 19
    //   233: iconst_1
    //   234: invokestatic 180	okhttp3/s:a	(Ljava/lang/String;IIZ)I
    //   237: istore 16
    //   239: aload 33
    //   241: iload 10
    //   243: iload 16
    //   245: invokevirtual 190	java/util/regex/Matcher:region	(II)Ljava/util/regex/Matcher;
    //   248: pop
    //   249: iload 5
    //   251: iconst_m1
    //   252: if_icmpne +114 -> 366
    //   255: aload 33
    //   257: getstatic 45	okhttp3/s:f	Ljava/util/regex/Pattern;
    //   260: invokevirtual 194	java/util/regex/Matcher:usePattern	(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    //   263: invokevirtual 196	java/util/regex/Matcher:matches	()Z
    //   266: ifeq +100 -> 366
    //   269: aload 33
    //   271: iconst_1
    //   272: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   275: invokestatic 205	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   278: istore 11
    //   280: aload 33
    //   282: iconst_2
    //   283: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   286: invokestatic 205	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   289: istore 13
    //   291: aload 33
    //   293: iconst_3
    //   294: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   297: invokestatic 205	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   300: istore 15
    //   302: iload 6
    //   304: istore 14
    //   306: iload 8
    //   308: istore 12
    //   310: iload 4
    //   312: istore 10
    //   314: aload 32
    //   316: iload 16
    //   318: iconst_1
    //   319: iadd
    //   320: iload 19
    //   322: iconst_0
    //   323: invokestatic 180	okhttp3/s:a	(Ljava/lang/String;IIZ)I
    //   326: istore 16
    //   328: iload 10
    //   330: istore 4
    //   332: iload 12
    //   334: istore 8
    //   336: iload 14
    //   338: istore 6
    //   340: iload 15
    //   342: istore 9
    //   344: iload 13
    //   346: istore 7
    //   348: iload 11
    //   350: istore 5
    //   352: iload 16
    //   354: istore 10
    //   356: goto -138 -> 218
    //   359: ldc 207
    //   361: astore 32
    //   363: goto -201 -> 162
    //   366: iload 6
    //   368: iconst_m1
    //   369: if_icmpne +51 -> 420
    //   372: aload 33
    //   374: getstatic 41	okhttp3/s:e	Ljava/util/regex/Pattern;
    //   377: invokevirtual 194	java/util/regex/Matcher:usePattern	(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    //   380: invokevirtual 196	java/util/regex/Matcher:matches	()Z
    //   383: ifeq +37 -> 420
    //   386: aload 33
    //   388: iconst_1
    //   389: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   392: invokestatic 205	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   395: istore 14
    //   397: iload 4
    //   399: istore 10
    //   401: iload 8
    //   403: istore 12
    //   405: iload 9
    //   407: istore 15
    //   409: iload 7
    //   411: istore 13
    //   413: iload 5
    //   415: istore 11
    //   417: goto -103 -> 314
    //   420: iload 8
    //   422: iconst_m1
    //   423: if_icmpne +69 -> 492
    //   426: aload 33
    //   428: getstatic 37	okhttp3/s:d	Ljava/util/regex/Pattern;
    //   431: invokevirtual 194	java/util/regex/Matcher:usePattern	(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    //   434: invokevirtual 196	java/util/regex/Matcher:matches	()Z
    //   437: ifeq +55 -> 492
    //   440: aload 33
    //   442: iconst_1
    //   443: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   446: getstatic 213	java/util/Locale:US	Ljava/util/Locale;
    //   449: invokevirtual 217	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   452: astore 36
    //   454: getstatic 37	okhttp3/s:d	Ljava/util/regex/Pattern;
    //   457: invokevirtual 221	java/util/regex/Pattern:pattern	()Ljava/lang/String;
    //   460: aload 36
    //   462: invokevirtual 224	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   465: iconst_4
    //   466: idiv
    //   467: istore 12
    //   469: iload 4
    //   471: istore 10
    //   473: iload 6
    //   475: istore 14
    //   477: iload 9
    //   479: istore 15
    //   481: iload 7
    //   483: istore 13
    //   485: iload 5
    //   487: istore 11
    //   489: goto -175 -> 314
    //   492: iload 4
    //   494: istore 10
    //   496: iload 8
    //   498: istore 12
    //   500: iload 6
    //   502: istore 14
    //   504: iload 9
    //   506: istore 15
    //   508: iload 7
    //   510: istore 13
    //   512: iload 5
    //   514: istore 11
    //   516: iload 4
    //   518: iconst_m1
    //   519: if_icmpne -205 -> 314
    //   522: iload 4
    //   524: istore 10
    //   526: iload 8
    //   528: istore 12
    //   530: iload 6
    //   532: istore 14
    //   534: iload 9
    //   536: istore 15
    //   538: iload 7
    //   540: istore 13
    //   542: iload 5
    //   544: istore 11
    //   546: aload 33
    //   548: getstatic 33	okhttp3/s:c	Ljava/util/regex/Pattern;
    //   551: invokevirtual 194	java/util/regex/Matcher:usePattern	(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;
    //   554: invokevirtual 196	java/util/regex/Matcher:matches	()Z
    //   557: ifeq -243 -> 314
    //   560: aload 33
    //   562: iconst_1
    //   563: invokevirtual 199	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   566: invokestatic 205	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   569: istore 10
    //   571: iload 8
    //   573: istore 12
    //   575: iload 6
    //   577: istore 14
    //   579: iload 9
    //   581: istore 15
    //   583: iload 7
    //   585: istore 13
    //   587: iload 5
    //   589: istore 11
    //   591: goto -277 -> 314
    //   594: iload 10
    //   596: sipush 1601
    //   599: if_icmpge +11 -> 610
    //   602: new 157	java/lang/IllegalArgumentException
    //   605: dup
    //   606: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   609: athrow
    //   610: iload 8
    //   612: iconst_m1
    //   613: if_icmpne +729 -> 1342
    //   616: new 157	java/lang/IllegalArgumentException
    //   619: dup
    //   620: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   623: athrow
    //   624: new 157	java/lang/IllegalArgumentException
    //   627: dup
    //   628: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   631: athrow
    //   632: new 157	java/lang/IllegalArgumentException
    //   635: dup
    //   636: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   639: athrow
    //   640: new 157	java/lang/IllegalArgumentException
    //   643: dup
    //   644: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   647: athrow
    //   648: new 157	java/lang/IllegalArgumentException
    //   651: dup
    //   652: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   655: athrow
    //   656: new 227	java/util/GregorianCalendar
    //   659: dup
    //   660: getstatic 230	okhttp3/internal/o:d	Ljava/util/TimeZone;
    //   663: invokespecial 233	java/util/GregorianCalendar:<init>	(Ljava/util/TimeZone;)V
    //   666: astore 32
    //   668: aload 32
    //   670: iconst_0
    //   671: invokevirtual 239	java/util/Calendar:setLenient	(Z)V
    //   674: aload 32
    //   676: iconst_1
    //   677: iload 10
    //   679: invokevirtual 243	java/util/Calendar:set	(II)V
    //   682: aload 32
    //   684: iconst_2
    //   685: iload 8
    //   687: iconst_1
    //   688: isub
    //   689: invokevirtual 243	java/util/Calendar:set	(II)V
    //   692: aload 32
    //   694: iconst_5
    //   695: iload 6
    //   697: invokevirtual 243	java/util/Calendar:set	(II)V
    //   700: aload 32
    //   702: bipush 11
    //   704: iload 5
    //   706: invokevirtual 243	java/util/Calendar:set	(II)V
    //   709: aload 32
    //   711: bipush 12
    //   713: iload 7
    //   715: invokevirtual 243	java/util/Calendar:set	(II)V
    //   718: aload 32
    //   720: bipush 13
    //   722: iload 9
    //   724: invokevirtual 243	java/util/Calendar:set	(II)V
    //   727: aload 32
    //   729: bipush 14
    //   731: iconst_0
    //   732: invokevirtual 243	java/util/Calendar:set	(II)V
    //   735: aload 32
    //   737: invokevirtual 246	java/util/Calendar:getTimeInMillis	()J
    //   740: lstore 24
    //   742: lload 24
    //   744: lstore 20
    //   746: iconst_1
    //   747: istore 26
    //   749: aload 30
    //   751: astore 32
    //   753: aload 31
    //   755: astore 30
    //   757: aload 32
    //   759: astore 31
    //   761: goto +560 -> 1321
    //   764: aload 33
    //   766: ldc 248
    //   768: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   771: ifeq +49 -> 820
    //   774: aload 32
    //   776: invokestatic 250	okhttp3/s:a	(Ljava/lang/String;)J
    //   779: lstore 24
    //   781: lload 24
    //   783: lstore 22
    //   785: iconst_1
    //   786: istore 26
    //   788: aload 30
    //   790: astore 32
    //   792: aload 31
    //   794: astore 30
    //   796: aload 32
    //   798: astore 31
    //   800: goto +521 -> 1321
    //   803: astore 32
    //   805: aload 30
    //   807: astore 32
    //   809: aload 31
    //   811: astore 30
    //   813: aload 32
    //   815: astore 31
    //   817: goto +504 -> 1321
    //   820: aload 33
    //   822: ldc 252
    //   824: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   827: ifeq +77 -> 904
    //   830: aload 32
    //   832: ldc 254
    //   834: invokevirtual 257	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   837: ifeq +11 -> 848
    //   840: new 157	java/lang/IllegalArgumentException
    //   843: dup
    //   844: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   847: athrow
    //   848: aload 32
    //   850: astore 33
    //   852: aload 32
    //   854: ldc 254
    //   856: invokevirtual 96	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   859: ifeq +11 -> 870
    //   862: aload 32
    //   864: iconst_1
    //   865: invokevirtual 260	java/lang/String:substring	(I)Ljava/lang/String;
    //   868: astore 33
    //   870: aload 33
    //   872: invokestatic 263	okhttp3/internal/o:a	(Ljava/lang/String;)Ljava/lang/String;
    //   875: astore 32
    //   877: aload 32
    //   879: ifnonnull +11 -> 890
    //   882: new 157	java/lang/IllegalArgumentException
    //   885: dup
    //   886: invokespecial 225	java/lang/IllegalArgumentException:<init>	()V
    //   889: athrow
    //   890: iconst_0
    //   891: istore 27
    //   893: aload 31
    //   895: astore 30
    //   897: aload 32
    //   899: astore 31
    //   901: goto +420 -> 1321
    //   904: aload 33
    //   906: ldc_w 265
    //   909: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   912: ifeq +14 -> 926
    //   915: aload 30
    //   917: astore 31
    //   919: aload 32
    //   921: astore 30
    //   923: goto +398 -> 1321
    //   926: aload 33
    //   928: ldc_w 267
    //   931: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   934: ifeq +21 -> 955
    //   937: iconst_1
    //   938: istore 29
    //   940: aload 30
    //   942: astore 32
    //   944: aload 31
    //   946: astore 30
    //   948: aload 32
    //   950: astore 31
    //   952: goto +369 -> 1321
    //   955: aload 33
    //   957: ldc_w 269
    //   960: invokevirtual 112	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   963: ifeq +273 -> 1236
    //   966: iconst_1
    //   967: istore 28
    //   969: aload 30
    //   971: astore 32
    //   973: aload 31
    //   975: astore 30
    //   977: aload 32
    //   979: astore 31
    //   981: goto +340 -> 1321
    //   984: lload 22
    //   986: ldc2_w 84
    //   989: lcmp
    //   990: ifne +92 -> 1082
    //   993: ldc2_w 84
    //   996: lstore 20
    //   998: aload 30
    //   1000: ifnonnull +150 -> 1150
    //   1003: aload_2
    //   1004: getfield 272	okhttp3/ad:b	Ljava/lang/String;
    //   1007: astore_3
    //   1008: aload 31
    //   1010: ifnull +18 -> 1028
    //   1013: aload 31
    //   1015: astore 30
    //   1017: aload 31
    //   1019: ldc_w 274
    //   1022: invokevirtual 96	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   1025: ifne +32 -> 1057
    //   1028: aload_2
    //   1029: invokevirtual 276	okhttp3/ad:d	()Ljava/lang/String;
    //   1032: astore_2
    //   1033: aload_2
    //   1034: bipush 47
    //   1036: invokevirtual 280	java/lang/String:lastIndexOf	(I)I
    //   1039: istore 4
    //   1041: iload 4
    //   1043: ifeq +180 -> 1223
    //   1046: aload_2
    //   1047: iconst_0
    //   1048: iload 4
    //   1050: invokevirtual 283	java/lang/String:substring	(II)Ljava/lang/String;
    //   1053: astore_2
    //   1054: aload_2
    //   1055: astore 30
    //   1057: new 2	okhttp3/s
    //   1060: dup
    //   1061: aload 34
    //   1063: aload 35
    //   1065: lload 20
    //   1067: aload_3
    //   1068: aload 30
    //   1070: iload 29
    //   1072: iload 28
    //   1074: iload 27
    //   1076: iload 26
    //   1078: invokespecial 285	okhttp3/s:<init>	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    //   1081: areturn
    //   1082: lload 22
    //   1084: ldc2_w 175
    //   1087: lcmp
    //   1088: ifeq -90 -> 998
    //   1091: lload 22
    //   1093: ldc2_w 286
    //   1096: lcmp
    //   1097: ifgt +45 -> 1142
    //   1100: lload 22
    //   1102: ldc2_w 288
    //   1105: lmul
    //   1106: lstore 20
    //   1108: lload_0
    //   1109: lload 20
    //   1111: ladd
    //   1112: lstore 22
    //   1114: lload 22
    //   1116: lload_0
    //   1117: lcmp
    //   1118: iflt +16 -> 1134
    //   1121: lload 22
    //   1123: lstore 20
    //   1125: lload 22
    //   1127: ldc2_w 173
    //   1130: lcmp
    //   1131: ifle -133 -> 998
    //   1134: ldc2_w 173
    //   1137: lstore 20
    //   1139: goto -141 -> 998
    //   1142: ldc2_w 97
    //   1145: lstore 20
    //   1147: goto -39 -> 1108
    //   1150: aload_2
    //   1151: getfield 272	okhttp3/ad:b	Ljava/lang/String;
    //   1154: astore_3
    //   1155: aload_3
    //   1156: aload 30
    //   1158: invokevirtual 292	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1161: ifeq +13 -> 1174
    //   1164: iconst_1
    //   1165: istore 4
    //   1167: iload 4
    //   1169: ifne +61 -> 1230
    //   1172: aconst_null
    //   1173: areturn
    //   1174: aload_3
    //   1175: aload 30
    //   1177: invokevirtual 257	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   1180: ifeq +37 -> 1217
    //   1183: aload_3
    //   1184: aload_3
    //   1185: invokevirtual 160	java/lang/String:length	()I
    //   1188: aload 30
    //   1190: invokevirtual 160	java/lang/String:length	()I
    //   1193: isub
    //   1194: iconst_1
    //   1195: isub
    //   1196: invokevirtual 75	java/lang/String:charAt	(I)C
    //   1199: bipush 46
    //   1201: if_icmpne +16 -> 1217
    //   1204: aload_3
    //   1205: invokestatic 294	okhttp3/internal/o:b	(Ljava/lang/String;)Z
    //   1208: ifne +9 -> 1217
    //   1211: iconst_1
    //   1212: istore 4
    //   1214: goto -47 -> 1167
    //   1217: iconst_0
    //   1218: istore 4
    //   1220: goto -53 -> 1167
    //   1223: ldc_w 274
    //   1226: astore_2
    //   1227: goto -173 -> 1054
    //   1230: aload 30
    //   1232: astore_3
    //   1233: goto -225 -> 1008
    //   1236: aload 30
    //   1238: astore 32
    //   1240: aload 31
    //   1242: astore 30
    //   1244: aload 32
    //   1246: astore 31
    //   1248: goto +73 -> 1321
    //   1251: goto +25 -> 1276
    //   1254: iload 4
    //   1256: bipush 70
    //   1258: if_icmplt -7 -> 1251
    //   1261: iload 4
    //   1263: bipush 99
    //   1265: if_icmpgt -14 -> 1251
    //   1268: iload 4
    //   1270: sipush 1900
    //   1273: iadd
    //   1274: istore 4
    //   1276: iload 4
    //   1278: istore 10
    //   1280: iload 4
    //   1282: iflt -688 -> 594
    //   1285: iload 4
    //   1287: istore 10
    //   1289: iload 4
    //   1291: bipush 69
    //   1293: if_icmpgt -699 -> 594
    //   1296: iload 4
    //   1298: sipush 2000
    //   1301: iadd
    //   1302: istore 10
    //   1304: goto -710 -> 594
    //   1307: astore 32
    //   1309: aload 31
    //   1311: astore 32
    //   1313: aload 30
    //   1315: astore 31
    //   1317: aload 32
    //   1319: astore 30
    //   1321: iload 18
    //   1323: iconst_1
    //   1324: iadd
    //   1325: istore 4
    //   1327: aload 31
    //   1329: astore 32
    //   1331: aload 30
    //   1333: astore 31
    //   1335: aload 32
    //   1337: astore 30
    //   1339: goto -1237 -> 102
    //   1342: iload 6
    //   1344: ifle -720 -> 624
    //   1347: iload 6
    //   1349: bipush 31
    //   1351: if_icmple +6 -> 1357
    //   1354: goto -730 -> 624
    //   1357: iload 5
    //   1359: iflt -727 -> 632
    //   1362: iload 5
    //   1364: bipush 23
    //   1366: if_icmple +6 -> 1372
    //   1369: goto -737 -> 632
    //   1372: iload 7
    //   1374: iflt -734 -> 640
    //   1377: iload 7
    //   1379: bipush 59
    //   1381: if_icmple +6 -> 1387
    //   1384: goto -744 -> 640
    //   1387: iload 9
    //   1389: iflt -741 -> 648
    //   1392: iload 9
    //   1394: bipush 59
    //   1396: if_icmple -740 -> 656
    //   1399: goto -751 -> 648
    //   1402: astore 32
    //   1404: aload 30
    //   1406: astore 32
    //   1408: aload 31
    //   1410: astore 30
    //   1412: aload 32
    //   1414: astore 31
    //   1416: goto -95 -> 1321
    //
    // Exception table:
    //   from	to	target	type
    //   774	781	803	java/lang/NumberFormatException
    //   172	190	1307	java/lang/IllegalArgumentException
    //   208	218	1307	java/lang/IllegalArgumentException
    //   225	249	1307	java/lang/IllegalArgumentException
    //   255	302	1307	java/lang/IllegalArgumentException
    //   314	328	1307	java/lang/IllegalArgumentException
    //   372	397	1307	java/lang/IllegalArgumentException
    //   426	469	1307	java/lang/IllegalArgumentException
    //   546	571	1307	java/lang/IllegalArgumentException
    //   602	610	1307	java/lang/IllegalArgumentException
    //   616	624	1307	java/lang/IllegalArgumentException
    //   624	632	1307	java/lang/IllegalArgumentException
    //   632	640	1307	java/lang/IllegalArgumentException
    //   640	648	1307	java/lang/IllegalArgumentException
    //   648	656	1307	java/lang/IllegalArgumentException
    //   656	742	1307	java/lang/IllegalArgumentException
    //   830	848	1402	java/lang/IllegalArgumentException
    //   852	870	1402	java/lang/IllegalArgumentException
    //   870	877	1402	java/lang/IllegalArgumentException
    //   882	890	1402	java/lang/IllegalArgumentException
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof s));
    do
    {
      return false;
      paramObject = (s)paramObject;
    }
    while ((!paramObject.a.equals(this.a)) || (!paramObject.b.equals(this.b)) || (!paramObject.h.equals(this.h)) || (!paramObject.i.equals(this.i)) || (paramObject.g != this.g) || (paramObject.j != this.j) || (paramObject.k != this.k) || (paramObject.l != this.l) || (paramObject.m != this.m));
    return true;
  }

  public final int hashCode()
  {
    int i3 = 0;
    int i4 = this.a.hashCode();
    int i5 = this.b.hashCode();
    int i6 = this.h.hashCode();
    int i7 = this.i.hashCode();
    int i8 = (int)(this.g ^ this.g >>> 32);
    int n;
    int i1;
    label72: int i2;
    if (this.j)
    {
      n = 0;
      if (!this.k)
        break label145;
      i1 = 0;
      if (!this.l)
        break label150;
      i2 = 0;
      label81: if (!this.m)
        break label155;
    }
    while (true)
    {
      return (i2 + (i1 + (n + (((((i4 + 527) * 31 + i5) * 31 + i6) * 31 + i7) * 31 + i8) * 31) * 31) * 31) * 31 + i3;
      n = 1;
      break;
      label145: i1 = 1;
      break label72;
      label150: i2 = 1;
      break label81;
      label155: i3 = 1;
    }
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append('=');
    localStringBuilder.append(this.b);
    if (this.l)
    {
      if (this.g != -9223372036854775808L)
        break label131;
      localStringBuilder.append("; max-age=0");
    }
    while (true)
    {
      if (!this.m)
        localStringBuilder.append("; domain=").append(this.h);
      localStringBuilder.append("; path=").append(this.i);
      if (this.j)
        localStringBuilder.append("; secure");
      if (this.k)
        localStringBuilder.append("; httponly");
      return localStringBuilder.toString();
      label131: localStringBuilder.append("; expires=").append(n.a(new Date(this.g)));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.s
 * JD-Core Version:    0.6.2
 */