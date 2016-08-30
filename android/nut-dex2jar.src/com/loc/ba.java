package com.loc;

import android.content.Context;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Hashtable<Ljava.lang.String;Ljava.lang.String;>;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class ba
{
  public static final int[] a = { 0, 0 };
  static int b = 213891;
  private static volatile String c = null;
  private static Hashtable<String, Long> d = new Hashtable();
  private static bo e = new bo();
  private static Hashtable<String, String> f = new Hashtable();
  private static TelephonyManager g = null;

  private static int a(int paramInt)
  {
    int i = 0;
    int[] arrayOfInt = new int[32];
    int j = 0;
    while (i < 4)
    {
      arrayOfInt[i] = (paramInt >> i * 8 & 0xFF);
      arrayOfInt[i] = ((arrayOfInt[i] << 4 & 0xF0) + (arrayOfInt[i] >> 4 & 0xF));
      j += ((arrayOfInt[i] & 0xFF) << (3 - i) * 8);
      i += 1;
    }
    return b + j;
  }

  private static int a(bg parambg, String paramString1, int[] paramArrayOfInt, int paramInt, String paramString2)
  {
    int j = -1;
    long l = paramInt;
    label246: label253: label255: 
    do
    {
      int i;
      int m;
      int k;
      try
      {
        parambg.a(l);
        if (paramString2.equals("gsm"))
        {
          i = paramArrayOfInt[0];
          paramInt = paramArrayOfInt[1];
          m = parambg.b();
          k = parambg.c();
          if (i < m)
            return -1;
        }
        else if (paramString2.equals("cdma"))
        {
          paramString1 = new int[3];
          paramString1[0] = paramArrayOfInt[0];
          paramString1[1] = paramArrayOfInt[1];
          paramString1[2] = paramArrayOfInt[2];
          paramArrayOfInt = new int[3];
          paramInt = 0;
          if (paramInt >= 3)
            break label253;
          paramArrayOfInt[paramInt] = parambg.b();
          i = j;
          if (paramString1[paramInt] >= paramArrayOfInt[paramInt])
          {
            if (paramString1[paramInt] <= paramArrayOfInt[paramInt])
              break label246;
            return 1;
          }
        }
        else if (paramString2.equals("wifi"))
        {
          paramArrayOfInt = by.b(paramString1);
          paramString1 = new int[6];
          paramInt = 0;
          break label255;
          paramArrayOfInt = new int[6];
          paramInt = 0;
          while (paramInt < 6)
          {
            parambg.e();
            if (parambg.b)
            {
              i = parambg.c.readUnsignedByte();
              break label296;
            }
            i = parambg.a.read();
            break label296;
            paramInt += 1;
          }
          return 0;
        }
      }
      catch (Exception parambg)
      {
        i = 2147483647;
      }
      do
      {
        do
        {
          return i;
          if (i > m)
            return 1;
          i = j;
        }
        while (paramInt < k);
        if (paramInt > k)
          return 1;
        return 0;
        paramInt += 1;
        break;
        return 0;
        if (paramInt < 6)
          if (paramArrayOfInt[paramInt] >= 0)
            break label288;
        for (i = paramArrayOfInt[paramInt] + 256; ; i = paramArrayOfInt[paramInt])
        {
          paramString1[paramInt] = i;
          paramInt += 1;
          break label255;
          break;
        }
        paramArrayOfInt[paramInt] = i;
        i = j;
      }
      while (paramString1[paramInt] < paramArrayOfInt[paramInt]);
    }
    while (paramString1[paramInt] <= paramArrayOfInt[paramInt]);
    label288: label296: return 1;
  }

  private static AmapLoc a(Hashtable<String, String> paramHashtable1, Hashtable<String, String> paramHashtable2, int paramInt1, int paramInt2)
  {
    Object localObject1 = new ap();
    int i;
    double d1;
    double d2;
    try
    {
      if (!paramHashtable1.isEmpty())
      {
        paramHashtable1 = paramHashtable1.entrySet().iterator();
        while (paramHashtable1.hasNext())
        {
          String str = (String)((Map.Entry)paramHashtable1.next()).getValue();
          i = 0;
          if (str.contains("access"))
            i = 1;
          if (str.contains("|"))
          {
            str = str.substring(0, str.lastIndexOf("|"));
            if (i != 0);
            for (i = 1; ; i = 2)
            {
              try
              {
                ((ap)localObject1).a(i, str);
              }
              catch (Throwable localThrowable)
              {
              }
              break;
            }
          }
        }
      }
      if (!paramHashtable2.isEmpty())
      {
        paramHashtable1 = paramHashtable2.entrySet().iterator();
        while (paramHashtable1.hasNext())
        {
          paramHashtable2 = (String)((Map.Entry)paramHashtable1.next()).getValue();
          if (paramHashtable2.contains("|"))
          {
            paramHashtable2 = paramHashtable2.substring(0, paramHashtable2.lastIndexOf("|"));
            try
            {
              ((ap)localObject1).a(0, paramHashtable2);
            }
            catch (Throwable paramHashtable2)
            {
            }
          }
        }
      }
    }
    catch (Throwable paramHashtable1)
    {
      d1 = paramInt2;
      d2 = paramInt1;
    }
    int k;
    Object localObject2;
    label319: label378: int j;
    Object localObject3;
    Object localObject4;
    try
    {
      paramHashtable1 = ((ap)localObject1).d;
      k = paramHashtable1.b.b.size();
      paramInt1 = 0;
      break label1208;
      if (paramInt2 >= k)
        break label1244;
      if (paramHashtable1.b.c[paramInt1][paramInt2] <= 0)
        break label1237;
      paramHashtable2 = new ArrayList();
      paramHashtable2.add(Integer.valueOf(paramInt1));
      paramHashtable2.add(Integer.valueOf(paramInt2));
      paramHashtable1.b.c[paramInt1][paramInt2] = -1;
      paramHashtable1.b.c[paramInt2][paramInt1] = -1;
      localObject2 = new ArrayList();
      i = 0;
      if (i < paramHashtable1.b.b.size())
      {
        if ((paramHashtable1.b.c[paramInt1][i] == 0) || (paramHashtable1.b.c[paramInt2][i] == 0))
          break label1219;
        ((ArrayList)localObject2).add(Integer.valueOf(i));
        break label1219;
      }
      if (((ArrayList)localObject2).isEmpty())
        break label653;
      j = ((Integer)((ArrayList)localObject2).get(0)).intValue();
      ((ArrayList)localObject2).remove(0);
      localObject3 = paramHashtable2.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject4 = (Integer)((Iterator)localObject3).next();
        paramHashtable1.b.c[j][localObject4.intValue()] = -1;
        paramHashtable1.b.c[localObject4.intValue()][j] = -1;
      }
    }
    catch (Throwable paramHashtable1)
    {
      paramHashtable1 = null;
    }
    label475: localObject1 = null;
    paramHashtable2 = (Hashtable<String, String>)localObject1;
    if (paramHashtable1 != null)
    {
      paramHashtable2 = (Hashtable<String, String>)localObject1;
      if (!paramHashtable1.isEmpty())
      {
        localObject1 = (as)paramHashtable1.get(0);
        paramHashtable2 = new AmapLoc();
        paramHashtable2.c("network");
        paramHashtable2.b(((as)localObject1).a);
        paramHashtable2.a(((as)localObject1).b);
        paramHashtable2.a(((as)localObject1).c);
        paramHashtable2.k(((as)localObject1).d);
        paramHashtable2.w("0");
        paramHashtable2.a(by.a());
        paramHashtable1.clear();
      }
    }
    label653: label913: if (by.a(paramHashtable2))
    {
      paramHashtable2.f("file");
      return paramHashtable2;
      paramHashtable2.add(Integer.valueOf(j));
      i = 0;
      label665: 
      while (true)
        label601: if (i < ((ArrayList)localObject2).size())
        {
          int m = ((Integer)((ArrayList)localObject2).get(i)).intValue();
          if (paramHashtable1.b.c[j][m] == 0)
          {
            ((ArrayList)localObject2).remove(i);
            continue;
            paramHashtable1.a.add(paramHashtable2);
            break label1237;
            i = j;
            if (paramInt2 < k)
            {
              if (paramHashtable1.b.c[paramInt1][paramInt2] > 0)
                throw new Exception("non visited edge");
              if (paramHashtable1.b.c[paramInt1][paramInt2] >= 0)
                break label1274;
              i = 0;
            }
            if (i == 0)
              break label1267;
            paramHashtable2 = new ArrayList();
            paramHashtable2.add(Integer.valueOf(paramInt1));
            paramHashtable1.a.add(paramHashtable2);
            break label1267;
            label750: paramHashtable1 = new ArrayList();
            paramHashtable2 = ((ap)localObject1).d.a.iterator();
            while (paramHashtable2.hasNext())
            {
              localObject3 = (ArrayList)paramHashtable2.next();
              localObject2 = new aq((ap)localObject1);
              localObject3 = ((ArrayList)localObject3).iterator();
              while (((Iterator)localObject3).hasNext())
              {
                localObject4 = (Integer)((Iterator)localObject3).next();
                localObject4 = (as)((ap)localObject1).b.get(((Integer)localObject4).intValue());
                if (((as)localObject4).e == 0)
                  ((aq)localObject2).b.add(localObject4);
                while (true)
                {
                  if (!"0".equals(((aq)localObject2).c))
                    break label913;
                  ((aq)localObject2).c = ((as)localObject4).d;
                  break;
                  if (((as)localObject4).e > 0)
                    ((aq)localObject2).a.add(localObject4);
                }
              }
              ((aq)localObject2).a();
              ((ap)localObject1).a.add(localObject2);
            }
            if (((ap)localObject1).a.isEmpty())
            {
              paramHashtable1 = null;
              break label1281;
            }
            Collections.sort(((ap)localObject1).a);
            if ((d1 == 0.0D) || (d2 == 0.0D))
              break label1291;
            paramHashtable2 = new as((ap)localObject1, d2, d1);
            paramInt1 = 0;
            label988: if (paramInt1 < ((ap)localObject1).a.size())
            {
              localObject2 = ((aq)((ap)localObject1).a.get(paramInt1)).b();
              d1 = paramHashtable2.a((as)localObject2);
              if (((as)localObject2).e > 0)
              {
                if ((d1 >= 7000.0D) || (d1 <= 2.0D))
                  break label1284;
                aq.a((aq)((ap)localObject1).a.get(paramInt1), aq.a((aq)((ap)localObject1).a.get(paramInt1)) * 5.0D);
                break label1284;
              }
              if ((d1 >= 10000.0D) || (d1 <= 2.0D))
                break label1284;
              aq.a((aq)((ap)localObject1).a.get(paramInt1), aq.a((aq)((ap)localObject1).a.get(paramInt1)) * 5.0D);
              break label1284;
            }
            Collections.sort(((ap)localObject1).a);
            break label1291;
          }
        }
    }
    while (true)
      if ((paramInt1 < ((ap)localObject1).a.size()) && (paramHashtable1.size() < 5))
      {
        paramHashtable1.add(((aq)((ap)localObject1).a.get(paramInt1)).b());
        paramInt1 += 1;
      }
      else
      {
        break label1281;
        return null;
        while (true)
        {
          label1208: if (paramInt1 >= k)
            break label1251;
          paramInt2 = 0;
          break;
          label1219: i += 1;
          break label319;
          i += 1;
          break label601;
          break label378;
          label1237: paramInt2 += 1;
          break;
          label1244: paramInt1 += 1;
        }
        label1251: paramInt1 = 0;
        while (true)
        {
          if (paramInt1 >= k)
            break label1272;
          j = 1;
          paramInt2 = 0;
          break;
          label1267: paramInt1 += 1;
        }
        label1272: break label750;
        label1274: paramInt2 += 1;
        break label665;
        label1281: break label475;
        label1284: paramInt1 += 1;
        break label988;
        label1291: paramInt1 = 0;
      }
  }

  // ERROR //
  public static AmapLoc a(double[] paramArrayOfDouble, String paramString1, String paramString2, String paramString3, int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   4: ifeq +7 -> 11
    //   7: aconst_null
    //   8: astore_0
    //   9: aload_0
    //   10: areturn
    //   11: aload_2
    //   12: ldc_w 300
    //   15: invokevirtual 138	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   18: ifeq +5 -> 23
    //   21: aconst_null
    //   22: areturn
    //   23: aload_2
    //   24: invokestatic 302	com/loc/ba:b	(Ljava/lang/String;)I
    //   27: istore 13
    //   29: iload 13
    //   31: aload_2
    //   32: invokestatic 305	com/loc/ba:a	(ILjava/lang/String;)Ljava/lang/String;
    //   35: astore 19
    //   37: new 25	java/util/Hashtable
    //   40: dup
    //   41: invokespecial 28	java/util/Hashtable:<init>	()V
    //   44: astore 20
    //   46: aload_2
    //   47: ldc_w 307
    //   50: invokevirtual 311	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   53: astore_2
    //   54: iload 13
    //   56: tableswitch	default:+24 -> 80, 1:+440->496, 2:+493->549
    //   81: nop
    //   82: aload 89
    //   84: invokespecial 28	java/util/Hashtable:<init>	()V
    //   87: astore_2
    //   88: aload_3
    //   89: aload_2
    //   90: invokestatic 314	com/loc/ba:a	(Ljava/lang/String;Ljava/util/Hashtable;)V
    //   93: invokestatic 317	com/loc/ba:c	()Ljava/lang/StringBuilder;
    //   96: astore_3
    //   97: aload_0
    //   98: ifnonnull +500 -> 598
    //   101: dconst_0
    //   102: dconst_0
    //   103: aload_1
    //   104: invokestatic 320	com/loc/ba:a	(DDLjava/lang/String;)[Ljava/lang/String;
    //   107: astore_1
    //   108: iconst_0
    //   109: istore 5
    //   111: iconst_0
    //   112: istore 7
    //   114: aload 20
    //   116: invokevirtual 321	java/util/Hashtable:size	()I
    //   119: putstatic 326	com/loc/dp:o	I
    //   122: iconst_0
    //   123: istore 10
    //   125: iload 10
    //   127: bipush 50
    //   129: if_icmpge +1581 -> 1710
    //   132: getstatic 329	com/loc/dp:n	Z
    //   135: ifeq +1575 -> 1710
    //   138: iload 10
    //   140: bipush 25
    //   142: if_icmpge +16 -> 158
    //   145: iload 5
    //   147: ifgt +28 -> 175
    //   150: aload 20
    //   152: invokevirtual 108	java/util/Hashtable:isEmpty	()Z
    //   155: ifne +20 -> 175
    //   158: iload 10
    //   160: bipush 25
    //   162: if_icmplt +13 -> 175
    //   165: iload 7
    //   167: ifgt +8 -> 175
    //   170: aload_2
    //   171: invokevirtual 108	java/util/Hashtable:isEmpty	()Z
    //   174: pop
    //   175: iload 10
    //   177: ifne +1533 -> 1710
    //   180: aload_3
    //   181: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: astore_0
    //   185: iload 10
    //   187: bipush 25
    //   189: if_icmpge +1570 -> 1759
    //   192: iload 13
    //   194: tableswitch	default:+22 -> 216, 1:+418->612, 2:+428->622
    //   217: iconst_1
    //   218: iconst_0
    //   219: iconst_0
    //   220: iastore
    //   221: aload 4
    //   223: iconst_1
    //   224: iconst_0
    //   225: iastore
    //   226: new 331	java/lang/StringBuilder
    //   229: dup
    //   230: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   233: aload_0
    //   234: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: getstatic 345	java/io/File:separator	Ljava/lang/String;
    //   240: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: astore_0
    //   247: new 331	java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   254: aload_0
    //   255: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: aload_1
    //   259: iload 10
    //   261: aaload
    //   262: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: astore 21
    //   270: aload 21
    //   272: getstatic 23	com/loc/ba:c	Ljava/lang/String;
    //   275: invokevirtual 62	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   278: ifne +1481 -> 1759
    //   281: getstatic 35	com/loc/ba:e	Lcom/loc/bo;
    //   284: astore 22
    //   286: aload 22
    //   288: aload 21
    //   290: invokevirtual 348	com/loc/bo:b	(Ljava/lang/Object;)Ljava/lang/Object;
    //   293: checkcast 51	com/loc/bg
    //   296: astore_0
    //   297: new 342	java/io/File
    //   300: dup
    //   301: aload 21
    //   303: invokespecial 349	java/io/File:<init>	(Ljava/lang/String;)V
    //   306: astore 23
    //   308: aload_0
    //   309: ifnonnull +567 -> 876
    //   312: aload 23
    //   314: invokevirtual 353	java/io/File:getParentFile	()Ljava/io/File;
    //   317: invokevirtual 356	java/io/File:exists	()Z
    //   320: ifeq +1439 -> 1759
    //   323: aload 23
    //   325: invokevirtual 359	java/io/File:isDirectory	()Z
    //   328: ifne +1431 -> 1759
    //   331: aload 23
    //   333: invokevirtual 356	java/io/File:exists	()Z
    //   336: ifeq +1423 -> 1759
    //   339: new 361	com/loc/bh
    //   342: dup
    //   343: invokespecial 362	com/loc/bh:<init>	()V
    //   346: astore 24
    //   348: new 51	com/loc/bg
    //   351: dup
    //   352: aload 23
    //   354: aload 24
    //   356: invokespecial 365	com/loc/bg:<init>	(Ljava/io/File;Lcom/loc/bh;)V
    //   359: astore_0
    //   360: iconst_0
    //   361: istore 9
    //   363: iconst_0
    //   364: istore 6
    //   366: aload_0
    //   367: ifnull +1392 -> 1759
    //   370: aload_0
    //   371: lconst_0
    //   372: invokevirtual 54	com/loc/bg:a	(J)V
    //   375: aload_0
    //   376: invokevirtual 78	com/loc/bg:e	()V
    //   379: aload_0
    //   380: getfield 81	com/loc/bg:b	Z
    //   383: ifeq +499 -> 882
    //   386: aload_0
    //   387: getfield 84	com/loc/bg:c	Ljava/io/RandomAccessFile;
    //   390: invokevirtual 368	java/io/RandomAccessFile:readLong	()J
    //   393: lstore 14
    //   395: iload 10
    //   397: bipush 25
    //   399: if_icmpge +9 -> 408
    //   402: aload_0
    //   403: invokevirtual 65	com/loc/bg:b	()I
    //   406: istore 6
    //   408: aload_0
    //   409: invokevirtual 370	com/loc/bg:d	()J
    //   412: lstore 16
    //   414: iload 10
    //   416: bipush 25
    //   418: if_icmpge +1348 -> 1766
    //   421: iload 6
    //   423: iconst_4
    //   424: imul
    //   425: iconst_2
    //   426: iadd
    //   427: bipush 8
    //   429: iadd
    //   430: istore 11
    //   432: ldc2_w 371
    //   435: lload 14
    //   437: ladd
    //   438: invokestatic 230	com/loc/by:a	()J
    //   441: lcmp
    //   442: ifge +517 -> 959
    //   445: aload_0
    //   446: ifnull +16 -> 462
    //   449: iload 9
    //   451: ifeq +497 -> 948
    //   454: aload 22
    //   456: aload 21
    //   458: invokevirtual 374	com/loc/bo:c	(Ljava/lang/Object;)Ljava/lang/Object;
    //   461: pop
    //   462: aload 23
    //   464: invokevirtual 377	java/io/File:delete	()Z
    //   467: pop
    //   468: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   471: aload_1
    //   472: iload 10
    //   474: aaload
    //   475: invokevirtual 379	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   478: pop
    //   479: iload 7
    //   481: istore 8
    //   483: iload 10
    //   485: iconst_1
    //   486: iadd
    //   487: istore 10
    //   489: iload 8
    //   491: istore 7
    //   493: goto -368 -> 125
    //   496: aload 20
    //   498: new 331	java/lang/StringBuilder
    //   501: dup
    //   502: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   505: aload_2
    //   506: iconst_3
    //   507: aaload
    //   508: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   511: ldc 140
    //   513: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: aload_2
    //   517: iconst_4
    //   518: aaload
    //   519: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   522: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   525: ldc 134
    //   527: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   530: pop
    //   531: aload_3
    //   532: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   535: ifne -455 -> 80
    //   538: aload_3
    //   539: ldc_w 307
    //   542: invokevirtual 311	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   545: pop
    //   546: goto -466 -> 80
    //   549: aload 20
    //   551: new 331	java/lang/StringBuilder
    //   554: dup
    //   555: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   558: aload_2
    //   559: iconst_3
    //   560: aaload
    //   561: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: ldc 140
    //   566: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: aload_2
    //   570: iconst_4
    //   571: aaload
    //   572: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: ldc 140
    //   577: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: aload_2
    //   581: iconst_5
    //   582: aaload
    //   583: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   589: ldc 134
    //   591: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   594: pop
    //   595: goto -515 -> 80
    //   598: aload_0
    //   599: iconst_0
    //   600: daload
    //   601: aload_0
    //   602: iconst_1
    //   603: daload
    //   604: aload_1
    //   605: invokestatic 320	com/loc/ba:a	(DDLjava/lang/String;)[Ljava/lang/String;
    //   608: astore_1
    //   609: goto -501 -> 108
    //   612: aload 4
    //   614: iconst_0
    //   615: iconst_0
    //   616: iastore
    //   617: aload 4
    //   619: iconst_1
    //   620: iconst_0
    //   621: iastore
    //   622: new 331	java/lang/StringBuilder
    //   625: dup
    //   626: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   629: aload_0
    //   630: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: aload 19
    //   635: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   638: getstatic 345	java/io/File:separator	Ljava/lang/String;
    //   641: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   644: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   647: astore_0
    //   648: aload_1
    //   649: iload 10
    //   651: aaload
    //   652: ldc_w 385
    //   655: invokevirtual 389	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   658: ifeq +106 -> 764
    //   661: new 331	java/lang/StringBuilder
    //   664: dup
    //   665: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   668: aload_0
    //   669: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   672: aload_1
    //   673: iload 10
    //   675: aaload
    //   676: iconst_0
    //   677: iconst_4
    //   678: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   681: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   684: ldc_w 391
    //   687: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   690: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   693: astore_0
    //   694: aload_1
    //   695: iload 10
    //   697: aaload
    //   698: ldc_w 391
    //   701: invokevirtual 394	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   704: iconst_1
    //   705: iadd
    //   706: istore 6
    //   708: aload_1
    //   709: iload 10
    //   711: aaload
    //   712: iload 6
    //   714: iload 6
    //   716: iconst_1
    //   717: iadd
    //   718: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   721: ldc_w 385
    //   724: invokevirtual 389	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   727: ifeq +73 -> 800
    //   730: new 331	java/lang/StringBuilder
    //   733: dup
    //   734: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   737: aload_0
    //   738: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   741: aload_1
    //   742: iload 10
    //   744: aaload
    //   745: iload 6
    //   747: iload 6
    //   749: iconst_4
    //   750: iadd
    //   751: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   754: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   757: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   760: astore_0
    //   761: goto -535 -> 226
    //   764: new 331	java/lang/StringBuilder
    //   767: dup
    //   768: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   771: aload_0
    //   772: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   775: aload_1
    //   776: iload 10
    //   778: aaload
    //   779: iconst_0
    //   780: iconst_3
    //   781: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   784: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   787: ldc_w 391
    //   790: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   793: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   796: astore_0
    //   797: goto -103 -> 694
    //   800: new 331	java/lang/StringBuilder
    //   803: dup
    //   804: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   807: aload_0
    //   808: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   811: aload_1
    //   812: iload 10
    //   814: aaload
    //   815: iload 6
    //   817: iload 6
    //   819: iconst_3
    //   820: iadd
    //   821: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   824: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   827: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   830: astore_0
    //   831: goto -605 -> 226
    //   834: astore_0
    //   835: iload 7
    //   837: istore 8
    //   839: goto -356 -> 483
    //   842: astore_0
    //   843: aload 24
    //   845: iconst_0
    //   846: putfield 396	com/loc/bh:a	Z
    //   849: new 51	com/loc/bg
    //   852: dup
    //   853: aload 23
    //   855: aload 24
    //   857: invokespecial 365	com/loc/bg:<init>	(Ljava/io/File;Lcom/loc/bh;)V
    //   860: astore_0
    //   861: iconst_0
    //   862: istore 9
    //   864: goto -501 -> 363
    //   867: astore_0
    //   868: iconst_0
    //   869: istore 9
    //   871: aconst_null
    //   872: astore_0
    //   873: goto -510 -> 363
    //   876: iconst_1
    //   877: istore 9
    //   879: goto -516 -> 363
    //   882: aload_0
    //   883: getfield 92	com/loc/bg:a	Ljava/io/ByteArrayInputStream;
    //   886: aload_0
    //   887: getfield 399	com/loc/bg:d	[B
    //   890: invokevirtual 402	java/io/ByteArrayInputStream:read	([B)I
    //   893: pop
    //   894: aload_0
    //   895: getfield 399	com/loc/bg:d	[B
    //   898: invokestatic 405	com/loc/by:b	([B)J
    //   901: lstore 14
    //   903: goto -508 -> 395
    //   906: astore_0
    //   907: iload 9
    //   909: ifeq +11 -> 920
    //   912: aload 22
    //   914: aload 21
    //   916: invokevirtual 374	com/loc/bo:c	(Ljava/lang/Object;)Ljava/lang/Object;
    //   919: pop
    //   920: iload 7
    //   922: istore 8
    //   924: goto -441 -> 483
    //   927: astore_0
    //   928: iload 9
    //   930: ifeq +11 -> 941
    //   933: aload 22
    //   935: aload 21
    //   937: invokevirtual 374	com/loc/bo:c	(Ljava/lang/Object;)Ljava/lang/Object;
    //   940: pop
    //   941: iload 7
    //   943: istore 8
    //   945: goto -462 -> 483
    //   948: aload_0
    //   949: invokevirtual 406	com/loc/bg:a	()V
    //   952: goto -490 -> 462
    //   955: astore_0
    //   956: goto -494 -> 462
    //   959: lload 16
    //   961: ldc2_w 407
    //   964: lcmp
    //   965: ifle +18 -> 983
    //   968: lload 16
    //   970: iload 11
    //   972: i2l
    //   973: lsub
    //   974: ldc2_w 409
    //   977: lrem
    //   978: lconst_0
    //   979: lcmp
    //   980: ifeq +35 -> 1015
    //   983: aload_0
    //   984: ifnull +7 -> 991
    //   987: aload_0
    //   988: invokevirtual 406	com/loc/bg:a	()V
    //   991: aload 23
    //   993: invokevirtual 377	java/io/File:delete	()Z
    //   996: pop
    //   997: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   1000: aload_1
    //   1001: iload 10
    //   1003: aaload
    //   1004: invokevirtual 379	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1007: pop
    //   1008: iload 7
    //   1010: istore 8
    //   1012: goto -529 -> 483
    //   1015: iload 10
    //   1017: bipush 25
    //   1019: if_icmpge +761 -> 1780
    //   1022: aload 20
    //   1024: invokevirtual 108	java/util/Hashtable:isEmpty	()Z
    //   1027: ifne +753 -> 1780
    //   1030: iload 5
    //   1032: getstatic 326	com/loc/dp:o	I
    //   1035: if_icmpge +745 -> 1780
    //   1038: iconst_1
    //   1039: istore 8
    //   1041: iload 10
    //   1043: bipush 25
    //   1045: if_icmplt +741 -> 1786
    //   1048: aload_2
    //   1049: invokevirtual 108	java/util/Hashtable:isEmpty	()Z
    //   1052: ifne +734 -> 1786
    //   1055: iload 7
    //   1057: bipush 15
    //   1059: if_icmpge +727 -> 1786
    //   1062: iconst_1
    //   1063: istore 12
    //   1065: iload 5
    //   1067: istore 6
    //   1069: iload 8
    //   1071: ifeq +260 -> 1331
    //   1074: iload 5
    //   1076: istore 8
    //   1078: aload 20
    //   1080: invokevirtual 112	java/util/Hashtable:entrySet	()Ljava/util/Set;
    //   1083: invokeinterface 118 1 0
    //   1088: astore 23
    //   1090: iload 5
    //   1092: istore 6
    //   1094: iload 5
    //   1096: istore 8
    //   1098: aload 23
    //   1100: invokeinterface 123 1 0
    //   1105: ifeq +226 -> 1331
    //   1108: iload 5
    //   1110: istore 8
    //   1112: aload 23
    //   1114: invokeinterface 127 1 0
    //   1119: checkcast 129	java/util/Map$Entry
    //   1122: astore 24
    //   1124: iload 5
    //   1126: istore 8
    //   1128: iload 11
    //   1130: aload_0
    //   1131: aload 24
    //   1133: invokeinterface 413 1 0
    //   1138: checkcast 58	java/lang/String
    //   1141: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1144: iconst_0
    //   1145: invokestatic 417	com/loc/ba:a	(ILcom/loc/bg;Ljava/lang/String;I)[D
    //   1148: astore 25
    //   1150: iload 5
    //   1152: istore 6
    //   1154: aload 25
    //   1156: ifnull +617 -> 1773
    //   1159: iload 5
    //   1161: iconst_1
    //   1162: iadd
    //   1163: istore 5
    //   1165: iload 5
    //   1167: istore 8
    //   1169: new 331	java/lang/StringBuilder
    //   1172: dup
    //   1173: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1176: aload 25
    //   1178: iconst_0
    //   1179: daload
    //   1180: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1183: ldc 140
    //   1185: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1188: aload 25
    //   1190: iconst_1
    //   1191: daload
    //   1192: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1195: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1198: astore 26
    //   1200: iload 5
    //   1202: istore 8
    //   1204: new 331	java/lang/StringBuilder
    //   1207: dup
    //   1208: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1211: aload 26
    //   1213: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1216: ldc 140
    //   1218: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1221: aload 25
    //   1223: iconst_2
    //   1224: daload
    //   1225: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1228: ldc 140
    //   1230: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1233: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1236: astore 25
    //   1238: iload 5
    //   1240: istore 8
    //   1242: new 331	java/lang/StringBuilder
    //   1245: dup
    //   1246: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1249: aload 25
    //   1251: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1254: aload 20
    //   1256: aload 24
    //   1258: invokeinterface 413 1 0
    //   1263: checkcast 58	java/lang/String
    //   1266: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1269: invokevirtual 422	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1272: checkcast 58	java/lang/String
    //   1275: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1278: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1281: astore 25
    //   1283: iload 5
    //   1285: istore 8
    //   1287: aload 20
    //   1289: aload 24
    //   1291: invokeinterface 413 1 0
    //   1296: checkcast 58	java/lang/String
    //   1299: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1302: aload 25
    //   1304: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1307: pop
    //   1308: iload 5
    //   1310: istore 6
    //   1312: iload 5
    //   1314: istore 8
    //   1316: iload 5
    //   1318: getstatic 326	com/loc/dp:o	I
    //   1321: if_icmpge +10 -> 1331
    //   1324: iload 5
    //   1326: istore 6
    //   1328: goto +445 -> 1773
    //   1331: iload 12
    //   1333: ifeq +269 -> 1602
    //   1336: iload 6
    //   1338: istore 8
    //   1340: aload_2
    //   1341: invokevirtual 112	java/util/Hashtable:entrySet	()Ljava/util/Set;
    //   1344: invokeinterface 118 1 0
    //   1349: astore 23
    //   1351: iload 7
    //   1353: istore 5
    //   1355: iload 5
    //   1357: istore 7
    //   1359: aload 23
    //   1361: ifnull +241 -> 1602
    //   1364: iload 5
    //   1366: istore 7
    //   1368: iload 5
    //   1370: istore 8
    //   1372: aload 23
    //   1374: invokeinterface 123 1 0
    //   1379: ifeq +223 -> 1602
    //   1382: iload 5
    //   1384: istore 8
    //   1386: aload 23
    //   1388: invokeinterface 127 1 0
    //   1393: checkcast 129	java/util/Map$Entry
    //   1396: astore 24
    //   1398: iload 5
    //   1400: istore 8
    //   1402: iload 11
    //   1404: aload_0
    //   1405: aload 24
    //   1407: invokeinterface 413 1 0
    //   1412: checkcast 58	java/lang/String
    //   1415: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1418: iconst_1
    //   1419: invokestatic 417	com/loc/ba:a	(ILcom/loc/bg;Ljava/lang/String;I)[D
    //   1422: astore 25
    //   1424: iload 5
    //   1426: istore 7
    //   1428: aload 25
    //   1430: ifnull +165 -> 1595
    //   1433: iload 5
    //   1435: iconst_1
    //   1436: iadd
    //   1437: istore 5
    //   1439: iload 5
    //   1441: istore 8
    //   1443: new 331	java/lang/StringBuilder
    //   1446: dup
    //   1447: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1450: aload 25
    //   1452: iconst_0
    //   1453: daload
    //   1454: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1457: ldc 140
    //   1459: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1462: aload 25
    //   1464: iconst_1
    //   1465: daload
    //   1466: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1469: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1472: astore 26
    //   1474: iload 5
    //   1476: istore 8
    //   1478: new 331	java/lang/StringBuilder
    //   1481: dup
    //   1482: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1485: aload 26
    //   1487: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1490: ldc 140
    //   1492: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1495: aload 25
    //   1497: iconst_2
    //   1498: daload
    //   1499: invokevirtual 420	java/lang/StringBuilder:append	(D)Ljava/lang/StringBuilder;
    //   1502: ldc 140
    //   1504: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1507: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1510: astore 25
    //   1512: iload 5
    //   1514: istore 8
    //   1516: new 331	java/lang/StringBuilder
    //   1519: dup
    //   1520: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   1523: aload 25
    //   1525: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1528: aload_2
    //   1529: aload 24
    //   1531: invokeinterface 413 1 0
    //   1536: checkcast 58	java/lang/String
    //   1539: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1542: invokevirtual 422	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   1545: checkcast 58	java/lang/String
    //   1548: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1551: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1554: astore 25
    //   1556: iload 5
    //   1558: istore 8
    //   1560: aload_2
    //   1561: aload 24
    //   1563: invokeinterface 413 1 0
    //   1568: checkcast 58	java/lang/String
    //   1571: invokevirtual 414	java/lang/String:toString	()Ljava/lang/String;
    //   1574: aload 25
    //   1576: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1579: pop
    //   1580: iload 5
    //   1582: istore 7
    //   1584: iload 5
    //   1586: bipush 15
    //   1588: if_icmpge +14 -> 1602
    //   1591: iload 5
    //   1593: istore 7
    //   1595: iload 7
    //   1597: istore 5
    //   1599: goto -244 -> 1355
    //   1602: iload 6
    //   1604: istore 5
    //   1606: iload 7
    //   1608: istore 8
    //   1610: aload_0
    //   1611: ifnull -1128 -> 483
    //   1614: aload_0
    //   1615: getfield 425	com/loc/bg:e	Lcom/loc/bh;
    //   1618: ifnonnull +47 -> 1665
    //   1621: iconst_0
    //   1622: istore 18
    //   1624: iload 18
    //   1626: ifne +51 -> 1677
    //   1629: aload_0
    //   1630: invokevirtual 406	com/loc/bg:a	()V
    //   1633: iload 6
    //   1635: istore 5
    //   1637: iload 7
    //   1639: istore 8
    //   1641: goto -1158 -> 483
    //   1644: astore_0
    //   1645: iload 6
    //   1647: istore 5
    //   1649: iload 7
    //   1651: istore 8
    //   1653: goto -1170 -> 483
    //   1656: astore 23
    //   1658: iload 8
    //   1660: istore 6
    //   1662: goto -60 -> 1602
    //   1665: aload_0
    //   1666: getfield 425	com/loc/bg:e	Lcom/loc/bh;
    //   1669: getfield 396	com/loc/bh:a	Z
    //   1672: istore 18
    //   1674: goto -50 -> 1624
    //   1677: iload 6
    //   1679: istore 5
    //   1681: iload 7
    //   1683: istore 8
    //   1685: iload 9
    //   1687: ifne -1204 -> 483
    //   1690: aload 22
    //   1692: aload 21
    //   1694: aload_0
    //   1695: invokevirtual 427	com/loc/bo:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1698: pop
    //   1699: iload 6
    //   1701: istore 5
    //   1703: iload 7
    //   1705: istore 8
    //   1707: goto -1224 -> 483
    //   1710: aload_3
    //   1711: iconst_0
    //   1712: aload_3
    //   1713: invokevirtual 430	java/lang/StringBuilder:length	()I
    //   1716: invokevirtual 433	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   1719: pop
    //   1720: aload 20
    //   1722: aload_2
    //   1723: aload 4
    //   1725: iconst_0
    //   1726: iaload
    //   1727: aload 4
    //   1729: iconst_1
    //   1730: iaload
    //   1731: invokestatic 435	com/loc/ba:a	(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    //   1734: astore_1
    //   1735: aload_1
    //   1736: astore_0
    //   1737: aload_1
    //   1738: invokestatic 237	com/loc/by:a	(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    //   1741: ifne -1732 -> 9
    //   1744: aconst_null
    //   1745: areturn
    //   1746: astore_0
    //   1747: goto -756 -> 991
    //   1750: astore 23
    //   1752: iload 8
    //   1754: istore 7
    //   1756: goto -94 -> 1662
    //   1759: iload 7
    //   1761: istore 8
    //   1763: goto -1280 -> 483
    //   1766: bipush 8
    //   1768: istore 11
    //   1770: goto -1338 -> 432
    //   1773: iload 6
    //   1775: istore 5
    //   1777: goto -687 -> 1090
    //   1780: iconst_0
    //   1781: istore 8
    //   1783: goto -742 -> 1041
    //   1786: iconst_0
    //   1787: istore 12
    //   1789: goto -724 -> 1065
    //
    // Exception table:
    //   from	to	target	type
    //   348	360	834	java/io/FileNotFoundException
    //   348	360	842	java/lang/Throwable
    //   849	861	867	java/lang/Throwable
    //   370	395	906	java/lang/Exception
    //   402	408	906	java/lang/Exception
    //   882	903	906	java/lang/Exception
    //   408	414	927	java/lang/Exception
    //   454	462	955	java/lang/Exception
    //   948	952	955	java/lang/Exception
    //   1629	1633	1644	java/lang/Exception
    //   1078	1090	1656	java/lang/Throwable
    //   1098	1108	1656	java/lang/Throwable
    //   1112	1124	1656	java/lang/Throwable
    //   1128	1150	1656	java/lang/Throwable
    //   1169	1200	1656	java/lang/Throwable
    //   1204	1238	1656	java/lang/Throwable
    //   1242	1283	1656	java/lang/Throwable
    //   1287	1308	1656	java/lang/Throwable
    //   1316	1324	1656	java/lang/Throwable
    //   1340	1351	1656	java/lang/Throwable
    //   987	991	1746	java/lang/Exception
    //   1372	1382	1750	java/lang/Throwable
    //   1386	1398	1750	java/lang/Throwable
    //   1402	1424	1750	java/lang/Throwable
    //   1443	1474	1750	java/lang/Throwable
    //   1478	1512	1750	java/lang/Throwable
    //   1516	1556	1750	java/lang/Throwable
    //   1560	1580	1750	java/lang/Throwable
  }

  private static String a(int paramInt, String paramString)
  {
    paramString = paramString.split("#");
    switch (paramInt)
    {
    default:
      return null;
    case 1:
      return paramString[1] + "_" + paramString[2];
    case 2:
    }
    return paramString[3];
  }

  public static ArrayList<String> a(String paramString)
  {
    Object localObject = null;
    String[] arrayOfString = null;
    if (f.isEmpty())
      localObject = arrayOfString;
    Iterator localIterator;
    do
    {
      return localObject;
      int i = b(paramString);
      arrayOfString = paramString.split("#");
      switch (i)
      {
      default:
        return null;
      case 1:
      case 2:
      }
      localIterator = f.keySet().iterator();
      paramString = (String)localObject;
      localObject = paramString;
    }
    while (!localIterator.hasNext());
    localObject = (String)localIterator.next();
    if (((String)f.get(localObject)).contains("," + arrayOfString[3] + ","))
      if (paramString == null)
      {
        paramString = new ArrayList();
        label145: paramString.add(localObject);
      }
    while (true)
    {
      break;
      break label145;
    }
  }

  public static void a()
  {
    e.a(-1);
    d.clear();
    f.clear();
    a[0] = 0;
    a[1] = 0;
  }

  private static void a(String paramString, Hashtable<String, String> paramHashtable)
  {
    if (TextUtils.isEmpty(paramString));
    while (true)
    {
      return;
      paramString = paramString.split("#");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString[i];
        if (arrayOfString.contains(","))
        {
          arrayOfString = arrayOfString.split(",");
          paramHashtable.put(arrayOfString[0], arrayOfString[1]);
        }
        i += 1;
      }
    }
  }

  // ERROR //
  private static boolean a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: iconst_2
    //   4: anewarray 58	java/lang/String
    //   7: astore 9
    //   9: aload_1
    //   10: aload_2
    //   11: aload 9
    //   13: invokestatic 462	com/loc/ba:a	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    //   16: ifne +5 -> 21
    //   19: iconst_0
    //   20: ireturn
    //   21: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   24: aload 9
    //   26: iconst_1
    //   27: aaload
    //   28: invokevirtual 465	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   31: ifeq +45 -> 76
    //   34: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   37: aload 9
    //   39: iconst_1
    //   40: aaload
    //   41: invokevirtual 422	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   44: checkcast 467	java/lang/Long
    //   47: invokevirtual 470	java/lang/Long:longValue	()J
    //   50: lstore 6
    //   52: invokestatic 230	com/loc/by:a	()J
    //   55: lload 6
    //   57: lsub
    //   58: ldc2_w 471
    //   61: lcmp
    //   62: iflt -43 -> 19
    //   65: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   68: aload 9
    //   70: iconst_1
    //   71: aaload
    //   72: invokevirtual 379	java/util/Hashtable:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   75: pop
    //   76: invokestatic 474	com/loc/by:b	()J
    //   79: pop2
    //   80: new 476	java/util/HashMap
    //   83: dup
    //   84: invokespecial 477	java/util/HashMap:<init>	()V
    //   87: astore_1
    //   88: aload_1
    //   89: ldc_w 479
    //   92: ldc_w 481
    //   95: invokevirtual 482	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   98: pop
    //   99: aload_0
    //   100: invokestatic 487	com/loc/bq:a	(Landroid/content/Context;)Lcom/loc/bq;
    //   103: pop
    //   104: aload_0
    //   105: ldc_w 489
    //   108: aload_1
    //   109: aload 9
    //   111: iconst_0
    //   112: aaload
    //   113: ldc_w 491
    //   116: invokevirtual 494	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   119: invokestatic 497	com/loc/bq:a	(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    //   122: astore_0
    //   123: aload_0
    //   124: ifnonnull +16 -> 140
    //   127: aload_0
    //   128: ifnull -109 -> 19
    //   131: aload_0
    //   132: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   135: iconst_0
    //   136: ireturn
    //   137: astore_0
    //   138: iconst_0
    //   139: ireturn
    //   140: aload_0
    //   141: invokevirtual 505	java/net/HttpURLConnection:getResponseCode	()I
    //   144: sipush 200
    //   147: if_icmpne +1123 -> 1270
    //   150: aload_0
    //   151: invokevirtual 509	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   154: invokeinterface 512 1 0
    //   159: invokeinterface 118 1 0
    //   164: astore_1
    //   165: aload_1
    //   166: invokeinterface 123 1 0
    //   171: ifeq +1094 -> 1265
    //   174: aload_1
    //   175: invokeinterface 127 1 0
    //   180: checkcast 129	java/util/Map$Entry
    //   183: astore_2
    //   184: ldc_w 514
    //   187: aload_2
    //   188: invokeinterface 413 1 0
    //   193: invokevirtual 62	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   196: ifeq -31 -> 165
    //   199: aload_2
    //   200: invokeinterface 132 1 0
    //   205: checkcast 516	java/util/List
    //   208: iconst_0
    //   209: invokeinterface 517 2 0
    //   214: checkcast 58	java/lang/String
    //   217: invokestatic 520	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   220: istore_3
    //   221: iload_3
    //   222: sipush 260
    //   225: if_icmpne +390 -> 615
    //   228: aload 9
    //   230: iconst_1
    //   231: aaload
    //   232: putstatic 23	com/loc/ba:c	Ljava/lang/String;
    //   235: aload_0
    //   236: invokevirtual 524	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   239: astore_1
    //   240: new 526	java/util/zip/GZIPInputStream
    //   243: dup
    //   244: aload_1
    //   245: invokespecial 529	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   248: astore_2
    //   249: new 342	java/io/File
    //   252: dup
    //   253: aload 9
    //   255: iconst_1
    //   256: aaload
    //   257: invokespecial 349	java/io/File:<init>	(Ljava/lang/String;)V
    //   260: astore 8
    //   262: aload 8
    //   264: invokevirtual 356	java/io/File:exists	()Z
    //   267: ifeq +993 -> 1260
    //   270: aload 8
    //   272: invokevirtual 377	java/io/File:delete	()Z
    //   275: ifne +985 -> 1260
    //   278: iconst_0
    //   279: istore_3
    //   280: iload_3
    //   281: ifeq +973 -> 1254
    //   284: getstatic 329	com/loc/dp:n	Z
    //   287: ifeq +967 -> 1254
    //   290: aload 8
    //   292: invokevirtual 353	java/io/File:getParentFile	()Ljava/io/File;
    //   295: astore 10
    //   297: aload 10
    //   299: invokevirtual 356	java/io/File:exists	()Z
    //   302: ifne +9 -> 311
    //   305: aload 10
    //   307: invokevirtual 532	java/io/File:mkdirs	()Z
    //   310: pop
    //   311: new 534	java/io/BufferedOutputStream
    //   314: dup
    //   315: new 536	java/io/FileOutputStream
    //   318: dup
    //   319: aload 8
    //   321: invokespecial 539	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   324: sipush 2048
    //   327: invokespecial 542	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   330: astore 8
    //   332: sipush 2048
    //   335: newarray byte
    //   337: astore 10
    //   339: aload_2
    //   340: aload 10
    //   342: iconst_0
    //   343: sipush 2048
    //   346: invokevirtual 545	java/util/zip/GZIPInputStream:read	([BII)I
    //   349: istore_3
    //   350: iload_3
    //   351: iconst_m1
    //   352: if_icmpeq +76 -> 428
    //   355: aload 8
    //   357: aload 10
    //   359: iconst_0
    //   360: iload_3
    //   361: invokevirtual 549	java/io/BufferedOutputStream:write	([BII)V
    //   364: goto -25 -> 339
    //   367: astore 8
    //   369: aload_1
    //   370: astore 8
    //   372: iconst_0
    //   373: istore 4
    //   375: aload_0
    //   376: astore_1
    //   377: aload 8
    //   379: astore_0
    //   380: aload_2
    //   381: ifnull +7 -> 388
    //   384: aload_2
    //   385: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   388: aload_0
    //   389: ifnull +7 -> 396
    //   392: aload_0
    //   393: invokevirtual 555	java/io/InputStream:close	()V
    //   396: iload 4
    //   398: istore 5
    //   400: aload_1
    //   401: ifnull +11 -> 412
    //   404: aload_1
    //   405: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   408: iload 4
    //   410: istore 5
    //   412: getstatic 23	com/loc/ba:c	Ljava/lang/String;
    //   415: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   418: ifne +7 -> 425
    //   421: aconst_null
    //   422: putstatic 23	com/loc/ba:c	Ljava/lang/String;
    //   425: iload 5
    //   427: ireturn
    //   428: aload 8
    //   430: invokevirtual 558	java/io/BufferedOutputStream:flush	()V
    //   433: aload 8
    //   435: invokevirtual 559	java/io/BufferedOutputStream:close	()V
    //   438: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   441: aload 9
    //   443: iconst_1
    //   444: aaload
    //   445: invokestatic 230	com/loc/by:a	()J
    //   448: invokestatic 562	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   451: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   454: pop
    //   455: lconst_0
    //   456: ldc_w 564
    //   459: invokestatic 567	com/loc/by:a	(JLjava/lang/String;)Ljava/lang/String;
    //   462: astore 8
    //   464: aload 8
    //   466: getstatic 41	com/loc/ba:a	[I
    //   469: iconst_0
    //   470: iaload
    //   471: invokestatic 570	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   474: invokevirtual 62	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   477: ifeq +83 -> 560
    //   480: getstatic 41	com/loc/ba:a	[I
    //   483: iconst_1
    //   484: getstatic 41	com/loc/ba:a	[I
    //   487: iconst_1
    //   488: iaload
    //   489: iconst_1
    //   490: iadd
    //   491: iastore
    //   492: aload_1
    //   493: astore 8
    //   495: iconst_1
    //   496: istore 4
    //   498: aload_2
    //   499: astore_1
    //   500: aload 8
    //   502: astore_2
    //   503: aload 9
    //   505: iconst_1
    //   506: aaload
    //   507: invokestatic 571	com/loc/ba:c	(Ljava/lang/String;)V
    //   510: aload_1
    //   511: astore 8
    //   513: aload_2
    //   514: astore_1
    //   515: aload 8
    //   517: ifnull +8 -> 525
    //   520: aload 8
    //   522: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   525: aload_1
    //   526: ifnull +7 -> 533
    //   529: aload_1
    //   530: invokevirtual 555	java/io/InputStream:close	()V
    //   533: iload 4
    //   535: istore 5
    //   537: aload_0
    //   538: ifnull -126 -> 412
    //   541: aload_0
    //   542: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   545: iload 4
    //   547: istore 5
    //   549: goto -137 -> 412
    //   552: astore_0
    //   553: iload 4
    //   555: istore 5
    //   557: goto -145 -> 412
    //   560: getstatic 41	com/loc/ba:a	[I
    //   563: iconst_0
    //   564: aload 8
    //   566: invokestatic 520	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   569: iastore
    //   570: getstatic 41	com/loc/ba:a	[I
    //   573: iconst_1
    //   574: iconst_1
    //   575: iastore
    //   576: iconst_1
    //   577: istore 4
    //   579: goto +702 -> 1281
    //   582: astore 8
    //   584: getstatic 41	com/loc/ba:a	[I
    //   587: iconst_0
    //   588: iconst_0
    //   589: iastore
    //   590: getstatic 41	com/loc/ba:a	[I
    //   593: iconst_1
    //   594: iconst_0
    //   595: iastore
    //   596: goto -26 -> 570
    //   599: astore 8
    //   601: iconst_1
    //   602: istore 4
    //   604: aload_0
    //   605: astore 8
    //   607: aload_1
    //   608: astore_0
    //   609: aload 8
    //   611: astore_1
    //   612: goto -232 -> 380
    //   615: getstatic 329	com/loc/dp:n	Z
    //   618: ifeq +20 -> 638
    //   621: getstatic 30	com/loc/ba:d	Ljava/util/Hashtable;
    //   624: aload 9
    //   626: iconst_1
    //   627: aaload
    //   628: invokestatic 230	com/loc/by:a	()J
    //   631: invokestatic 562	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   634: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   637: pop
    //   638: aconst_null
    //   639: astore_2
    //   640: aconst_null
    //   641: astore_1
    //   642: goto -139 -> 503
    //   645: astore_0
    //   646: aconst_null
    //   647: astore_1
    //   648: iconst_0
    //   649: istore 4
    //   651: aconst_null
    //   652: astore_0
    //   653: aconst_null
    //   654: astore_2
    //   655: aload_2
    //   656: ifnull +7 -> 663
    //   659: aload_2
    //   660: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   663: aload_1
    //   664: ifnull +7 -> 671
    //   667: aload_1
    //   668: invokevirtual 555	java/io/InputStream:close	()V
    //   671: iload 4
    //   673: istore 5
    //   675: aload_0
    //   676: ifnull -264 -> 412
    //   679: aload_0
    //   680: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   683: iload 4
    //   685: istore 5
    //   687: goto -275 -> 412
    //   690: astore_0
    //   691: iload 4
    //   693: istore 5
    //   695: goto -283 -> 412
    //   698: astore_0
    //   699: aconst_null
    //   700: astore_1
    //   701: iconst_0
    //   702: istore 4
    //   704: aconst_null
    //   705: astore_0
    //   706: aconst_null
    //   707: astore_2
    //   708: aload_2
    //   709: ifnull +7 -> 716
    //   712: aload_2
    //   713: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   716: aload_1
    //   717: ifnull +7 -> 724
    //   720: aload_1
    //   721: invokevirtual 555	java/io/InputStream:close	()V
    //   724: iload 4
    //   726: istore 5
    //   728: aload_0
    //   729: ifnull -317 -> 412
    //   732: aload_0
    //   733: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   736: iload 4
    //   738: istore 5
    //   740: goto -328 -> 412
    //   743: astore_0
    //   744: iload 4
    //   746: istore 5
    //   748: goto -336 -> 412
    //   751: astore_0
    //   752: aconst_null
    //   753: astore_1
    //   754: iconst_0
    //   755: istore 4
    //   757: aconst_null
    //   758: astore_0
    //   759: aconst_null
    //   760: astore_2
    //   761: aload_2
    //   762: ifnull +7 -> 769
    //   765: aload_2
    //   766: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   769: aload_1
    //   770: ifnull +7 -> 777
    //   773: aload_1
    //   774: invokevirtual 555	java/io/InputStream:close	()V
    //   777: iload 4
    //   779: istore 5
    //   781: aload_0
    //   782: ifnull -370 -> 412
    //   785: aload_0
    //   786: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   789: iload 4
    //   791: istore 5
    //   793: goto -381 -> 412
    //   796: astore_0
    //   797: iload 4
    //   799: istore 5
    //   801: goto -389 -> 412
    //   804: astore_0
    //   805: aconst_null
    //   806: astore_1
    //   807: iconst_0
    //   808: istore 4
    //   810: aconst_null
    //   811: astore_0
    //   812: aconst_null
    //   813: astore_2
    //   814: aload_2
    //   815: ifnull +7 -> 822
    //   818: aload_2
    //   819: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   822: aload_1
    //   823: ifnull +7 -> 830
    //   826: aload_1
    //   827: invokevirtual 555	java/io/InputStream:close	()V
    //   830: iload 4
    //   832: istore 5
    //   834: aload_0
    //   835: ifnull -423 -> 412
    //   838: aload_0
    //   839: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   842: iload 4
    //   844: istore 5
    //   846: goto -434 -> 412
    //   849: astore_0
    //   850: iload 4
    //   852: istore 5
    //   854: goto -442 -> 412
    //   857: astore 8
    //   859: aconst_null
    //   860: astore_1
    //   861: aconst_null
    //   862: astore_0
    //   863: aconst_null
    //   864: astore_2
    //   865: aload_2
    //   866: ifnull +7 -> 873
    //   869: aload_2
    //   870: invokevirtual 552	java/util/zip/GZIPInputStream:close	()V
    //   873: aload_1
    //   874: ifnull +7 -> 881
    //   877: aload_1
    //   878: invokevirtual 555	java/io/InputStream:close	()V
    //   881: aload_0
    //   882: ifnull +7 -> 889
    //   885: aload_0
    //   886: invokevirtual 502	java/net/HttpURLConnection:disconnect	()V
    //   889: aload 8
    //   891: athrow
    //   892: astore_2
    //   893: goto -368 -> 525
    //   896: astore_1
    //   897: goto -364 -> 533
    //   900: astore_2
    //   901: goto -513 -> 388
    //   904: astore_0
    //   905: goto -509 -> 396
    //   908: astore_0
    //   909: iload 4
    //   911: istore 5
    //   913: goto -501 -> 412
    //   916: astore_2
    //   917: goto -254 -> 663
    //   920: astore_1
    //   921: goto -250 -> 671
    //   924: astore_2
    //   925: goto -209 -> 716
    //   928: astore_1
    //   929: goto -205 -> 724
    //   932: astore_2
    //   933: goto -164 -> 769
    //   936: astore_1
    //   937: goto -160 -> 777
    //   940: astore_2
    //   941: goto -119 -> 822
    //   944: astore_1
    //   945: goto -115 -> 830
    //   948: astore_2
    //   949: goto -76 -> 873
    //   952: astore_1
    //   953: goto -72 -> 881
    //   956: astore_0
    //   957: goto -68 -> 889
    //   960: astore 8
    //   962: aconst_null
    //   963: astore_1
    //   964: aconst_null
    //   965: astore_2
    //   966: goto -101 -> 865
    //   969: astore 8
    //   971: aconst_null
    //   972: astore_2
    //   973: goto -108 -> 865
    //   976: astore 8
    //   978: goto -113 -> 865
    //   981: astore 8
    //   983: aload_2
    //   984: astore 9
    //   986: aload_1
    //   987: astore_2
    //   988: aload 9
    //   990: astore_1
    //   991: goto -126 -> 865
    //   994: astore_1
    //   995: aconst_null
    //   996: astore_1
    //   997: iconst_0
    //   998: istore 4
    //   1000: aconst_null
    //   1001: astore_2
    //   1002: goto -188 -> 814
    //   1005: astore_2
    //   1006: iconst_0
    //   1007: istore 4
    //   1009: aconst_null
    //   1010: astore_2
    //   1011: goto -197 -> 814
    //   1014: astore 8
    //   1016: iconst_0
    //   1017: istore 4
    //   1019: goto -205 -> 814
    //   1022: astore 8
    //   1024: iconst_1
    //   1025: istore 4
    //   1027: goto -213 -> 814
    //   1030: astore 8
    //   1032: aload_2
    //   1033: astore 8
    //   1035: aload_1
    //   1036: astore_2
    //   1037: aload 8
    //   1039: astore_1
    //   1040: goto -226 -> 814
    //   1043: astore_1
    //   1044: aconst_null
    //   1045: astore_1
    //   1046: iconst_0
    //   1047: istore 4
    //   1049: aconst_null
    //   1050: astore_2
    //   1051: goto -290 -> 761
    //   1054: astore_2
    //   1055: iconst_0
    //   1056: istore 4
    //   1058: aconst_null
    //   1059: astore_2
    //   1060: goto -299 -> 761
    //   1063: astore 8
    //   1065: iconst_0
    //   1066: istore 4
    //   1068: goto -307 -> 761
    //   1071: astore 8
    //   1073: iconst_1
    //   1074: istore 4
    //   1076: goto -315 -> 761
    //   1079: astore 8
    //   1081: aload_2
    //   1082: astore 8
    //   1084: aload_1
    //   1085: astore_2
    //   1086: aload 8
    //   1088: astore_1
    //   1089: goto -328 -> 761
    //   1092: astore_1
    //   1093: aconst_null
    //   1094: astore_1
    //   1095: iconst_0
    //   1096: istore 4
    //   1098: aconst_null
    //   1099: astore_2
    //   1100: goto -392 -> 708
    //   1103: astore_2
    //   1104: iconst_0
    //   1105: istore 4
    //   1107: aconst_null
    //   1108: astore_2
    //   1109: goto -401 -> 708
    //   1112: astore 8
    //   1114: iconst_0
    //   1115: istore 4
    //   1117: goto -409 -> 708
    //   1120: astore 8
    //   1122: iconst_1
    //   1123: istore 4
    //   1125: goto -417 -> 708
    //   1128: astore 8
    //   1130: aload_2
    //   1131: astore 8
    //   1133: aload_1
    //   1134: astore_2
    //   1135: aload 8
    //   1137: astore_1
    //   1138: goto -430 -> 708
    //   1141: astore_1
    //   1142: aconst_null
    //   1143: astore_1
    //   1144: iconst_0
    //   1145: istore 4
    //   1147: aconst_null
    //   1148: astore_2
    //   1149: goto -494 -> 655
    //   1152: astore_2
    //   1153: iconst_0
    //   1154: istore 4
    //   1156: aconst_null
    //   1157: astore_2
    //   1158: goto -503 -> 655
    //   1161: astore 8
    //   1163: iconst_0
    //   1164: istore 4
    //   1166: goto -511 -> 655
    //   1169: astore 8
    //   1171: iconst_1
    //   1172: istore 4
    //   1174: goto -519 -> 655
    //   1177: astore 8
    //   1179: aload_2
    //   1180: astore 8
    //   1182: aload_1
    //   1183: astore_2
    //   1184: aload 8
    //   1186: astore_1
    //   1187: goto -532 -> 655
    //   1190: astore_0
    //   1191: aconst_null
    //   1192: astore_0
    //   1193: iconst_0
    //   1194: istore 4
    //   1196: aconst_null
    //   1197: astore_2
    //   1198: aconst_null
    //   1199: astore_1
    //   1200: goto -820 -> 380
    //   1203: astore_1
    //   1204: aconst_null
    //   1205: astore 8
    //   1207: iconst_0
    //   1208: istore 4
    //   1210: aconst_null
    //   1211: astore_2
    //   1212: aload_0
    //   1213: astore_1
    //   1214: aload 8
    //   1216: astore_0
    //   1217: goto -837 -> 380
    //   1220: astore_2
    //   1221: iconst_0
    //   1222: istore 4
    //   1224: aload_0
    //   1225: astore_2
    //   1226: aconst_null
    //   1227: astore 8
    //   1229: aload_1
    //   1230: astore_0
    //   1231: aload_2
    //   1232: astore_1
    //   1233: aload 8
    //   1235: astore_2
    //   1236: goto -856 -> 380
    //   1239: astore 8
    //   1241: aload_1
    //   1242: astore 8
    //   1244: aload_0
    //   1245: astore_1
    //   1246: aload_2
    //   1247: astore_0
    //   1248: aload 8
    //   1250: astore_2
    //   1251: goto -871 -> 380
    //   1254: iconst_0
    //   1255: istore 4
    //   1257: goto +24 -> 1281
    //   1260: iconst_1
    //   1261: istore_3
    //   1262: goto -982 -> 280
    //   1265: iconst_0
    //   1266: istore_3
    //   1267: goto -1046 -> 221
    //   1270: aconst_null
    //   1271: astore_1
    //   1272: iconst_0
    //   1273: istore 4
    //   1275: aconst_null
    //   1276: astore 8
    //   1278: goto -763 -> 515
    //   1281: aload_2
    //   1282: astore 8
    //   1284: aload_1
    //   1285: astore_2
    //   1286: aload 8
    //   1288: astore_1
    //   1289: goto -786 -> 503
    //
    // Exception table:
    //   from	to	target	type
    //   131	135	137	java/lang/Exception
    //   249	278	367	java/net/UnknownHostException
    //   284	311	367	java/net/UnknownHostException
    //   311	339	367	java/net/UnknownHostException
    //   339	350	367	java/net/UnknownHostException
    //   355	364	367	java/net/UnknownHostException
    //   428	438	367	java/net/UnknownHostException
    //   541	545	552	java/lang/Exception
    //   560	570	582	java/lang/Exception
    //   438	492	599	java/net/UnknownHostException
    //   560	570	599	java/net/UnknownHostException
    //   570	576	599	java/net/UnknownHostException
    //   584	596	599	java/net/UnknownHostException
    //   76	123	645	java/net/SocketException
    //   679	683	690	java/lang/Exception
    //   76	123	698	java/net/SocketTimeoutException
    //   732	736	743	java/lang/Exception
    //   76	123	751	java/io/EOFException
    //   785	789	796	java/lang/Exception
    //   76	123	804	java/lang/Exception
    //   838	842	849	java/lang/Exception
    //   76	123	857	finally
    //   520	525	892	java/lang/Exception
    //   529	533	896	java/lang/Exception
    //   384	388	900	java/lang/Exception
    //   392	396	904	java/lang/Exception
    //   404	408	908	java/lang/Exception
    //   659	663	916	java/lang/Exception
    //   667	671	920	java/lang/Exception
    //   712	716	924	java/lang/Exception
    //   720	724	928	java/lang/Exception
    //   765	769	932	java/lang/Exception
    //   773	777	936	java/lang/Exception
    //   818	822	940	java/lang/Exception
    //   826	830	944	java/lang/Exception
    //   869	873	948	java/lang/Exception
    //   877	881	952	java/lang/Exception
    //   885	889	956	java/lang/Exception
    //   140	165	960	finally
    //   165	221	960	finally
    //   228	240	960	finally
    //   615	638	960	finally
    //   240	249	969	finally
    //   249	278	976	finally
    //   284	311	976	finally
    //   311	339	976	finally
    //   339	350	976	finally
    //   355	364	976	finally
    //   428	438	976	finally
    //   438	492	976	finally
    //   560	570	976	finally
    //   570	576	976	finally
    //   584	596	976	finally
    //   503	510	981	finally
    //   140	165	994	java/lang/Exception
    //   165	221	994	java/lang/Exception
    //   228	240	994	java/lang/Exception
    //   615	638	994	java/lang/Exception
    //   240	249	1005	java/lang/Exception
    //   249	278	1014	java/lang/Exception
    //   284	311	1014	java/lang/Exception
    //   311	339	1014	java/lang/Exception
    //   339	350	1014	java/lang/Exception
    //   355	364	1014	java/lang/Exception
    //   428	438	1014	java/lang/Exception
    //   438	492	1022	java/lang/Exception
    //   570	576	1022	java/lang/Exception
    //   584	596	1022	java/lang/Exception
    //   503	510	1030	java/lang/Exception
    //   140	165	1043	java/io/EOFException
    //   165	221	1043	java/io/EOFException
    //   228	240	1043	java/io/EOFException
    //   615	638	1043	java/io/EOFException
    //   240	249	1054	java/io/EOFException
    //   249	278	1063	java/io/EOFException
    //   284	311	1063	java/io/EOFException
    //   311	339	1063	java/io/EOFException
    //   339	350	1063	java/io/EOFException
    //   355	364	1063	java/io/EOFException
    //   428	438	1063	java/io/EOFException
    //   438	492	1071	java/io/EOFException
    //   560	570	1071	java/io/EOFException
    //   570	576	1071	java/io/EOFException
    //   584	596	1071	java/io/EOFException
    //   503	510	1079	java/io/EOFException
    //   140	165	1092	java/net/SocketTimeoutException
    //   165	221	1092	java/net/SocketTimeoutException
    //   228	240	1092	java/net/SocketTimeoutException
    //   615	638	1092	java/net/SocketTimeoutException
    //   240	249	1103	java/net/SocketTimeoutException
    //   249	278	1112	java/net/SocketTimeoutException
    //   284	311	1112	java/net/SocketTimeoutException
    //   311	339	1112	java/net/SocketTimeoutException
    //   339	350	1112	java/net/SocketTimeoutException
    //   355	364	1112	java/net/SocketTimeoutException
    //   428	438	1112	java/net/SocketTimeoutException
    //   438	492	1120	java/net/SocketTimeoutException
    //   560	570	1120	java/net/SocketTimeoutException
    //   570	576	1120	java/net/SocketTimeoutException
    //   584	596	1120	java/net/SocketTimeoutException
    //   503	510	1128	java/net/SocketTimeoutException
    //   140	165	1141	java/net/SocketException
    //   165	221	1141	java/net/SocketException
    //   228	240	1141	java/net/SocketException
    //   615	638	1141	java/net/SocketException
    //   240	249	1152	java/net/SocketException
    //   249	278	1161	java/net/SocketException
    //   284	311	1161	java/net/SocketException
    //   311	339	1161	java/net/SocketException
    //   339	350	1161	java/net/SocketException
    //   355	364	1161	java/net/SocketException
    //   428	438	1161	java/net/SocketException
    //   438	492	1169	java/net/SocketException
    //   560	570	1169	java/net/SocketException
    //   570	576	1169	java/net/SocketException
    //   584	596	1169	java/net/SocketException
    //   503	510	1177	java/net/SocketException
    //   76	123	1190	java/net/UnknownHostException
    //   140	165	1203	java/net/UnknownHostException
    //   165	221	1203	java/net/UnknownHostException
    //   228	240	1203	java/net/UnknownHostException
    //   615	638	1203	java/net/UnknownHostException
    //   240	249	1220	java/net/UnknownHostException
    //   503	510	1239	java/net/UnknownHostException
  }

  public static boolean a(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    int i;
    if (!paramString1.contains("cgi"))
      i = 0;
    while (i == 0)
    {
      return false;
      paramString1.contains("wifi");
      if (a[1] > 2000)
      {
        i = 0;
      }
      else
      {
        NetworkInfo localNetworkInfo = by.c(paramContext);
        if (bq.a(localNetworkInfo) == -1)
        {
          i = 0;
        }
        else if ((localNetworkInfo.getType() != 1) && (paramBoolean))
        {
          i = 0;
        }
        else
        {
          if ((localNetworkInfo.getType() != 1) && (!paramBoolean) && (g == null))
            g = (TelephonyManager)by.a(paramContext, "phone");
          i = 1;
        }
      }
    }
    return a(paramContext, paramString1, paramString2);
  }

  public static boolean a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
      return false;
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
    {
      paramString1 = null;
      if (paramString1 != null)
      {
        paramString2 = new File(paramString1);
        if ((paramString2.exists()) && (paramString2.isFile()))
          paramString2.delete();
        if (f.containsKey(paramString1))
          f.remove(paramString1);
        if (d.containsKey(paramString1))
          d.remove(paramString1);
      }
      return true;
    }
    StringBuilder localStringBuilder = c();
    localStringBuilder.append(a(b(paramString1), paramString1)).append(File.separator);
    label139: int i;
    if (paramString2.startsWith("-"))
    {
      localStringBuilder.append(paramString2.substring(0, 4));
      localStringBuilder.append(",");
      i = paramString2.indexOf(",") + 1;
      if (!paramString2.substring(i, i + 1).startsWith("-"))
        break label221;
      localStringBuilder.append(paramString2.substring(i, i + 4));
    }
    while (true)
    {
      localStringBuilder.append(File.separator).append(paramString2);
      paramString1 = localStringBuilder.toString();
      break;
      localStringBuilder.append(paramString2.substring(0, 3));
      break label139;
      label221: localStringBuilder.append(paramString2.substring(i, i + 3));
    }
  }

  // ERROR //
  private static boolean a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 6
    //   3: aload_0
    //   4: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   7: ifne +10 -> 17
    //   10: aload_1
    //   11: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   14: ifeq +5 -> 19
    //   17: iconst_0
    //   18: ireturn
    //   19: invokestatic 317	com/loc/ba:c	()Ljava/lang/StringBuilder;
    //   22: astore 8
    //   24: aload_0
    //   25: invokestatic 302	com/loc/ba:b	(Ljava/lang/String;)I
    //   28: aload_0
    //   29: invokestatic 305	com/loc/ba:a	(ILjava/lang/String;)Ljava/lang/String;
    //   32: astore 10
    //   34: aload 8
    //   36: aload 10
    //   38: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: getstatic 345	java/io/File:separator	Ljava/lang/String;
    //   44: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: pop
    //   48: aload_1
    //   49: ldc_w 385
    //   52: invokevirtual 389	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   55: ifeq +268 -> 323
    //   58: aload 8
    //   60: aload_1
    //   61: iconst_0
    //   62: iconst_4
    //   63: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   66: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: aload 8
    //   72: ldc_w 391
    //   75: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: pop
    //   79: aload_1
    //   80: ldc_w 391
    //   83: invokevirtual 394	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   86: iconst_1
    //   87: iadd
    //   88: istore_3
    //   89: aload_1
    //   90: iload_3
    //   91: iload_3
    //   92: iconst_1
    //   93: iadd
    //   94: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   97: ldc_w 385
    //   100: invokevirtual 389	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   103: ifeq +235 -> 338
    //   106: aload 8
    //   108: aload_1
    //   109: iload_3
    //   110: iload_3
    //   111: iconst_4
    //   112: iadd
    //   113: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   116: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: pop
    //   120: aload 8
    //   122: getstatic 345	java/io/File:separator	Ljava/lang/String;
    //   125: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_1
    //   129: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload_2
    //   134: iconst_1
    //   135: aload 8
    //   137: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: aastore
    //   141: aload 8
    //   143: iconst_0
    //   144: aload 8
    //   146: invokevirtual 430	java/lang/StringBuilder:length	()I
    //   149: invokevirtual 433	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   152: pop
    //   153: new 342	java/io/File
    //   156: dup
    //   157: aload_2
    //   158: iconst_1
    //   159: aaload
    //   160: invokespecial 349	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: astore_0
    //   164: lload 6
    //   166: lstore 4
    //   168: aload_0
    //   169: invokevirtual 356	java/io/File:exists	()Z
    //   172: ifeq +47 -> 219
    //   175: lload 6
    //   177: lstore 4
    //   179: aload_0
    //   180: invokevirtual 598	java/io/File:isFile	()Z
    //   183: ifeq +36 -> 219
    //   186: aconst_null
    //   187: astore 9
    //   189: aconst_null
    //   190: astore 8
    //   192: new 86	java/io/RandomAccessFile
    //   195: dup
    //   196: aload_0
    //   197: ldc_w 600
    //   200: invokespecial 603	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   203: astore_0
    //   204: aload_0
    //   205: lconst_0
    //   206: invokevirtual 606	java/io/RandomAccessFile:seek	(J)V
    //   209: aload_0
    //   210: invokevirtual 368	java/io/RandomAccessFile:readLong	()J
    //   213: lstore 4
    //   215: aload_0
    //   216: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   219: new 609	org/json/JSONObject
    //   222: dup
    //   223: invokespecial 610	org/json/JSONObject:<init>	()V
    //   226: astore_0
    //   227: aload_0
    //   228: ldc_w 479
    //   231: ldc_w 481
    //   234: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   237: pop
    //   238: aload_0
    //   239: ldc_w 615
    //   242: aload_1
    //   243: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   246: pop
    //   247: aload_0
    //   248: ldc_w 617
    //   251: lload 4
    //   253: invokestatic 620	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   256: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   259: pop
    //   260: aload_0
    //   261: ldc_w 622
    //   264: aload 10
    //   266: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   269: pop
    //   270: aload_0
    //   271: ldc_w 624
    //   274: getstatic 626	com/loc/dp:b	Ljava/lang/String;
    //   277: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   280: pop
    //   281: aload_0
    //   282: ldc_w 628
    //   285: getstatic 629	com/loc/dp:c	Ljava/lang/String;
    //   288: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   291: pop
    //   292: aload_0
    //   293: ldc_w 631
    //   296: getstatic 633	com/loc/dp:e	Ljava/lang/String;
    //   299: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   302: pop
    //   303: aload_0
    //   304: ldc_w 635
    //   307: getstatic 637	com/loc/dp:f	Ljava/lang/String;
    //   310: invokevirtual 613	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   313: pop
    //   314: aload_2
    //   315: iconst_0
    //   316: aload_0
    //   317: invokevirtual 638	org/json/JSONObject:toString	()Ljava/lang/String;
    //   320: aastore
    //   321: iconst_1
    //   322: ireturn
    //   323: aload 8
    //   325: aload_1
    //   326: iconst_0
    //   327: iconst_3
    //   328: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   331: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: pop
    //   335: goto -265 -> 70
    //   338: aload 8
    //   340: aload_1
    //   341: iload_3
    //   342: iload_3
    //   343: iconst_3
    //   344: iadd
    //   345: invokevirtual 148	java/lang/String:substring	(II)Ljava/lang/String;
    //   348: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: pop
    //   352: goto -232 -> 120
    //   355: astore_0
    //   356: aconst_null
    //   357: astore_0
    //   358: lload 6
    //   360: lstore 4
    //   362: aload_0
    //   363: ifnull -144 -> 219
    //   366: aload_0
    //   367: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   370: lload 6
    //   372: lstore 4
    //   374: goto -155 -> 219
    //   377: astore_0
    //   378: lload 6
    //   380: lstore 4
    //   382: goto -163 -> 219
    //   385: astore_0
    //   386: aload 8
    //   388: astore_0
    //   389: lload 6
    //   391: lstore 4
    //   393: aload_0
    //   394: ifnull -175 -> 219
    //   397: aload_0
    //   398: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   401: lload 6
    //   403: lstore 4
    //   405: goto -186 -> 219
    //   408: astore_0
    //   409: lload 6
    //   411: lstore 4
    //   413: goto -194 -> 219
    //   416: astore_0
    //   417: aload 9
    //   419: astore_1
    //   420: aload_1
    //   421: ifnull +7 -> 428
    //   424: aload_1
    //   425: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   428: aload_0
    //   429: athrow
    //   430: astore_0
    //   431: goto -212 -> 219
    //   434: astore_1
    //   435: goto -7 -> 428
    //   438: astore_1
    //   439: goto -125 -> 314
    //   442: astore_2
    //   443: aload_0
    //   444: astore_1
    //   445: aload_2
    //   446: astore_0
    //   447: goto -27 -> 420
    //   450: astore 8
    //   452: goto -63 -> 389
    //   455: astore 8
    //   457: goto -99 -> 358
    //
    // Exception table:
    //   from	to	target	type
    //   192	204	355	java/io/FileNotFoundException
    //   366	370	377	java/lang/Exception
    //   192	204	385	java/lang/Exception
    //   397	401	408	java/lang/Exception
    //   192	204	416	finally
    //   215	219	430	java/lang/Exception
    //   424	428	434	java/lang/Exception
    //   227	314	438	java/lang/Exception
    //   204	215	442	finally
    //   204	215	450	java/lang/Exception
    //   204	215	455	java/io/FileNotFoundException
  }

  // ERROR //
  private static double[] a(int paramInt1, bg parambg, String paramString, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: iload_3
    //   4: ifne +171 -> 175
    //   7: aload_2
    //   8: ldc_w 640
    //   11: invokevirtual 311	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   14: astore 9
    //   16: aload 9
    //   18: arraylength
    //   19: newarray int
    //   21: astore 10
    //   23: iconst_0
    //   24: istore_3
    //   25: iload_3
    //   26: aload 9
    //   28: arraylength
    //   29: if_icmpge +21 -> 50
    //   32: aload 10
    //   34: iload_3
    //   35: aload 9
    //   37: iload_3
    //   38: aaload
    //   39: invokestatic 520	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   42: iastore
    //   43: iload_3
    //   44: iconst_1
    //   45: iadd
    //   46: istore_3
    //   47: goto -22 -> 25
    //   50: aload 9
    //   52: arraylength
    //   53: iconst_2
    //   54: if_icmpne +114 -> 168
    //   57: ldc 56
    //   59: astore 9
    //   61: aload_1
    //   62: invokevirtual 370	com/loc/bg:d	()J
    //   65: iload_0
    //   66: i2l
    //   67: lcmp
    //   68: ifle +237 -> 305
    //   71: aload_1
    //   72: iload_0
    //   73: i2l
    //   74: invokevirtual 54	com/loc/bg:a	(J)V
    //   77: aload_1
    //   78: invokevirtual 370	com/loc/bg:d	()J
    //   81: l2i
    //   82: bipush 16
    //   84: isub
    //   85: istore 5
    //   87: iconst_0
    //   88: istore 4
    //   90: iload_0
    //   91: istore_3
    //   92: goto +215 -> 307
    //   95: iload_0
    //   96: iconst_m1
    //   97: if_icmpeq +208 -> 305
    //   100: aload_1
    //   101: iload_0
    //   102: bipush 6
    //   104: iadd
    //   105: i2l
    //   106: invokevirtual 54	com/loc/bg:a	(J)V
    //   109: iconst_3
    //   110: newarray double
    //   112: astore_2
    //   113: aload_2
    //   114: iconst_0
    //   115: aload_1
    //   116: invokevirtual 67	com/loc/bg:c	()I
    //   119: invokestatic 642	com/loc/ba:a	(I)I
    //   122: i2d
    //   123: ldc2_w 643
    //   126: ddiv
    //   127: dastore
    //   128: aload_2
    //   129: iconst_1
    //   130: aload_1
    //   131: invokevirtual 67	com/loc/bg:c	()I
    //   134: invokestatic 642	com/loc/ba:a	(I)I
    //   137: i2d
    //   138: ldc2_w 643
    //   141: ddiv
    //   142: dastore
    //   143: aload_2
    //   144: iconst_2
    //   145: aload_1
    //   146: invokevirtual 65	com/loc/bg:b	()I
    //   149: i2d
    //   150: dastore
    //   151: aload_2
    //   152: iconst_1
    //   153: daload
    //   154: invokestatic 647	com/loc/by:a	(D)Z
    //   157: istore 8
    //   159: iload 8
    //   161: ifne +121 -> 282
    //   164: aconst_null
    //   165: astore_1
    //   166: aload_1
    //   167: areturn
    //   168: ldc 69
    //   170: astore 9
    //   172: goto -111 -> 61
    //   175: ldc 71
    //   177: astore 9
    //   179: goto -118 -> 61
    //   182: iload_3
    //   183: iload 5
    //   185: iadd
    //   186: iconst_2
    //   187: idiv
    //   188: iload_0
    //   189: isub
    //   190: bipush 16
    //   192: idiv
    //   193: bipush 16
    //   195: imul
    //   196: iload_0
    //   197: iadd
    //   198: istore 6
    //   200: aload_1
    //   201: aload_2
    //   202: aload 10
    //   204: iload 6
    //   206: aload 9
    //   208: invokestatic 649	com/loc/ba:a	(Lcom/loc/bg;Ljava/lang/String;[IILjava/lang/String;)I
    //   211: istore 7
    //   213: iload_3
    //   214: iload 6
    //   216: if_icmpne +22 -> 238
    //   219: iload 6
    //   221: iload 5
    //   223: if_icmpne +15 -> 238
    //   226: iload_3
    //   227: istore_0
    //   228: iload 7
    //   230: ifeq -135 -> 95
    //   233: iconst_m1
    //   234: istore_0
    //   235: goto -140 -> 95
    //   238: iload 7
    //   240: ldc 98
    //   242: if_icmpne +8 -> 250
    //   245: iconst_m1
    //   246: istore_0
    //   247: goto -152 -> 95
    //   250: iload 7
    //   252: ifne +9 -> 261
    //   255: iload 6
    //   257: istore_0
    //   258: goto -163 -> 95
    //   261: iload 7
    //   263: ifge +10 -> 273
    //   266: iload 6
    //   268: istore 5
    //   270: goto +37 -> 307
    //   273: iload 6
    //   275: bipush 16
    //   277: iadd
    //   278: istore_3
    //   279: goto +28 -> 307
    //   282: aload_2
    //   283: iconst_0
    //   284: daload
    //   285: invokestatic 651	com/loc/by:b	(D)Z
    //   288: istore 8
    //   290: aload_2
    //   291: astore_1
    //   292: iload 8
    //   294: ifne -128 -> 166
    //   297: aconst_null
    //   298: areturn
    //   299: astore_1
    //   300: aconst_null
    //   301: areturn
    //   302: astore_1
    //   303: aload_2
    //   304: areturn
    //   305: aconst_null
    //   306: areturn
    //   307: iload 4
    //   309: iconst_1
    //   310: iadd
    //   311: istore 4
    //   313: iload 4
    //   315: bipush 25
    //   317: if_icmple -135 -> 182
    //   320: iconst_m1
    //   321: istore_0
    //   322: goto -227 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   61	87	299	java/lang/Throwable
    //   100	113	299	java/lang/Throwable
    //   182	213	299	java/lang/Throwable
    //   113	159	302	java/lang/Throwable
    //   282	290	302	java/lang/Throwable
  }

  private static String[] a(double paramDouble1, double paramDouble2, String paramString)
  {
    String[] arrayOfString = new String[50];
    Object localObject;
    String str;
    if (!TextUtils.isEmpty(paramString))
    {
      localObject = paramString;
      str = paramString;
    }
    for (paramString = (String)localObject; ; paramString = az.a(paramDouble1, paramDouble2))
    {
      arrayOfString[0] = str;
      arrayOfString[25] = paramString;
      localObject = az.a(str);
      i = 1;
      while (i < 25)
      {
        arrayOfString[i] = localObject[(i - 1)];
        i += 1;
      }
      str = az.a(paramDouble1, paramDouble2);
    }
    paramString = az.a(paramString);
    int i = 26;
    while (i < 50)
    {
      arrayOfString[i] = paramString[(i - 26)];
      i += 1;
    }
    return arrayOfString;
  }

  private static int b(String paramString)
  {
    int j = 9;
    int i = j;
    if (!TextUtils.isEmpty(paramString))
    {
      i = j;
      if (paramString.contains("cgi"))
      {
        paramString = paramString.split("#");
        if (paramString.length != 7)
          break label43;
        i = 1;
      }
    }
    label43: 
    do
    {
      return i;
      i = j;
    }
    while (paramString.length != 8);
    return 2;
  }

  public static boolean b()
  {
    return !f.isEmpty();
  }

  private static StringBuilder c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(by.d());
    localStringBuilder.append("offline").append(File.separator);
    localStringBuilder.append(by.i()).append(File.separator).append("s").append(File.separator);
    return localStringBuilder;
  }

  // ERROR //
  private static void c(String paramString)
  {
    // Byte code:
    //   0: getstatic 37	com/loc/ba:f	Ljava/util/Hashtable;
    //   3: aload_0
    //   4: invokevirtual 465	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   7: ifeq +20 -> 27
    //   10: getstatic 37	com/loc/ba:f	Ljava/util/Hashtable;
    //   13: aload_0
    //   14: invokevirtual 422	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 669	java/lang/CharSequence
    //   20: invokestatic 298	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   23: ifne +4 -> 27
    //   26: return
    //   27: new 342	java/io/File
    //   30: dup
    //   31: aload_0
    //   32: invokespecial 349	java/io/File:<init>	(Ljava/lang/String;)V
    //   35: astore 4
    //   37: aload 4
    //   39: invokevirtual 356	java/io/File:exists	()Z
    //   42: ifeq -16 -> 26
    //   45: aload 4
    //   47: invokevirtual 598	java/io/File:isFile	()Z
    //   50: ifeq -24 -> 26
    //   53: aconst_null
    //   54: astore 5
    //   56: new 86	java/io/RandomAccessFile
    //   59: dup
    //   60: aload 4
    //   62: ldc_w 600
    //   65: invokespecial 603	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   68: astore 4
    //   70: aload 4
    //   72: ldc2_w 407
    //   75: invokevirtual 606	java/io/RandomAccessFile:seek	(J)V
    //   78: aload 4
    //   80: invokevirtual 672	java/io/RandomAccessFile:readUnsignedShort	()I
    //   83: istore_2
    //   84: new 331	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 336	java/lang/StringBuilder:<init>	()V
    //   91: astore 5
    //   93: iconst_0
    //   94: istore_1
    //   95: iload_1
    //   96: iload_2
    //   97: if_icmpge +67 -> 164
    //   100: aload 4
    //   102: invokevirtual 675	java/io/RandomAccessFile:readInt	()I
    //   105: istore_3
    //   106: aload 5
    //   108: new 331	java/lang/StringBuilder
    //   111: dup
    //   112: ldc_w 391
    //   115: invokespecial 442	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   118: iload_3
    //   119: invokevirtual 678	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   122: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: invokevirtual 679	java/lang/StringBuilder:indexOf	(Ljava/lang/String;)I
    //   128: iconst_m1
    //   129: if_icmpne +16 -> 145
    //   132: aload 5
    //   134: ldc_w 391
    //   137: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: iload_3
    //   141: invokevirtual 678	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   144: pop
    //   145: iload_1
    //   146: iload_2
    //   147: iconst_1
    //   148: isub
    //   149: if_icmpne +116 -> 265
    //   152: aload 5
    //   154: ldc_w 391
    //   157: invokevirtual 340	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: pop
    //   161: goto +104 -> 265
    //   164: getstatic 37	com/loc/ba:f	Ljava/util/Hashtable;
    //   167: aload_0
    //   168: aload 5
    //   170: invokevirtual 335	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokevirtual 383	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   176: pop
    //   177: aload 5
    //   179: iconst_0
    //   180: aload 5
    //   182: invokevirtual 430	java/lang/StringBuilder:length	()I
    //   185: invokevirtual 433	java/lang/StringBuilder:delete	(II)Ljava/lang/StringBuilder;
    //   188: pop
    //   189: aload 4
    //   191: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   194: return
    //   195: astore_0
    //   196: return
    //   197: astore_0
    //   198: aconst_null
    //   199: astore 4
    //   201: aload 4
    //   203: ifnull -177 -> 26
    //   206: aload 4
    //   208: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   211: return
    //   212: astore_0
    //   213: return
    //   214: astore_0
    //   215: aconst_null
    //   216: astore 4
    //   218: aload 4
    //   220: ifnull -194 -> 26
    //   223: aload 4
    //   225: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   228: return
    //   229: astore_0
    //   230: return
    //   231: astore_0
    //   232: aload 5
    //   234: astore 4
    //   236: aload 4
    //   238: ifnull +8 -> 246
    //   241: aload 4
    //   243: invokevirtual 607	java/io/RandomAccessFile:close	()V
    //   246: aload_0
    //   247: athrow
    //   248: astore 4
    //   250: goto -4 -> 246
    //   253: astore_0
    //   254: goto -18 -> 236
    //   257: astore_0
    //   258: goto -40 -> 218
    //   261: astore_0
    //   262: goto -61 -> 201
    //   265: iload_1
    //   266: iconst_1
    //   267: iadd
    //   268: istore_1
    //   269: goto -174 -> 95
    //
    // Exception table:
    //   from	to	target	type
    //   189	194	195	java/lang/Exception
    //   56	70	197	java/io/FileNotFoundException
    //   206	211	212	java/lang/Exception
    //   56	70	214	java/lang/Exception
    //   223	228	229	java/lang/Exception
    //   56	70	231	finally
    //   241	246	248	java/lang/Exception
    //   70	93	253	finally
    //   100	145	253	finally
    //   152	161	253	finally
    //   164	189	253	finally
    //   70	93	257	java/lang/Exception
    //   100	145	257	java/lang/Exception
    //   152	161	257	java/lang/Exception
    //   164	189	257	java/lang/Exception
    //   70	93	261	java/io/FileNotFoundException
    //   100	145	261	java/io/FileNotFoundException
    //   152	161	261	java/io/FileNotFoundException
    //   164	189	261	java/io/FileNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ba
 * JD-Core Version:    0.6.2
 */