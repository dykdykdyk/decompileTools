package okhttp3.internal;

import a.aa;
import a.ab;
import a.f;
import a.k;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.IDN;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.ad;

public final class o
{
  public static final byte[] a = new byte[0];
  public static final String[] b = new String[0];
  public static final Charset c = Charset.forName("UTF-8");
  public static final TimeZone d = TimeZone.getTimeZone("GMT");
  private static final Pattern e = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

  public static int a(String paramString, int paramInt1, int paramInt2)
  {
    while (true)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2);
      switch (paramString.charAt(paramInt1))
      {
      default:
        i = paramInt1;
        return i;
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
      }
      paramInt1 += 1;
    }
  }

  public static int a(String paramString, int paramInt1, int paramInt2, char paramChar)
  {
    while (true)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2)
      {
        if (paramString.charAt(paramInt1) == paramChar)
          i = paramInt1;
      }
      else
        return i;
      paramInt1 += 1;
    }
  }

  public static int a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    while (true)
    {
      int i = paramInt2;
      if (paramInt1 < paramInt2)
      {
        if (paramString2.indexOf(paramString1.charAt(paramInt1)) != -1)
          i = paramInt1;
      }
      else
        return i;
      paramInt1 += 1;
    }
  }

  public static k a(k paramk)
  {
    try
    {
      paramk = k.a(MessageDigest.getInstance("SHA-1").digest(paramk.d()));
      return paramk;
    }
    catch (NoSuchAlgorithmException paramk)
    {
    }
    throw new AssertionError(paramk);
  }

  public static String a(String paramString)
  {
    int k = 1;
    int i;
    int j;
    try
    {
      paramString = IDN.toASCII(paramString).toLowerCase(Locale.US);
      if (paramString.isEmpty())
      {
        return null;
        while (i < paramString.length())
        {
          int m = paramString.charAt(i);
          j = k;
          if (m <= 31)
            break label95;
          if (m >= 127)
          {
            j = k;
            break label95;
          }
          m = " #%/:?@[\\]".indexOf(m);
          j = k;
          if (m != -1)
            break label95;
          i += 1;
        }
        j = 0;
      }
    }
    catch (IllegalArgumentException paramString)
    {
    }
    label95: 
    do
    {
      return null;
      i = 0;
      break;
    }
    while (j != 0);
    return paramString;
  }

  public static String a(ad paramad, boolean paramBoolean)
  {
    if (paramad.b.contains(":"));
    for (String str1 = "[" + paramad.b + "]"; ; str1 = paramad.b)
    {
      String str2;
      if (!paramBoolean)
      {
        str2 = str1;
        if (paramad.c == ad.a(paramad.a));
      }
      else
      {
        str2 = str1 + ":" + paramad.c;
      }
      return str2;
    }
  }

  public static <T> List<T> a(List<T> paramList)
  {
    return Collections.unmodifiableList(new ArrayList(paramList));
  }

  public static <T> List<T> a(T[] paramArrayOfT)
  {
    return Collections.unmodifiableList(Arrays.asList((Object[])paramArrayOfT.clone()));
  }

  public static ThreadFactory a(String paramString, boolean paramBoolean)
  {
    return new p(paramString, paramBoolean);
  }

  public static void a(long paramLong1, long paramLong2, long paramLong3)
  {
    if (((paramLong2 | paramLong3) < 0L) || (paramLong2 > paramLong1) || (paramLong1 - paramLong2 < paramLong3))
      throw new ArrayIndexOutOfBoundsException();
  }

  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException paramCloseable)
    {
      throw paramCloseable;
    }
    catch (Exception paramCloseable)
    {
    }
  }

  public static void a(Closeable paramCloseable1, Closeable paramCloseable2)
    throws IOException
  {
    Object localObject = null;
    try
    {
      paramCloseable1.close();
      paramCloseable1 = localObject;
      try
      {
        label10: paramCloseable2.close();
        paramCloseable2 = paramCloseable1;
        if (paramCloseable2 == null)
          return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          paramCloseable2 = paramCloseable1;
          if (paramCloseable1 == null)
            paramCloseable2 = localThrowable;
        }
        if ((paramCloseable2 instanceof IOException))
          throw ((IOException)paramCloseable2);
        if ((paramCloseable2 instanceof RuntimeException))
          throw ((RuntimeException)paramCloseable2);
        if ((paramCloseable2 instanceof Error))
          throw ((Error)paramCloseable2);
        throw new AssertionError(paramCloseable2);
      }
    }
    catch (Throwable paramCloseable1)
    {
      break label10;
    }
  }

  public static void a(Socket paramSocket)
  {
    if (paramSocket != null);
    try
    {
      paramSocket.close();
      return;
    }
    catch (AssertionError paramSocket)
    {
      while (a(paramSocket));
      throw paramSocket;
    }
    catch (RuntimeException paramSocket)
    {
      throw paramSocket;
    }
    catch (Exception paramSocket)
    {
    }
  }

  public static boolean a(aa paramaa, int paramInt, TimeUnit paramTimeUnit)
    throws IOException
  {
    long l2 = System.nanoTime();
    long l1;
    if (paramaa.timeout().l_())
      l1 = paramaa.timeout().c() - l2;
    while (true)
    {
      paramaa.timeout().a(Math.min(l1, paramTimeUnit.toNanos(paramInt)) + l2);
      try
      {
        paramTimeUnit = new f();
        while (paramaa.read(paramTimeUnit, 2048L) != -1L)
          paramTimeUnit.p();
      }
      catch (InterruptedIOException paramTimeUnit)
      {
        if (l1 == 9223372036854775807L)
          paramaa.timeout().m_();
        while (true)
        {
          return false;
          l1 = 9223372036854775807L;
          break;
          if (l1 == 9223372036854775807L)
            paramaa.timeout().m_();
          while (true)
          {
            return true;
            paramaa.timeout().a(l1 + l2);
          }
          paramaa.timeout().a(l1 + l2);
        }
      }
      finally
      {
        if (l1 != 9223372036854775807L)
          break label188;
      }
    }
    paramaa.timeout().m_();
    while (true)
    {
      throw paramTimeUnit;
      label188: paramaa.timeout().a(l1 + l2);
    }
  }

  public static boolean a(aa paramaa, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = a(paramaa, 100, paramTimeUnit);
      return bool;
    }
    catch (IOException paramaa)
    {
    }
    return false;
  }

  public static boolean a(AssertionError paramAssertionError)
  {
    return (paramAssertionError.getCause() != null) && (paramAssertionError.getMessage() != null) && (paramAssertionError.getMessage().contains("getsockname failed"));
  }

  public static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }

  public static boolean a(String[] paramArrayOfString, String paramString)
  {
    return Arrays.asList(paramArrayOfString).contains(paramString);
  }

  public static <T> T[] a(Class<T> paramClass, T[] paramArrayOfT1, T[] paramArrayOfT2)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfT1.length;
    int i = 0;
    if (i < k)
    {
      T ? = paramArrayOfT1[i];
      int m = paramArrayOfT2.length;
      int j = 0;
      while (true)
      {
        if (j < m)
        {
          T ? = paramArrayOfT2[j];
          if (?.equals(?))
            localArrayList.add(?);
        }
        else
        {
          i += 1;
          break;
        }
        j += 1;
      }
    }
    return localArrayList.toArray((Object[])Array.newInstance(paramClass, localArrayList.size()));
  }

  public static int b(String paramString, int paramInt1, int paramInt2)
  {
    paramInt2 -= 1;
    while (true)
    {
      int i = paramInt1;
      if (paramInt2 >= paramInt1);
      switch (paramString.charAt(paramInt2))
      {
      default:
        i = paramInt2 + 1;
        return i;
      case '\t':
      case '\n':
      case '\f':
      case '\r':
      case ' ':
      }
      paramInt2 -= 1;
    }
  }

  public static k b(k paramk)
  {
    try
    {
      paramk = k.a(MessageDigest.getInstance("SHA-256").digest(paramk.d()));
      return paramk;
    }
    catch (NoSuchAlgorithmException paramk)
    {
    }
    throw new AssertionError(paramk);
  }

  public static boolean b(String paramString)
  {
    return e.matcher(paramString).matches();
  }

  public static String[] b(String[] paramArrayOfString, String paramString)
  {
    String[] arrayOfString = new String[paramArrayOfString.length + 1];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramArrayOfString.length);
    arrayOfString[(arrayOfString.length - 1)] = paramString;
    return arrayOfString;
  }

  public static String c(String paramString, int paramInt1, int paramInt2)
  {
    paramInt1 = a(paramString, paramInt1, paramInt2);
    return paramString.substring(paramInt1, b(paramString, paramInt1, paramInt2));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.internal.o
 * JD-Core Version:    0.6.2
 */