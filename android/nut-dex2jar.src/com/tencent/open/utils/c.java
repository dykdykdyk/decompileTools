package com.tencent.open.utils;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import com.tencent.open.a.h;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public final class c
{
  public static String c;
  public String a;
  public f b;
  public long d;
  Handler e;
  public Runnable f = new e(this);

  public c(Activity paramActivity)
  {
    this.e = new d(this, paramActivity.getMainLooper());
  }

  public static Bitmap a(String paramString)
  {
    h.a("AsynLoadImg", "getbitmap:" + paramString);
    try
    {
      Object localObject = (HttpURLConnection)new URL(paramString).openConnection();
      ((HttpURLConnection)localObject).setDoInput(true);
      ((HttpURLConnection)localObject).connect();
      localObject = ((HttpURLConnection)localObject).getInputStream();
      Bitmap localBitmap = BitmapFactory.decodeStream((InputStream)localObject);
      ((InputStream)localObject).close();
      h.a("AsynLoadImg", "image download finished." + paramString);
      return localBitmap;
    }
    catch (OutOfMemoryError paramString)
    {
      paramString.printStackTrace();
      h.a("AsynLoadImg", "getbitmap bmp fail---");
      return null;
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
      h.a("AsynLoadImg", "getbitmap bmp fail---");
    }
    return null;
  }

  // ERROR //
  public static boolean a(Bitmap paramBitmap, String paramString)
  {
    // Byte code:
    //   0: getstatic 110	com/tencent/open/utils/c:c	Ljava/lang/String;
    //   3: astore 5
    //   5: aconst_null
    //   6: astore 4
    //   8: aconst_null
    //   9: astore_3
    //   10: aload 4
    //   12: astore_2
    //   13: new 112	java/io/File
    //   16: dup
    //   17: aload 5
    //   19: invokespecial 113	java/io/File:<init>	(Ljava/lang/String;)V
    //   22: astore 6
    //   24: aload 4
    //   26: astore_2
    //   27: aload 6
    //   29: invokevirtual 117	java/io/File:exists	()Z
    //   32: ifne +12 -> 44
    //   35: aload 4
    //   37: astore_2
    //   38: aload 6
    //   40: invokevirtual 120	java/io/File:mkdir	()Z
    //   43: pop
    //   44: aload 4
    //   46: astore_2
    //   47: new 50	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 121	java/lang/StringBuilder:<init>	()V
    //   54: aload 5
    //   56: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: aload_1
    //   60: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: astore 5
    //   68: aload 4
    //   70: astore_2
    //   71: ldc 48
    //   73: new 50	java/lang/StringBuilder
    //   76: dup
    //   77: ldc 123
    //   79: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload_1
    //   83: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokestatic 68	com/tencent/open/a/h:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   92: aload 4
    //   94: astore_2
    //   95: new 125	java/io/BufferedOutputStream
    //   98: dup
    //   99: new 127	java/io/FileOutputStream
    //   102: dup
    //   103: new 112	java/io/File
    //   106: dup
    //   107: aload 5
    //   109: invokespecial 113	java/io/File:<init>	(Ljava/lang/String;)V
    //   112: invokespecial 130	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   115: invokespecial 133	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   118: astore_1
    //   119: aload_0
    //   120: getstatic 139	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   123: bipush 80
    //   125: aload_1
    //   126: invokevirtual 145	android/graphics/Bitmap:compress	(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    //   129: pop
    //   130: aload_1
    //   131: invokevirtual 148	java/io/BufferedOutputStream:flush	()V
    //   134: aload_1
    //   135: invokevirtual 149	java/io/BufferedOutputStream:close	()V
    //   138: iconst_1
    //   139: ireturn
    //   140: astore_0
    //   141: aload_0
    //   142: invokevirtual 107	java/io/IOException:printStackTrace	()V
    //   145: goto -7 -> 138
    //   148: astore_1
    //   149: aload_3
    //   150: astore_0
    //   151: aload_0
    //   152: astore_2
    //   153: aload_1
    //   154: invokevirtual 107	java/io/IOException:printStackTrace	()V
    //   157: aload_0
    //   158: astore_2
    //   159: ldc 48
    //   161: ldc 151
    //   163: aload_1
    //   164: invokestatic 154	com/tencent/open/a/h:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   167: aload_0
    //   168: ifnull +7 -> 175
    //   171: aload_0
    //   172: invokevirtual 149	java/io/BufferedOutputStream:close	()V
    //   175: iconst_0
    //   176: ireturn
    //   177: astore_0
    //   178: aload_0
    //   179: invokevirtual 107	java/io/IOException:printStackTrace	()V
    //   182: goto -7 -> 175
    //   185: astore_0
    //   186: aload_2
    //   187: ifnull +7 -> 194
    //   190: aload_2
    //   191: invokevirtual 149	java/io/BufferedOutputStream:close	()V
    //   194: aload_0
    //   195: athrow
    //   196: astore_1
    //   197: aload_1
    //   198: invokevirtual 107	java/io/IOException:printStackTrace	()V
    //   201: goto -7 -> 194
    //   204: astore_0
    //   205: aload_1
    //   206: astore_2
    //   207: goto -21 -> 186
    //   210: astore_2
    //   211: aload_1
    //   212: astore_0
    //   213: aload_2
    //   214: astore_1
    //   215: goto -64 -> 151
    //
    // Exception table:
    //   from	to	target	type
    //   134	138	140	java/io/IOException
    //   13	24	148	java/io/IOException
    //   27	35	148	java/io/IOException
    //   38	44	148	java/io/IOException
    //   47	68	148	java/io/IOException
    //   71	92	148	java/io/IOException
    //   95	119	148	java/io/IOException
    //   171	175	177	java/io/IOException
    //   13	24	185	finally
    //   27	35	185	finally
    //   38	44	185	finally
    //   47	68	185	finally
    //   71	92	185	finally
    //   95	119	185	finally
    //   153	157	185	finally
    //   159	167	185	finally
    //   190	194	196	java/io/IOException
    //   119	134	204	finally
    //   119	134	210	java/io/IOException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.c
 * JD-Core Version:    0.6.2
 */