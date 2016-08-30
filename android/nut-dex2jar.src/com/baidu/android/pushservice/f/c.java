package com.baidu.android.pushservice.f;

import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;

public class c
{
  static
  {
    if (Build.VERSION.SDK_INT <= 8)
      System.setProperty("http.keepAlive", "false");
  }

  public static b a(String paramString1, String paramString2, HashMap<String, String> paramHashMap)
  {
    Object localObject = null;
    String str = null;
    b localb = new b();
    try
    {
      paramString1 = a(paramString1, paramString2, null);
      str = paramString1;
      localObject = paramString1;
      a(paramString2, paramHashMap, paramString1);
      str = paramString1;
      localObject = paramString1;
      paramHashMap = a(paramString1);
      paramString2 = paramHashMap;
      if (paramString1 != null)
      {
        paramString1.disconnect();
        paramString2 = paramHashMap;
      }
      return paramString2;
    }
    catch (Exception paramString1)
    {
      do
      {
        localObject = str;
        a.a("HttpUtil", "execRequest>>", paramString1);
        paramString2 = localb;
      }
      while (str == null);
      str.disconnect();
      return localb;
    }
    finally
    {
      if (localObject != null)
        ((HttpURLConnection)localObject).disconnect();
    }
    throw paramString1;
  }

  public static b a(String paramString1, String paramString2, HashMap<String, String> paramHashMap, String paramString3)
  {
    Object localObject = null;
    String str = null;
    b localb = new b();
    try
    {
      paramString1 = a(paramString1, paramString2, paramString3);
      str = paramString1;
      localObject = paramString1;
      a(paramString2, paramHashMap, paramString1);
      str = paramString1;
      localObject = paramString1;
      paramHashMap = a(paramString1);
      paramString2 = paramHashMap;
      if (paramString1 != null)
      {
        paramString1.disconnect();
        paramString2 = paramHashMap;
      }
      return paramString2;
    }
    catch (Exception paramString1)
    {
      do
      {
        localObject = str;
        a.a("HttpUtil", "execRequest>>", paramString1);
        paramString2 = localb;
      }
      while (str == null);
      str.disconnect();
      return localb;
    }
    finally
    {
      if (localObject != null)
        ((HttpURLConnection)localObject).disconnect();
    }
    throw paramString1;
  }

  // ERROR //
  private static b a(HttpURLConnection paramHttpURLConnection)
    throws Exception
  {
    // Byte code:
    //   0: new 29	com/baidu/android/pushservice/f/b
    //   3: dup
    //   4: invokespecial 32	com/baidu/android/pushservice/f/b:<init>	()V
    //   7: astore 4
    //   9: aload_0
    //   10: invokevirtual 63	java/net/HttpURLConnection:getResponseCode	()I
    //   13: istore_1
    //   14: iload_1
    //   15: invokestatic 66	com/baidu/android/pushservice/f/c:a	(I)Z
    //   18: ifeq +62 -> 80
    //   21: aload_0
    //   22: invokevirtual 70	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   25: astore_2
    //   26: new 72	java/io/BufferedInputStream
    //   29: dup
    //   30: aload_2
    //   31: invokespecial 75	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   34: astore_3
    //   35: aload_3
    //   36: astore_2
    //   37: aload_0
    //   38: invokestatic 79	com/baidu/android/pushservice/f/c:b	(Ljava/net/HttpURLConnection;)Z
    //   41: ifeq +12 -> 53
    //   44: new 81	java/util/zip/GZIPInputStream
    //   47: dup
    //   48: aload_3
    //   49: invokespecial 82	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   52: astore_2
    //   53: new 84	java/io/ByteArrayInputStream
    //   56: dup
    //   57: aload_2
    //   58: invokestatic 87	com/baidu/android/pushservice/f/c:a	(Ljava/io/InputStream;)[B
    //   61: invokespecial 90	java/io/ByteArrayInputStream:<init>	([B)V
    //   64: astore_0
    //   65: aload 4
    //   67: iload_1
    //   68: invokevirtual 93	com/baidu/android/pushservice/f/b:a	(I)V
    //   71: aload 4
    //   73: aload_0
    //   74: invokevirtual 95	com/baidu/android/pushservice/f/b:a	(Ljava/io/InputStream;)V
    //   77: aload 4
    //   79: areturn
    //   80: aload_0
    //   81: invokevirtual 98	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   84: astore_2
    //   85: goto -59 -> 26
    //   88: astore_2
    //   89: iconst_0
    //   90: istore_1
    //   91: aconst_null
    //   92: astore_0
    //   93: ldc 48
    //   95: ldc 100
    //   97: aload_2
    //   98: invokestatic 55	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   101: goto -36 -> 65
    //   104: astore_2
    //   105: aconst_null
    //   106: astore_0
    //   107: goto -14 -> 93
    //   110: astore_3
    //   111: aload_2
    //   112: astore_0
    //   113: aload_3
    //   114: astore_2
    //   115: goto -22 -> 93
    //   118: astore_2
    //   119: aload_3
    //   120: astore_0
    //   121: goto -28 -> 93
    //   124: astore_3
    //   125: aload_2
    //   126: astore_0
    //   127: aload_3
    //   128: astore_2
    //   129: goto -36 -> 93
    //
    // Exception table:
    //   from	to	target	type
    //   9	14	88	java/lang/Exception
    //   14	26	104	java/lang/Exception
    //   80	85	104	java/lang/Exception
    //   26	35	110	java/lang/Exception
    //   37	53	118	java/lang/Exception
    //   53	65	124	java/lang/Exception
  }

  private static String a(HashMap<String, String> paramHashMap)
    throws Exception
  {
    StringBuffer localStringBuffer = new StringBuffer("");
    paramHashMap = paramHashMap.entrySet().iterator();
    int i = 0;
    while (paramHashMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramHashMap.next();
      if (i != 0)
        localStringBuffer.append("&");
      localStringBuffer.append((String)localEntry.getKey()).append("=").append(URLEncoder.encode((String)localEntry.getValue(), "UTF-8"));
      i += 1;
    }
    return localStringBuffer.toString();
  }

  private static HttpURLConnection a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramString1 = (HttpURLConnection)new URL(paramString1).openConnection();
      while (true)
      {
        try
        {
          paramString1.setConnectTimeout(30000);
          paramString1.setReadTimeout(30000);
          if (("POST".equals(paramString2)) || ("PUT".equals(paramString2)))
          {
            paramString1.setDoOutput(true);
            paramString1.setDoInput(true);
            paramString1.setUseCaches(false);
            paramString1.setRequestMethod(paramString2);
            paramString1.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
            paramString1.setRequestProperty("Accept-Encoding", "gzip");
            if (!TextUtils.isEmpty(paramString3))
              paramString1.setRequestProperty("User-Agent", paramString3);
            if ((paramString1 instanceof HttpsURLConnection))
              a.e("HttpUtil", "a https request appear!!!");
            paramString1.connect();
            return paramString1;
          }
          if (!"DELETE".equals(paramString2))
            break label145;
          paramString1.setDoOutput(true);
          continue;
        }
        catch (Exception paramString2)
        {
        }
        a.a("HttpUtil", "initConnSet>>", paramString2);
        return paramString1;
        label145: if ("GET".equals(paramString2))
          paramString1.setDoOutput(false);
      }
    }
    catch (Exception paramString2)
    {
      while (true)
        paramString1 = null;
    }
  }

  private static void a(String paramString, HashMap<String, String> paramHashMap, HttpURLConnection paramHttpURLConnection)
    throws IOException
  {
    if ((("POST".equals(paramString)) || ("PUT".equals(paramString)) || ("DELETE".equals(paramString))) && (!a(paramHttpURLConnection, paramHashMap)))
      throw new IOException("failed to writeRequestParams");
  }

  public static void a(Closeable[] paramArrayOfCloseable)
  {
    if ((paramArrayOfCloseable != null) && (paramArrayOfCloseable.length > 0))
      try
      {
        int j = paramArrayOfCloseable.length;
        int i = 0;
        while (i < j)
        {
          Closeable localCloseable = paramArrayOfCloseable[i];
          if (localCloseable != null)
            localCloseable.close();
          i += 1;
        }
      }
      catch (Exception paramArrayOfCloseable)
      {
        a.a("HttpUtil", paramArrayOfCloseable);
      }
  }

  private static boolean a(int paramInt)
  {
    paramInt /= 100;
    return (paramInt == 4) || (paramInt == 5) || (paramInt == 6);
  }

  // ERROR //
  private static boolean a(HttpURLConnection paramHttpURLConnection, HashMap<String, String> paramHashMap)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnull +10 -> 13
    //   6: aload_1
    //   7: invokevirtual 251	java/util/HashMap:isEmpty	()Z
    //   10: ifeq +162 -> 172
    //   13: iconst_0
    //   14: istore_2
    //   15: aload_0
    //   16: invokevirtual 255	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   19: astore_0
    //   20: new 257	java/io/DataOutputStream
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 260	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   28: astore 4
    //   30: aload 4
    //   32: aload_1
    //   33: invokestatic 262	com/baidu/android/pushservice/f/c:a	(Ljava/util/HashMap;)Ljava/lang/String;
    //   36: ldc 151
    //   38: invokevirtual 266	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   41: invokevirtual 269	java/io/DataOutputStream:write	([B)V
    //   44: aload 4
    //   46: invokevirtual 272	java/io/DataOutputStream:flush	()V
    //   49: iconst_2
    //   50: anewarray 243	java/io/Closeable
    //   53: dup
    //   54: iconst_0
    //   55: aload 4
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: aload_0
    //   61: aastore
    //   62: invokestatic 274	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   65: iload_2
    //   66: ireturn
    //   67: astore 4
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_3
    //   72: astore_1
    //   73: aload 4
    //   75: astore_3
    //   76: ldc 48
    //   78: ldc_w 276
    //   81: aload_3
    //   82: invokestatic 55	com/baidu/android/pushservice/h/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   85: iconst_2
    //   86: anewarray 243	java/io/Closeable
    //   89: dup
    //   90: iconst_0
    //   91: aload_0
    //   92: aastore
    //   93: dup
    //   94: iconst_1
    //   95: aload_1
    //   96: aastore
    //   97: invokestatic 274	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   100: iconst_0
    //   101: ireturn
    //   102: astore_1
    //   103: aconst_null
    //   104: astore_3
    //   105: aconst_null
    //   106: astore_0
    //   107: iconst_2
    //   108: anewarray 243	java/io/Closeable
    //   111: dup
    //   112: iconst_0
    //   113: aload_3
    //   114: aastore
    //   115: dup
    //   116: iconst_1
    //   117: aload_0
    //   118: aastore
    //   119: invokestatic 274	com/baidu/android/pushservice/f/c:a	([Ljava/io/Closeable;)V
    //   122: aload_1
    //   123: athrow
    //   124: astore_1
    //   125: aconst_null
    //   126: astore_3
    //   127: goto -20 -> 107
    //   130: astore_1
    //   131: aload 4
    //   133: astore_3
    //   134: goto -27 -> 107
    //   137: astore_3
    //   138: aload_1
    //   139: astore 4
    //   141: aload_3
    //   142: astore_1
    //   143: aload_0
    //   144: astore_3
    //   145: aload 4
    //   147: astore_0
    //   148: goto -41 -> 107
    //   151: astore_3
    //   152: aconst_null
    //   153: astore 4
    //   155: aload_0
    //   156: astore_1
    //   157: aload 4
    //   159: astore_0
    //   160: goto -84 -> 76
    //   163: astore_3
    //   164: aload_0
    //   165: astore_1
    //   166: aload 4
    //   168: astore_0
    //   169: goto -93 -> 76
    //   172: iconst_1
    //   173: istore_2
    //   174: goto -159 -> 15
    //
    // Exception table:
    //   from	to	target	type
    //   15	20	67	java/lang/Exception
    //   15	20	102	finally
    //   20	30	124	finally
    //   30	49	130	finally
    //   76	85	137	finally
    //   20	30	151	java/lang/Exception
    //   30	49	163	java/lang/Exception
  }

  public static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    try
    {
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
      a.a("HttpUtil", localException);
      while (true)
      {
        return localByteArrayOutputStream.toByteArray();
        a(new Closeable[] { localByteArrayOutputStream, paramInputStream });
      }
    }
    finally
    {
      a(new Closeable[] { localByteArrayOutputStream, paramInputStream });
    }
  }

  private static boolean b(HttpURLConnection paramHttpURLConnection)
  {
    paramHttpURLConnection = paramHttpURLConnection.getHeaderField("Content-Encoding");
    return (!TextUtils.isEmpty(paramHttpURLConnection)) && (paramHttpURLConnection.contains("zip"));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.f.c
 * JD-Core Version:    0.6.2
 */