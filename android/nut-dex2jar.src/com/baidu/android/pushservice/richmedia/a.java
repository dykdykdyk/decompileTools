package com.baidu.android.pushservice.richmedia;

import android.content.Context;
import com.baidu.android.pushservice.util.k;
import com.baidu.android.pushservice.util.k.g;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.List;

public class a extends Thread
  implements Comparable<a>
{
  public static int e = 1;
  public static int f = 2;
  private static HashSet<c> g = new HashSet();
  protected f a;
  public WeakReference<Context> b;
  protected long c;
  public c d;
  private boolean h = false;

  public a(Context paramContext, f paramf, c paramc)
  {
    this.a = paramf;
    this.b = new WeakReference(paramContext);
    this.c = System.currentTimeMillis();
    this.d = paramc;
  }

  private int a(String paramString)
  {
    try
    {
      int i = ((HttpURLConnection)new URL(paramString).openConnection()).getContentLength();
      return i;
    }
    catch (MalformedURLException paramString)
    {
      com.baidu.android.pushservice.h.a.e("HttpTaskThread", "error " + paramString.getMessage());
      return 0;
    }
    catch (IOException paramString)
    {
      while (true)
        com.baidu.android.pushservice.h.a.e("HttpTaskThread", "error " + paramString.getMessage());
    }
  }

  private k.g a(Context paramContext, String paramString)
  {
    paramContext = k.b(paramContext);
    if (paramContext != null)
    {
      int i = 0;
      while (i < paramContext.size())
      {
        if (((k.g)paramContext.get(i)).b.equalsIgnoreCase(paramString))
          return (k.g)paramContext.get(i);
        i += 1;
      }
    }
    return null;
  }

  private void a(e parame)
  {
    while (true)
    {
      try
      {
        Object localObject1 = this.a;
        if ((localObject1 == null) || (parame == null))
          return;
        if (parame.c == 0)
        {
          Object localObject2 = parame.e;
          if ((parame.a == c.a.a) && (localObject2 != null))
          {
            localObject1 = ((String)localObject2).substring(0, ((String)localObject2).lastIndexOf("."));
            localObject2 = new File((String)localObject2);
            a((File)localObject2, (String)localObject1);
            ((File)localObject2).delete();
            parame.e = ((String)localObject1);
          }
          this.a.a(this, parame);
          return;
        }
        if (parame.c == 1)
        {
          this.a.a(this, new Throwable("error: response http error errorCode=" + parame.b));
          continue;
        }
      }
      finally
      {
        b(this.d);
      }
      if (parame.c == 3)
        this.a.a(this, new Throwable("error: request error,request is null or fileName is null."));
      else if (parame.c == 2)
        this.a.b(this);
      else if (parame.c == -1)
        this.a.a(this, new Throwable("IOException"));
    }
  }

  // ERROR //
  private static void a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore_3
    //   8: new 195	java/io/FileInputStream
    //   11: dup
    //   12: aload_0
    //   13: invokespecial 198	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   16: astore 5
    //   18: new 200	java/io/BufferedInputStream
    //   21: dup
    //   22: aload 5
    //   24: invokespecial 203	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   27: astore 6
    //   29: new 205	java/util/zip/ZipInputStream
    //   32: dup
    //   33: aload 6
    //   35: invokespecial 206	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   38: astore 11
    //   40: aconst_null
    //   41: astore_3
    //   42: aconst_null
    //   43: astore_0
    //   44: aload_3
    //   45: astore 4
    //   47: aload_0
    //   48: astore 9
    //   50: aload_3
    //   51: astore 8
    //   53: aload_0
    //   54: astore 7
    //   56: aload 11
    //   58: invokevirtual 210	java/util/zip/ZipInputStream:getNextEntry	()Ljava/util/zip/ZipEntry;
    //   61: astore 10
    //   63: aload 10
    //   65: ifnull +397 -> 462
    //   68: aload_3
    //   69: astore 8
    //   71: aload_0
    //   72: astore 7
    //   74: ldc 212
    //   76: new 85	java/lang/StringBuilder
    //   79: dup
    //   80: ldc 214
    //   82: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   85: aload 10
    //   87: invokevirtual 217	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokestatic 219	com/baidu/android/pushservice/h/a:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload_3
    //   97: astore 8
    //   99: aload_0
    //   100: astore 7
    //   102: sipush 4096
    //   105: newarray byte
    //   107: astore 9
    //   109: aload_3
    //   110: astore 8
    //   112: aload_0
    //   113: astore 7
    //   115: aload 10
    //   117: invokevirtual 224	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   120: astore 12
    //   122: aconst_null
    //   123: astore 4
    //   125: aload_3
    //   126: astore 8
    //   128: aload_0
    //   129: astore 7
    //   131: aload 12
    //   133: invokevirtual 227	java/lang/String:length	()I
    //   136: ifle +18 -> 154
    //   139: aload_3
    //   140: astore 8
    //   142: aload_0
    //   143: astore 7
    //   145: aload 12
    //   147: ldc 229
    //   149: invokevirtual 233	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   152: astore 4
    //   154: aload_3
    //   155: astore 8
    //   157: aload_0
    //   158: astore 7
    //   160: new 158	java/io/File
    //   163: dup
    //   164: new 85	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 234	java/lang/StringBuilder:<init>	()V
    //   171: aload_1
    //   172: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: ldc 229
    //   177: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload 4
    //   182: aload 4
    //   184: arraylength
    //   185: iconst_1
    //   186: isub
    //   187: aaload
    //   188: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokespecial 159	java/io/File:<init>	(Ljava/lang/String;)V
    //   197: astore 4
    //   199: aload_3
    //   200: astore 8
    //   202: aload_0
    //   203: astore 7
    //   205: aload 10
    //   207: invokevirtual 237	java/util/zip/ZipEntry:isDirectory	()Z
    //   210: ifne -166 -> 44
    //   213: aload_3
    //   214: astore 8
    //   216: aload_0
    //   217: astore 7
    //   219: new 158	java/io/File
    //   222: dup
    //   223: aload 4
    //   225: invokevirtual 240	java/io/File:getParent	()Ljava/lang/String;
    //   228: invokespecial 159	java/io/File:<init>	(Ljava/lang/String;)V
    //   231: astore 10
    //   233: aload_3
    //   234: astore 8
    //   236: aload_0
    //   237: astore 7
    //   239: aload 10
    //   241: invokevirtual 243	java/io/File:exists	()Z
    //   244: ifne +15 -> 259
    //   247: aload_3
    //   248: astore 8
    //   250: aload_0
    //   251: astore 7
    //   253: aload 10
    //   255: invokevirtual 246	java/io/File:mkdirs	()Z
    //   258: pop
    //   259: aload_3
    //   260: astore 8
    //   262: aload_0
    //   263: astore 7
    //   265: aload 4
    //   267: invokevirtual 243	java/io/File:exists	()Z
    //   270: ifne +15 -> 285
    //   273: aload_3
    //   274: astore 8
    //   276: aload_0
    //   277: astore 7
    //   279: aload 4
    //   281: invokevirtual 249	java/io/File:createNewFile	()Z
    //   284: pop
    //   285: aload_3
    //   286: astore 8
    //   288: aload_0
    //   289: astore 7
    //   291: new 251	java/io/FileOutputStream
    //   294: dup
    //   295: aload 4
    //   297: invokespecial 252	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   300: astore 4
    //   302: new 254	java/io/BufferedOutputStream
    //   305: dup
    //   306: aload 4
    //   308: sipush 4096
    //   311: invokespecial 257	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   314: astore_0
    //   315: aload 11
    //   317: aload 9
    //   319: iconst_0
    //   320: sipush 4096
    //   323: invokevirtual 261	java/util/zip/ZipInputStream:read	([BII)I
    //   326: istore_2
    //   327: iload_2
    //   328: iconst_m1
    //   329: if_icmpeq +121 -> 450
    //   332: aload_0
    //   333: aload 9
    //   335: iconst_0
    //   336: iload_2
    //   337: invokevirtual 265	java/io/BufferedOutputStream:write	([BII)V
    //   340: goto -25 -> 315
    //   343: astore 10
    //   345: aload_0
    //   346: astore_3
    //   347: aload 4
    //   349: astore_0
    //   350: aload_3
    //   351: astore 4
    //   353: aload_0
    //   354: astore 9
    //   356: aload_3
    //   357: astore 8
    //   359: aload_0
    //   360: astore 7
    //   362: ldc 83
    //   364: aload 10
    //   366: invokestatic 268	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   369: goto -325 -> 44
    //   372: astore 7
    //   374: aload 6
    //   376: astore_3
    //   377: aload 11
    //   379: astore_0
    //   380: aload 5
    //   382: astore_1
    //   383: aload 9
    //   385: astore 5
    //   387: aload 4
    //   389: astore 6
    //   391: aload 7
    //   393: astore 4
    //   395: ldc 83
    //   397: new 85	java/lang/StringBuilder
    //   400: dup
    //   401: ldc 87
    //   403: invokespecial 88	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   406: aload 4
    //   408: invokevirtual 269	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   411: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   414: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   417: invokestatic 104	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   420: iconst_5
    //   421: anewarray 271	java/io/Closeable
    //   424: dup
    //   425: iconst_0
    //   426: aload_1
    //   427: aastore
    //   428: dup
    //   429: iconst_1
    //   430: aload_0
    //   431: aastore
    //   432: dup
    //   433: iconst_2
    //   434: aload 5
    //   436: aastore
    //   437: dup
    //   438: iconst_3
    //   439: aload 6
    //   441: aastore
    //   442: dup
    //   443: iconst_4
    //   444: aload_3
    //   445: aastore
    //   446: invokestatic 276	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   449: return
    //   450: aload_0
    //   451: invokevirtual 279	java/io/BufferedOutputStream:flush	()V
    //   454: aload_0
    //   455: astore_3
    //   456: aload 4
    //   458: astore_0
    //   459: goto -415 -> 44
    //   462: iconst_5
    //   463: anewarray 271	java/io/Closeable
    //   466: dup
    //   467: iconst_0
    //   468: aload 5
    //   470: aastore
    //   471: dup
    //   472: iconst_1
    //   473: aload 11
    //   475: aastore
    //   476: dup
    //   477: iconst_2
    //   478: aload_0
    //   479: aastore
    //   480: dup
    //   481: iconst_3
    //   482: aload_3
    //   483: aastore
    //   484: dup
    //   485: iconst_4
    //   486: aload 6
    //   488: aastore
    //   489: invokestatic 276	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   492: return
    //   493: astore_0
    //   494: aconst_null
    //   495: astore 4
    //   497: aconst_null
    //   498: astore 5
    //   500: aconst_null
    //   501: astore 6
    //   503: aconst_null
    //   504: astore_1
    //   505: aconst_null
    //   506: astore_3
    //   507: iconst_5
    //   508: anewarray 271	java/io/Closeable
    //   511: dup
    //   512: iconst_0
    //   513: aload 5
    //   515: aastore
    //   516: dup
    //   517: iconst_1
    //   518: aload 4
    //   520: aastore
    //   521: dup
    //   522: iconst_2
    //   523: aload_3
    //   524: aastore
    //   525: dup
    //   526: iconst_3
    //   527: aload_1
    //   528: aastore
    //   529: dup
    //   530: iconst_4
    //   531: aload 6
    //   533: aastore
    //   534: invokestatic 276	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   537: aload_0
    //   538: athrow
    //   539: astore_0
    //   540: aconst_null
    //   541: astore 6
    //   543: aconst_null
    //   544: astore 4
    //   546: aconst_null
    //   547: astore_1
    //   548: aconst_null
    //   549: astore_3
    //   550: goto -43 -> 507
    //   553: astore_0
    //   554: aconst_null
    //   555: astore_1
    //   556: aconst_null
    //   557: astore 4
    //   559: aconst_null
    //   560: astore_3
    //   561: goto -54 -> 507
    //   564: astore 7
    //   566: aload_0
    //   567: astore_1
    //   568: aload 4
    //   570: astore_3
    //   571: aload 7
    //   573: astore_0
    //   574: aload 11
    //   576: astore 4
    //   578: goto -71 -> 507
    //   581: astore_0
    //   582: aload 8
    //   584: astore_1
    //   585: aload 7
    //   587: astore_3
    //   588: aload 11
    //   590: astore 4
    //   592: goto -85 -> 507
    //   595: astore_0
    //   596: aload_3
    //   597: astore_1
    //   598: aload 4
    //   600: astore_3
    //   601: aload 11
    //   603: astore 4
    //   605: goto -98 -> 507
    //   608: astore 9
    //   610: aload_1
    //   611: astore 7
    //   613: aload_0
    //   614: astore 4
    //   616: aload_3
    //   617: astore 8
    //   619: aload 6
    //   621: astore_1
    //   622: aload 5
    //   624: astore_3
    //   625: aload 9
    //   627: astore_0
    //   628: aload 8
    //   630: astore 6
    //   632: aload 7
    //   634: astore 5
    //   636: goto -129 -> 507
    //   639: astore 4
    //   641: aconst_null
    //   642: astore_1
    //   643: aconst_null
    //   644: astore_0
    //   645: aload 8
    //   647: astore 6
    //   649: aload 7
    //   651: astore 5
    //   653: goto -258 -> 395
    //   656: astore 4
    //   658: aconst_null
    //   659: astore_0
    //   660: aload 5
    //   662: astore_1
    //   663: aload 8
    //   665: astore 6
    //   667: aload 7
    //   669: astore 5
    //   671: goto -276 -> 395
    //   674: astore 4
    //   676: aload 6
    //   678: astore_3
    //   679: aload 5
    //   681: astore_1
    //   682: aconst_null
    //   683: astore_0
    //   684: aload 8
    //   686: astore 6
    //   688: aload 7
    //   690: astore 5
    //   692: goto -297 -> 395
    //   695: astore 10
    //   697: goto -347 -> 350
    //   700: astore 10
    //   702: aload 4
    //   704: astore_0
    //   705: goto -355 -> 350
    //
    // Exception table:
    //   from	to	target	type
    //   315	327	343	java/lang/Exception
    //   332	340	343	java/lang/Exception
    //   450	454	343	java/lang/Exception
    //   56	63	372	java/lang/Exception
    //   362	369	372	java/lang/Exception
    //   8	18	493	finally
    //   18	29	539	finally
    //   29	40	553	finally
    //   315	327	564	finally
    //   332	340	564	finally
    //   450	454	564	finally
    //   56	63	581	finally
    //   74	96	581	finally
    //   102	109	581	finally
    //   115	122	581	finally
    //   131	139	581	finally
    //   145	154	581	finally
    //   160	199	581	finally
    //   205	213	581	finally
    //   219	233	581	finally
    //   239	247	581	finally
    //   253	259	581	finally
    //   265	273	581	finally
    //   279	285	581	finally
    //   291	302	581	finally
    //   362	369	581	finally
    //   302	315	595	finally
    //   395	420	608	finally
    //   8	18	639	java/lang/Exception
    //   18	29	656	java/lang/Exception
    //   29	40	674	java/lang/Exception
    //   74	96	695	java/lang/Exception
    //   102	109	695	java/lang/Exception
    //   115	122	695	java/lang/Exception
    //   131	139	695	java/lang/Exception
    //   145	154	695	java/lang/Exception
    //   160	199	695	java/lang/Exception
    //   205	213	695	java/lang/Exception
    //   219	233	695	java/lang/Exception
    //   239	247	695	java/lang/Exception
    //   253	259	695	java/lang/Exception
    //   265	273	695	java/lang/Exception
    //   279	285	695	java/lang/Exception
    //   291	302	695	java/lang/Exception
    //   302	315	700	java/lang/Exception
  }

  private static boolean a(c paramc)
  {
    try
    {
      boolean bool = g.add(paramc);
      return bool;
    }
    finally
    {
      paramc = finally;
    }
    throw paramc;
  }

  private e b()
  {
    e locale = new e();
    locale.d = this.d;
    k.g localg;
    if (this.d != null)
    {
      locale.a = this.d.a();
      if (this.d.b == null)
        break label957;
      if (!a(this.d))
      {
        com.baidu.android.pushservice.h.a.d("HttpTaskThread", "Request url: " + this.d.c() + " failed, already in queue");
        this.a = null;
        this.d = null;
        return null;
      }
      localg = a((Context)this.b.get(), this.d.c());
      if (localg == null)
      {
        localg = new k.g();
        localg.b = this.d.c();
        localg.a = this.d.a;
        localg.c = this.d.c;
        localg.d = this.d.d;
        localg.g = 0;
        localg.h = a(localg.b);
        localg.i = e;
        localg.f = localg.b.substring(localg.b.lastIndexOf('/') + 1);
        localg.e = this.d.b;
      }
      while (true)
      {
        try
        {
          k.a((Context)this.b.get(), localg);
          if (localg.i != f)
            break;
          locale.c = 0;
          locale.d = this.d;
          locale.e = (localg.e + "/" + localg.f);
          return locale;
        }
        catch (Exception localException2)
        {
          com.baidu.android.pushservice.h.a.c("HttpTaskThread", "HttpTask insertFileDownloadingInfo");
          continue;
        }
        localg.h = a(localg.b);
      }
      com.baidu.android.pushservice.h.a.c("HttpTaskThread", "Request url: " + this.d.c() + " success");
      if (this.a != null)
        this.a.a(this);
    }
    while (true)
    {
      Object localObject2;
      File localFile;
      try
      {
        localObject2 = com.baidu.android.pushservice.f.c.a(this.d.c(), this.d.b(), this.d.f);
        if (((com.baidu.android.pushservice.f.b)localObject2).b() != 200)
          break label938;
        localObject2 = ((com.baidu.android.pushservice.f.b)localObject2).a();
        localObject3 = new File(localg.e);
        if (!((File)localObject3).exists())
          ((File)localObject3).mkdirs();
        localFile = new File(localg.e + "/" + localg.f);
        if (!localFile.exists())
          localFile.createNewFile();
        localObject3 = new RandomAccessFile(localFile, "rw");
        ((RandomAccessFile)localObject3).seek(localg.g);
        arrayOfByte = new byte[102400];
        i = localg.g;
        localb = new b();
        localb.b = localg.h;
        localb.a = i;
        a(localb);
        k = i;
        j = i;
      }
      catch (Exception localException1)
      {
        try
        {
          byte[] arrayOfByte;
          int i;
          b localb;
          int k;
          if (!this.h)
          {
            j = i;
            int m = ((InputStream)localObject2).read(arrayOfByte);
            k = i;
            if (m != -1)
            {
              j = i;
              ((RandomAccessFile)localObject3).write(arrayOfByte, 0, m);
              k = i + m;
              j = k;
              localb = new b();
              j = k;
              localb.b = localg.h;
              j = k;
              localb.a = k;
              j = k;
              a(localb);
              j = k;
              m = localg.h;
              i = k;
              if (k != m)
                continue;
            }
          }
          com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject2, localObject3 });
          int j = k;
          if (!this.h)
          {
            localg.g = j;
            localg.i = f;
            k.a((Context)this.b.get(), localg.b, localg);
            locale.c = 0;
            locale.e = localFile.getAbsolutePath();
            return locale;
          }
        }
        catch (IOException localIOException)
        {
          com.baidu.android.pushservice.h.a.e("HttpTaskThread", "error : " + localIOException.getMessage());
          com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject2, localObject3 });
          continue;
          localException1 = localException1;
          com.baidu.android.pushservice.h.a.e("HttpTaskThread", "download file Exception:" + localException1.getMessage());
          locale.c = -1;
          continue;
        }
        finally
        {
          Object localObject3;
          com.baidu.android.pushservice.f.c.a(new Closeable[] { localObject2, localObject3 });
        }
      }
      k.b((Context)this.b.get(), localObject1.b);
      locale.c = 2;
      localFile.delete();
      continue;
      label938: locale.c = 1;
      locale.b = ((com.baidu.android.pushservice.f.b)localObject2).b();
      continue;
      label957: com.baidu.android.pushservice.h.a.c("HttpTaskThread", "download file Request error: " + this.d);
      locale.c = 3;
    }
  }

  private static boolean b(c paramc)
  {
    try
    {
      boolean bool = g.remove(paramc);
      return bool;
    }
    finally
    {
      paramc = finally;
    }
    throw paramc;
  }

  public int a(a parama)
  {
    if (parama == null);
    long l;
    do
    {
      return -1;
      l = parama.a();
    }
    while (this.c > l);
    if (this.c < l)
      return 1;
    return 0;
  }

  public long a()
  {
    return this.c;
  }

  protected void a(b paramb)
  {
    if (this.a != null)
      this.a.a(this, paramb);
  }

  public void run()
  {
    a(b());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.richmedia.a
 * JD-Core Version:    0.6.2
 */