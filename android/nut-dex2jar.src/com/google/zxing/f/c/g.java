package com.google.zxing.f.c;

import com.google.zxing.WriterException;
import com.google.zxing.common.d;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.Arrays;

public final class g
{
  private static final byte[] a;
  private static final byte[] b;
  private static final byte[] c;
  private static final byte[] d;
  private static final Charset e;

  static
  {
    int j = 0;
    a = new byte[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 38, 13, 9, 44, 58, 35, 45, 46, 36, 47, 43, 37, 42, 61, 94, 0, 32, 0, 0, 0 };
    b = new byte[] { 59, 60, 62, 64, 91, 92, 93, 95, 96, 126, 33, 13, 9, 44, 58, 10, 45, 46, 36, 47, 34, 124, 42, 40, 41, 63, 123, 125, 39, 0 };
    c = new byte[''];
    d = new byte[''];
    e = Charset.forName("ISO-8859-1");
    Arrays.fill(c, (byte)-1);
    int k;
    for (int i = 0; i < a.length; i = (byte)(i + 1))
    {
      k = a[i];
      if (k > 0)
        c[k] = i;
    }
    Arrays.fill(d, (byte)-1);
    for (i = j; i < b.length; i = (byte)(i + 1))
    {
      k = b[i];
      if (k > 0)
        d[k] = i;
    }
  }

  private static int a(CharSequence paramCharSequence, int paramInt)
  {
    int j = 0;
    int k = 0;
    int m = paramCharSequence.length();
    if (paramInt < m)
    {
      char c1 = paramCharSequence.charAt(paramInt);
      int i = paramInt;
      paramInt = k;
      while (true)
      {
        j = paramInt;
        if (!a(c1))
          break;
        j = paramInt;
        if (i >= m)
          break;
        j = paramInt + 1;
        k = i + 1;
        paramInt = j;
        i = k;
        if (k < m)
        {
          c1 = paramCharSequence.charAt(k);
          paramInt = j;
          i = k;
        }
      }
    }
    return j;
  }

  private static int a(CharSequence paramCharSequence, int paramInt1, int paramInt2, StringBuilder paramStringBuilder, int paramInt3)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2);
    int j = 0;
    int i;
    label73: 
    do
    {
      i = paramCharSequence.charAt(paramInt1 + j);
      switch (paramInt3)
      {
      default:
        if (!e(i))
          break label512;
        localStringBuilder.append((char)d[i]);
        k = j + 1;
        j = k;
      case 0:
      case 1:
      case 2:
      }
    }
    while (k < paramInt2);
    int k = localStringBuilder.length();
    paramInt2 = 0;
    paramInt1 = 0;
    label100: if (paramInt1 < k)
    {
      if (paramInt1 % 2 != 0)
      {
        j = 1;
        label115: if (j == 0)
          break label532;
        i = (char)(paramInt2 * 30 + localStringBuilder.charAt(paramInt1));
        paramStringBuilder.append(i);
      }
      for (paramInt2 = i; ; paramInt2 = localStringBuilder.charAt(paramInt1))
      {
        paramInt1 += 1;
        break label100;
        if (b(i))
        {
          if (i == 32)
          {
            localStringBuilder.append('\032');
            break label73;
          }
          localStringBuilder.append((char)(i - 65));
          break label73;
        }
        if (c(i))
        {
          localStringBuilder.append('\033');
          paramInt3 = 1;
          break;
        }
        if (d(i))
        {
          paramInt3 = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)d[i]);
        break label73;
        if (c(i))
        {
          if (i == 32)
          {
            localStringBuilder.append('\032');
            break label73;
          }
          localStringBuilder.append((char)(i - 97));
          break label73;
        }
        if (b(i))
        {
          localStringBuilder.append('\033');
          localStringBuilder.append((char)(i - 65));
          break label73;
        }
        if (d(i))
        {
          paramInt3 = 2;
          localStringBuilder.append('\034');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)d[i]);
        break label73;
        if (d(i))
        {
          localStringBuilder.append((char)c[i]);
          break label73;
        }
        if (b(i))
        {
          localStringBuilder.append('\034');
          paramInt3 = 0;
          break;
        }
        if (c(i))
        {
          localStringBuilder.append('\033');
          paramInt3 = 1;
          break;
        }
        if ((paramInt1 + j + 1 < paramInt2) && (e(paramCharSequence.charAt(paramInt1 + j + 1))))
        {
          paramInt3 = 3;
          localStringBuilder.append('\031');
          break;
        }
        localStringBuilder.append('\035');
        localStringBuilder.append((char)d[i]);
        break label73;
        localStringBuilder.append('\035');
        paramInt3 = 0;
        break;
        j = 0;
        break label115;
      }
    }
    label512: label532: if (k % 2 != 0)
      paramStringBuilder.append((char)(paramInt2 * 30 + 29));
    return paramInt3;
  }

  private static int a(String paramString, int paramInt, Charset paramCharset)
    throws WriterException
  {
    paramCharset = paramCharset.newEncoder();
    int m = paramString.length();
    int j = paramInt;
    while (j < m)
    {
      char c1 = paramString.charAt(j);
      int i = 0;
      int k;
      while (true)
      {
        k = i;
        if (i >= 13)
          break;
        k = i;
        if (!a(c1))
          break;
        i += 1;
        int n = j + i;
        k = i;
        if (n >= m)
          break;
        c1 = paramString.charAt(n);
      }
      if (k >= 13)
        return j - paramInt;
      c1 = paramString.charAt(j);
      if (!paramCharset.canEncode(c1))
        throw new WriterException("Non-encodable character detected: " + c1 + " (Unicode: " + c1 + ')');
      j += 1;
    }
    return j - paramInt;
  }

  public static String a(String paramString, c paramc, Charset paramCharset)
    throws WriterException
  {
    StringBuilder localStringBuilder = new StringBuilder(paramString.length());
    Charset localCharset;
    int i1;
    if (paramCharset == null)
    {
      localCharset = e;
      i1 = paramString.length();
      if (paramc != c.b)
        break label227;
      a(paramString, 0, i1, localStringBuilder, 0);
    }
    while (true)
    {
      return localStringBuilder.toString();
      localCharset = paramCharset;
      if (e.equals(paramCharset))
        break;
      d locald = d.a(paramCharset.name());
      localCharset = paramCharset;
      if (locald == null)
        break;
      i = locald.B[0];
      if ((i >= 0) && (i < 900))
      {
        localStringBuilder.append('Ο');
        localStringBuilder.append((char)i);
        localCharset = paramCharset;
        break;
      }
      if (i < 810900)
      {
        localStringBuilder.append('Ξ');
        localStringBuilder.append((char)(i / 900 - 1));
        localStringBuilder.append((char)(i % 900));
        localCharset = paramCharset;
        break;
      }
      if (i < 811800)
      {
        localStringBuilder.append('Ν');
        localStringBuilder.append((char)(810900 - i));
        localCharset = paramCharset;
        break;
      }
      throw new WriterException("ECI number not in valid range from 0..811799, but was " + i);
      label227: if (paramc == c.c)
      {
        paramString = paramString.getBytes(localCharset);
        a(paramString, paramString.length, 1, localStringBuilder);
      }
      else
      {
        if (paramc != c.d)
          break label281;
        localStringBuilder.append('Ά');
        a(paramString, 0, i1, localStringBuilder);
      }
    }
    label281: int i = 0;
    int j = 0;
    int k = 0;
    label289: int m;
    while (j < i1)
    {
      m = a(paramString, j);
      if (m >= 13)
      {
        localStringBuilder.append('Ά');
        k = 2;
        a(paramString, j, m, localStringBuilder);
        j += m;
        i = 0;
      }
      else
      {
        int n = b(paramString, j);
        if ((n >= 5) || (m == i1))
        {
          m = k;
          if (k != 0)
          {
            localStringBuilder.append('΄');
            i = 0;
            m = 0;
          }
          i = a(paramString, j, n, localStringBuilder, i);
          j += n;
          k = m;
        }
        else
        {
          n = a(paramString, j, localCharset);
          m = n;
          if (n == 0)
            m = 1;
          paramc = paramString.substring(j, j + m).getBytes(localCharset);
          if ((paramc.length != 1) || (k != 0))
            break label483;
          a(paramc, 1, 0, localStringBuilder);
        }
      }
    }
    while (true)
    {
      j = m + j;
      break label289;
      break;
      label483: a(paramc, paramc.length, k, localStringBuilder);
      i = 0;
      k = 1;
    }
  }

  private static void a(String paramString, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramInt2 / 3 + 1);
    BigInteger localBigInteger2 = BigInteger.valueOf(900L);
    BigInteger localBigInteger3 = BigInteger.valueOf(0L);
    int i = 0;
    while (i < paramInt2)
    {
      localStringBuilder.setLength(0);
      int k = Math.min(44, paramInt2 - i);
      Object localObject = new BigInteger("1" + paramString.substring(paramInt1 + i, paramInt1 + i + k));
      BigInteger localBigInteger1;
      do
      {
        localStringBuilder.append((char)((BigInteger)localObject).mod(localBigInteger2).intValue());
        localBigInteger1 = ((BigInteger)localObject).divide(localBigInteger2);
        localObject = localBigInteger1;
      }
      while (!localBigInteger1.equals(localBigInteger3));
      int j = localStringBuilder.length() - 1;
      while (j >= 0)
      {
        paramStringBuilder.append(localStringBuilder.charAt(j));
        j -= 1;
      }
      i += k;
    }
  }

  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, StringBuilder paramStringBuilder)
  {
    int i = 1;
    char[] arrayOfChar;
    if ((paramInt1 == 1) && (paramInt2 == 0))
    {
      paramStringBuilder.append('Α');
      if (paramInt1 >= 6)
      {
        arrayOfChar = new char[5];
        paramInt2 = 0;
      }
    }
    else
    {
      while (true)
      {
        i = paramInt2;
        if (paramInt1 + 0 - paramInt2 < 6)
          break label202;
        long l = 0L;
        i = 0;
        while (true)
          if (i < 6)
          {
            l = (l << 8) + (paramArrayOfByte[(paramInt2 + i)] & 0xFF);
            i += 1;
            continue;
            if (paramInt1 % 6 == 0);
            for (paramInt2 = i; ; paramInt2 = 0)
            {
              if (paramInt2 == 0)
                break label117;
              paramStringBuilder.append('Μ');
              break;
            }
            label117: paramStringBuilder.append('΅');
            break;
          }
        i = 0;
        while (i < 5)
        {
          arrayOfChar[i] = ((char)(int)(l % 900L));
          l /= 900L;
          i += 1;
        }
        i = 4;
        while (i >= 0)
        {
          paramStringBuilder.append(arrayOfChar[i]);
          i -= 1;
        }
        paramInt2 += 6;
      }
    }
    while (true)
      label202: if (i < paramInt1 + 0)
      {
        paramStringBuilder.append((char)(paramArrayOfByte[i] & 0xFF));
        i += 1;
      }
      else
      {
        return;
        i = 0;
      }
  }

  private static boolean a(char paramChar)
  {
    return (paramChar >= '0') && (paramChar <= '9');
  }

  private static int b(CharSequence paramCharSequence, int paramInt)
  {
    int m = paramCharSequence.length();
    int j = paramInt;
    int k = j;
    char c1;
    int i;
    if (j < m)
    {
      c1 = paramCharSequence.charAt(j);
      k = 0;
      i = j;
    }
    while (true)
      if ((k < 13) && (a(c1)) && (i < m))
      {
        k += 1;
        i += 1;
        if (i < m)
          c1 = paramCharSequence.charAt(i);
      }
      else
      {
        if (k >= 13)
          return i - paramInt - k;
        j = i;
        if (k > 0)
          break;
        j = paramCharSequence.charAt(i);
        if ((j == 9) || (j == 10) || (j == 13) || ((j >= 32) && (j <= 126)));
        for (j = 1; ; j = 0)
        {
          k = i;
          if (j == 0)
            break label175;
          j = i + 1;
          break;
        }
        label175: return k - paramInt;
      }
  }

  private static boolean b(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'A') && (paramChar <= 'Z'));
  }

  private static boolean c(char paramChar)
  {
    return (paramChar == ' ') || ((paramChar >= 'a') && (paramChar <= 'z'));
  }

  private static boolean d(char paramChar)
  {
    return c[paramChar] != -1;
  }

  private static boolean e(char paramChar)
  {
    return d[paramChar] != -1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.f.c.g
 * JD-Core Version:    0.6.2
 */