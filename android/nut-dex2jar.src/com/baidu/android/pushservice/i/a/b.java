package com.baidu.android.pushservice.i.a;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.baidu.android.pushservice.util.g;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  public static double a = 0.5D;
  public static double b = 0.2D;
  public static double c = 0.2D;
  public static double d = 0.1D;

  // ERROR //
  public static b.a a()
  {
    // Byte code:
    //   0: ldc 31
    //   2: astore 4
    //   4: sipush 1024
    //   7: newarray byte
    //   9: astore_3
    //   10: new 33	java/io/RandomAccessFile
    //   13: dup
    //   14: ldc 35
    //   16: ldc 37
    //   18: invokespecial 41	java/io/RandomAccessFile:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   21: astore_2
    //   22: aload_2
    //   23: astore_1
    //   24: aload_2
    //   25: aload_3
    //   26: invokevirtual 45	java/io/RandomAccessFile:read	([B)I
    //   29: pop
    //   30: aload_2
    //   31: astore_1
    //   32: new 47	java/lang/String
    //   35: dup
    //   36: aload_3
    //   37: invokespecial 50	java/lang/String:<init>	([B)V
    //   40: astore_3
    //   41: aload_2
    //   42: astore_1
    //   43: aload_3
    //   44: iconst_0
    //   45: invokevirtual 54	java/lang/String:indexOf	(I)I
    //   48: istore_0
    //   49: iload_0
    //   50: iconst_m1
    //   51: if_icmpeq +33 -> 84
    //   54: aload_2
    //   55: astore_1
    //   56: aload_3
    //   57: iconst_0
    //   58: iload_0
    //   59: invokevirtual 58	java/lang/String:substring	(II)Ljava/lang/String;
    //   62: astore_3
    //   63: aload_3
    //   64: astore_1
    //   65: aload_2
    //   66: invokevirtual 61	java/io/RandomAccessFile:close	()V
    //   69: aload_1
    //   70: invokestatic 64	com/baidu/android/pushservice/i/a/b:a	(Ljava/lang/String;)Lcom/baidu/android/pushservice/i/a/b$a;
    //   73: astore_1
    //   74: aload_1
    //   75: invokestatic 68	com/baidu/android/pushservice/i/a/b:e	()I
    //   78: i2l
    //   79: putfield 73	com/baidu/android/pushservice/i/a/b$a:e	J
    //   82: aload_1
    //   83: areturn
    //   84: aload_3
    //   85: astore_1
    //   86: goto -21 -> 65
    //   89: astore_2
    //   90: ldc 75
    //   92: aload_2
    //   93: invokestatic 80	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   96: goto -27 -> 69
    //   99: astore_3
    //   100: aconst_null
    //   101: astore_2
    //   102: aload_2
    //   103: astore_1
    //   104: ldc 75
    //   106: aload_3
    //   107: invokestatic 80	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   110: aload 4
    //   112: astore_1
    //   113: aload_2
    //   114: ifnull -45 -> 69
    //   117: aload_2
    //   118: invokevirtual 61	java/io/RandomAccessFile:close	()V
    //   121: aload 4
    //   123: astore_1
    //   124: goto -55 -> 69
    //   127: astore_1
    //   128: ldc 75
    //   130: aload_1
    //   131: invokestatic 80	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   134: aload 4
    //   136: astore_1
    //   137: goto -68 -> 69
    //   140: astore_2
    //   141: aconst_null
    //   142: astore_1
    //   143: aload_1
    //   144: ifnull +7 -> 151
    //   147: aload_1
    //   148: invokevirtual 61	java/io/RandomAccessFile:close	()V
    //   151: aload_2
    //   152: athrow
    //   153: astore_1
    //   154: ldc 75
    //   156: aload_1
    //   157: invokestatic 80	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   160: goto -9 -> 151
    //   163: astore_2
    //   164: goto -21 -> 143
    //   167: astore_3
    //   168: goto -66 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   65	69	89	java/lang/Exception
    //   4	22	99	java/lang/Exception
    //   117	121	127	java/lang/Exception
    //   4	22	140	finally
    //   147	151	153	java/lang/Exception
    //   24	30	163	finally
    //   32	41	163	finally
    //   43	49	163	finally
    //   56	63	163	finally
    //   104	110	163	finally
    //   24	30	167	java/lang/Exception
    //   32	41	167	java/lang/Exception
    //   43	49	167	java/lang/Exception
    //   56	63	167	java/lang/Exception
  }

  private static b.a a(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      paramString = null;
    b.a locala;
    String[] arrayOfString;
    int k;
    int i;
    label145: 
    do
    {
      return paramString;
      locala = new b.a();
      locala.a = 0;
      locala.c = 0;
      locala.b = 1;
      locala.d = 0.0D;
      if (!paramString.contains("ARMv5"))
        break;
      locala.a = 1;
      if (paramString.contains("neon"))
        locala.c |= 256;
      if (paramString.contains("vfpv3"))
        locala.c |= 16;
      if (paramString.contains(" vfp"))
        locala.c |= 1;
      arrayOfString = paramString.split("\n");
      k = arrayOfString.length;
      i = 0;
      paramString = locala;
    }
    while (i >= k);
    paramString = arrayOfString[i];
    int j;
    if (paramString.contains("CPU variant"))
    {
      j = paramString.indexOf(": ");
      if (j >= 0)
        paramString = paramString.substring(j + 2);
    }
    while (true)
    {
      try
      {
        locala.b = Integer.decode(paramString).intValue();
        if (locala.b == 0)
        {
          j = 1;
          locala.b = j;
          i += 1;
          break label145;
          if (paramString.contains("ARMv6"))
          {
            locala.a = 16;
            break;
          }
          if (!paramString.contains("ARMv7"))
            break;
          locala.a = 256;
          break;
        }
        j = locala.b;
        continue;
      }
      catch (NumberFormatException paramString)
      {
        locala.b = 1;
        continue;
      }
      if (paramString.contains("BogoMIPS"))
      {
        j = paramString.indexOf(": ");
        if (j >= 0)
          paramString.substring(j + 2);
      }
    }
  }

  public static String a(InputStream paramInputStream)
  {
    if (paramInputStream == null)
      return null;
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        localStringBuilder.append(str);
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      Log.e("StatUtils", "error " + localIOException.getMessage());
      try
      {
        paramInputStream.close();
        while (true)
        {
          return localStringBuilder.toString();
          try
          {
            paramInputStream.close();
          }
          catch (IOException paramInputStream)
          {
            Log.e("StatUtils", "error " + paramInputStream.getMessage());
          }
        }
      }
      catch (IOException paramInputStream)
      {
        while (true)
          Log.e("StatUtils", "error " + paramInputStream.getMessage());
      }
    }
    finally
    {
    }
    try
    {
      paramInputStream.close();
      throw localObject;
    }
    catch (IOException paramInputStream)
    {
      while (true)
        Log.e("StatUtils", "error " + paramInputStream.getMessage());
    }
  }

  public static int[] a(Context paramContext)
  {
    int[] arrayOfInt = new int[3];
    paramContext = (WindowManager)paramContext.getSystemService("window");
    if (paramContext == null)
    {
      arrayOfInt[0] = 0;
      arrayOfInt[1] = 0;
      arrayOfInt[2] = 0;
      return arrayOfInt;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    int k;
    if (i < j)
    {
      k = j;
      j = i;
    }
    while (true)
    {
      arrayOfInt[0] = k;
      arrayOfInt[1] = j;
      arrayOfInt[2] = localDisplayMetrics.densityDpi;
      return arrayOfInt;
      k = i;
    }
  }

  // ERROR //
  public static long b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 218	java/io/FileReader
    //   5: dup
    //   6: ldc 220
    //   8: invokespecial 221	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: new 144	java/io/BufferedReader
    //   15: dup
    //   16: aload_2
    //   17: sipush 8192
    //   20: invokespecial 224	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   23: astore_3
    //   24: aload_3
    //   25: invokevirtual 159	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   28: astore 4
    //   30: aload 4
    //   32: ifnull +156 -> 188
    //   35: aload 4
    //   37: ldc 226
    //   39: invokevirtual 114	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   42: iconst_1
    //   43: aaload
    //   44: invokestatic 229	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   47: invokevirtual 133	java/lang/Integer:intValue	()I
    //   50: sipush 1024
    //   53: idiv
    //   54: i2l
    //   55: lstore_0
    //   56: aload_3
    //   57: invokevirtual 230	java/io/BufferedReader:close	()V
    //   60: aload_2
    //   61: invokevirtual 231	java/io/FileReader:close	()V
    //   64: lload_0
    //   65: lreturn
    //   66: astore_2
    //   67: ldc 75
    //   69: new 154	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 233
    //   75: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_2
    //   79: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   82: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   91: pop
    //   92: lload_0
    //   93: lreturn
    //   94: astore_2
    //   95: aload_3
    //   96: astore_2
    //   97: aload_2
    //   98: ifnull +7 -> 105
    //   101: aload_2
    //   102: invokevirtual 231	java/io/FileReader:close	()V
    //   105: ldc2_w 234
    //   108: lreturn
    //   109: astore_2
    //   110: ldc 75
    //   112: new 154	java/lang/StringBuilder
    //   115: dup
    //   116: ldc 233
    //   118: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload_2
    //   122: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   125: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   134: pop
    //   135: goto -30 -> 105
    //   138: astore_3
    //   139: aconst_null
    //   140: astore_2
    //   141: aload_2
    //   142: ifnull +7 -> 149
    //   145: aload_2
    //   146: invokevirtual 231	java/io/FileReader:close	()V
    //   149: aload_3
    //   150: athrow
    //   151: astore_2
    //   152: ldc 75
    //   154: new 154	java/lang/StringBuilder
    //   157: dup
    //   158: ldc 233
    //   160: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: aload_2
    //   164: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   167: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   176: pop
    //   177: goto -28 -> 149
    //   180: astore_3
    //   181: goto -40 -> 141
    //   184: astore_3
    //   185: goto -88 -> 97
    //   188: lconst_0
    //   189: lstore_0
    //   190: goto -134 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   60	64	66	java/io/IOException
    //   2	12	94	java/io/IOException
    //   101	105	109	java/io/IOException
    //   2	12	138	finally
    //   145	149	151	java/io/IOException
    //   12	30	180	finally
    //   35	56	180	finally
    //   56	60	180	finally
    //   12	30	184	java/io/IOException
    //   35	56	184	java/io/IOException
    //   56	60	184	java/io/IOException
  }

  public static String b(Context paramContext)
  {
    label103: 
    while (true)
    {
      Object localObject;
      try
      {
        Enumeration localEnumeration1 = NetworkInterface.getNetworkInterfaces();
        if (localEnumeration1 == null)
          break;
        localObject = null;
        if (localEnumeration1.hasMoreElements())
        {
          Enumeration localEnumeration2 = ((NetworkInterface)localEnumeration1.nextElement()).getInetAddresses();
          paramContext = (Context)localObject;
          localObject = paramContext;
          if (!localEnumeration2.hasMoreElements())
            continue;
          localObject = (InetAddress)localEnumeration2.nextElement();
          if (((InetAddress)localObject).isLoopbackAddress())
            break label103;
          paramContext = ((InetAddress)localObject).getHostAddress().toString();
          continue;
        }
      }
      catch (Exception paramContext)
      {
        Log.e("StatUtils", "error " + paramContext.getMessage());
        return null;
      }
      return localObject;
    }
    return null;
  }

  public static String c()
  {
    b.a locala = a();
    if ((locala.a & 0x1) == 1)
      return "armv5";
    if ((locala.a & 0x10) == 16)
      return "armv6";
    if ((locala.a & 0x100) == 256)
      return "armv7";
    return "unknown";
  }

  public static boolean c(Context paramContext)
  {
    return g.b(paramContext);
  }

  public static String d()
  {
    b.a locala = a();
    if ((locala.c & 0x100) == 256)
      return "neon";
    if ((locala.c & 0x1) == 1)
      return "vfp";
    if ((locala.c & 0x10) == 16)
      return "vfpv3";
    return "unknown";
  }

  public static String d(Context paramContext)
  {
    return g.d(paramContext);
  }

  // ERROR //
  private static int e()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore 5
    //   9: aconst_null
    //   10: astore_3
    //   11: iconst_0
    //   12: istore_1
    //   13: iconst_0
    //   14: istore_0
    //   15: new 218	java/io/FileReader
    //   18: dup
    //   19: ldc_w 288
    //   22: invokespecial 221	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   25: astore_2
    //   26: aload 5
    //   28: astore 4
    //   30: aload_2
    //   31: astore 5
    //   33: new 144	java/io/BufferedReader
    //   36: dup
    //   37: aload_2
    //   38: invokespecial 152	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   41: astore_3
    //   42: aload_3
    //   43: invokevirtual 159	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   46: astore 4
    //   48: aload 4
    //   50: ifnull +12 -> 62
    //   53: aload 4
    //   55: invokevirtual 291	java/lang/String:trim	()Ljava/lang/String;
    //   58: invokestatic 294	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   61: istore_0
    //   62: aload_2
    //   63: invokevirtual 231	java/io/FileReader:close	()V
    //   66: aload_3
    //   67: invokevirtual 230	java/io/BufferedReader:close	()V
    //   70: iload_0
    //   71: ireturn
    //   72: astore_2
    //   73: ldc 75
    //   75: new 154	java/lang/StringBuilder
    //   78: dup
    //   79: ldc 165
    //   81: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload_2
    //   85: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   88: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   91: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   94: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   97: pop
    //   98: goto -32 -> 66
    //   101: astore_2
    //   102: ldc 75
    //   104: new 154	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 165
    //   110: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_2
    //   114: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   117: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   123: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   126: pop
    //   127: iload_0
    //   128: ireturn
    //   129: astore 4
    //   131: aconst_null
    //   132: astore_2
    //   133: ldc 75
    //   135: new 154	java/lang/StringBuilder
    //   138: dup
    //   139: ldc 165
    //   141: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   144: aload 4
    //   146: invokevirtual 295	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   149: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   155: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   158: pop
    //   159: aload_3
    //   160: ifnull +7 -> 167
    //   163: aload_3
    //   164: invokevirtual 231	java/io/FileReader:close	()V
    //   167: iload_1
    //   168: istore_0
    //   169: aload_2
    //   170: ifnull -100 -> 70
    //   173: aload_2
    //   174: invokevirtual 230	java/io/BufferedReader:close	()V
    //   177: iconst_0
    //   178: ireturn
    //   179: astore_2
    //   180: ldc 75
    //   182: new 154	java/lang/StringBuilder
    //   185: dup
    //   186: ldc 165
    //   188: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   191: aload_2
    //   192: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   195: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   204: pop
    //   205: iconst_0
    //   206: ireturn
    //   207: astore_3
    //   208: ldc 75
    //   210: new 154	java/lang/StringBuilder
    //   213: dup
    //   214: ldc 165
    //   216: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   219: aload_3
    //   220: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   223: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   232: pop
    //   233: goto -66 -> 167
    //   236: astore_3
    //   237: aconst_null
    //   238: astore_2
    //   239: aload 6
    //   241: astore 4
    //   243: aload_2
    //   244: astore 5
    //   246: ldc 75
    //   248: new 154	java/lang/StringBuilder
    //   251: dup
    //   252: ldc 165
    //   254: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: aload_3
    //   258: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   261: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   270: pop
    //   271: aload_2
    //   272: ifnull +7 -> 279
    //   275: aload_2
    //   276: invokevirtual 231	java/io/FileReader:close	()V
    //   279: iload_1
    //   280: istore_0
    //   281: aload 6
    //   283: ifnull -213 -> 70
    //   286: aload 6
    //   288: invokevirtual 230	java/io/BufferedReader:close	()V
    //   291: iconst_0
    //   292: ireturn
    //   293: astore_2
    //   294: ldc 75
    //   296: new 154	java/lang/StringBuilder
    //   299: dup
    //   300: ldc 165
    //   302: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: aload_2
    //   306: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   309: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   315: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   318: pop
    //   319: iconst_0
    //   320: ireturn
    //   321: astore_2
    //   322: ldc 75
    //   324: new 154	java/lang/StringBuilder
    //   327: dup
    //   328: ldc 165
    //   330: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   333: aload_2
    //   334: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   337: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   343: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   346: pop
    //   347: goto -68 -> 279
    //   350: astore_3
    //   351: aconst_null
    //   352: astore_2
    //   353: aload_2
    //   354: ifnull +7 -> 361
    //   357: aload_2
    //   358: invokevirtual 231	java/io/FileReader:close	()V
    //   361: aload 4
    //   363: ifnull +8 -> 371
    //   366: aload 4
    //   368: invokevirtual 230	java/io/BufferedReader:close	()V
    //   371: aload_3
    //   372: athrow
    //   373: astore_2
    //   374: ldc 75
    //   376: new 154	java/lang/StringBuilder
    //   379: dup
    //   380: ldc 165
    //   382: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload_2
    //   386: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   389: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   395: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   398: pop
    //   399: goto -38 -> 361
    //   402: astore_2
    //   403: ldc 75
    //   405: new 154	java/lang/StringBuilder
    //   408: dup
    //   409: ldc 165
    //   411: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   414: aload_2
    //   415: invokevirtual 171	java/io/IOException:getMessage	()Ljava/lang/String;
    //   418: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   424: invokestatic 179	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   427: pop
    //   428: goto -57 -> 371
    //   431: astore_3
    //   432: aload 5
    //   434: astore_2
    //   435: goto -82 -> 353
    //   438: astore 5
    //   440: aload_3
    //   441: astore 4
    //   443: aload 5
    //   445: astore_3
    //   446: goto -93 -> 353
    //   449: astore 4
    //   451: aload_3
    //   452: astore 5
    //   454: aload 4
    //   456: astore_3
    //   457: aload_2
    //   458: astore 4
    //   460: aload 5
    //   462: astore_2
    //   463: goto -110 -> 353
    //   466: astore_3
    //   467: goto -228 -> 239
    //   470: astore 4
    //   472: aload_3
    //   473: astore 6
    //   475: aload 4
    //   477: astore_3
    //   478: goto -239 -> 239
    //   481: astore 4
    //   483: aconst_null
    //   484: astore 5
    //   486: aload_2
    //   487: astore_3
    //   488: aload 5
    //   490: astore_2
    //   491: goto -358 -> 133
    //   494: astore 4
    //   496: aload_2
    //   497: astore 5
    //   499: aload_3
    //   500: astore_2
    //   501: aload 5
    //   503: astore_3
    //   504: goto -371 -> 133
    //
    // Exception table:
    //   from	to	target	type
    //   62	66	72	java/io/IOException
    //   66	70	101	java/io/IOException
    //   15	26	129	java/io/FileNotFoundException
    //   173	177	179	java/io/IOException
    //   163	167	207	java/io/IOException
    //   15	26	236	java/io/IOException
    //   286	291	293	java/io/IOException
    //   275	279	321	java/io/IOException
    //   15	26	350	finally
    //   357	361	373	java/io/IOException
    //   366	371	402	java/io/IOException
    //   33	42	431	finally
    //   246	271	431	finally
    //   42	48	438	finally
    //   53	62	438	finally
    //   133	159	449	finally
    //   33	42	466	java/io/IOException
    //   42	48	470	java/io/IOException
    //   53	62	470	java/io/IOException
    //   33	42	481	java/io/FileNotFoundException
    //   42	48	494	java/io/FileNotFoundException
    //   53	62	494	java/io/FileNotFoundException
  }

  public static boolean e(Context paramContext)
  {
    return g.a(paramContext);
  }

  public static JSONObject f(Context paramContext)
  {
    return b.b.a(paramContext).a();
  }

  public static JSONObject g(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      Object localObject = (TelephonyManager)paramContext.getSystemService("phone");
      if (localObject != null)
      {
        localJSONObject.put("type", ((TelephonyManager)localObject).getNetworkType());
        localJSONObject.put("operator", ((TelephonyManager)localObject).getNetworkOperatorName());
      }
      localJSONObject.put("access_type", d(paramContext));
      if (localObject != null)
      {
        localObject = ((TelephonyManager)localObject).getNetworkOperator();
        if ((!TextUtils.isEmpty((CharSequence)localObject)) && (((String)localObject).length() >= 4))
          break label115;
        localJSONObject.put("mcc", -1);
        localJSONObject.put("mnc", -1);
      }
      while (true)
      {
        localJSONObject.put("user_ip", b(paramContext));
        return localJSONObject;
        try
        {
          label115: localJSONObject.put("mcc", Integer.parseInt(((String)localObject).substring(0, 3)));
          localJSONObject.put("mnc", Integer.parseInt(((String)localObject).substring(3)));
        }
        catch (NumberFormatException localNumberFormatException)
        {
          localJSONObject.put("mcc", -1);
          localJSONObject.put("mnc", -1);
        }
      }
    }
    catch (JSONException paramContext)
    {
      Log.d("StatUtils", " getNetworkParams e: " + paramContext);
    }
    return localJSONObject;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.a.b
 * JD-Core Version:    0.6.2
 */