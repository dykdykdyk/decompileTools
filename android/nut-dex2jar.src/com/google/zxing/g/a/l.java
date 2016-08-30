package com.google.zxing.g.a;

import com.google.zxing.FormatException;
import com.google.zxing.common.c;
import com.google.zxing.common.e;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

final class l
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 32, 36, 37, 42, 43, 45, 46, 47, 58 };

  private static char a(int paramInt)
    throws FormatException
  {
    if (paramInt >= a.length)
      throw FormatException.a();
    return a[paramInt];
  }

  static e a(byte[] paramArrayOfByte, r paramr, n paramn, Map<com.google.zxing.d, ?> paramMap)
    throws FormatException
  {
    c localc = new c(paramArrayOfByte);
    StringBuilder localStringBuilder = new StringBuilder(50);
    ArrayList localArrayList = new ArrayList(1);
    com.google.zxing.common.d locald = null;
    int i = -1;
    int j = -1;
    boolean bool = false;
    while (true)
    {
      p localp1;
      try
      {
        if (localc.a() < 4)
        {
          localp1 = p.a;
          if (localp1 == p.a)
            break label530;
          if (localp1 == p.h)
            break label560;
          if (localp1 == p.i)
          {
            break label560;
            p localp2 = p.a;
            if (localp1 != localp2)
              break label545;
            paramMap = localStringBuilder.toString();
            if (!localArrayList.isEmpty())
              break label516;
            paramr = null;
            if (paramn != null)
              break label522;
            paramn = null;
            return new e(paramArrayOfByte, paramMap, paramr, paramn, i, j);
          }
        }
        else
        {
          localp1 = p.a(localc.a(4));
          continue;
        }
        if (localp1 != p.d)
          break label198;
        if (localc.a() < 16)
          throw FormatException.a();
      }
      catch (IllegalArgumentException paramArrayOfByte)
      {
        throw FormatException.a();
      }
      i = localc.a(8);
      j = localc.a(8);
      continue;
      label198: if (localp1 == p.f)
      {
        k = localc.a(8);
        if ((k & 0x80) == 0)
          k &= 127;
        while (true)
        {
          locald = com.google.zxing.common.d.a(k);
          if (locald != null)
            break label578;
          throw FormatException.a();
          if ((k & 0xC0) == 128)
          {
            k = (k & 0x3F) << 8 | localc.a(8);
          }
          else
          {
            if ((k & 0xE0) != 192)
              break;
            k = (k & 0x1F) << 16 | localc.a(16);
          }
        }
        throw FormatException.a();
      }
      if (localp1 == p.j)
      {
        k = localc.a(4);
        int m = localc.a(localp1.a(paramr));
        if (k == 1)
          a(localc, localStringBuilder, m);
      }
      else
      {
        k = localc.a(localp1.a(paramr));
        if (localp1 == p.b)
        {
          c(localc, localStringBuilder, k);
          k = i;
          i = j;
          j = k;
          continue;
        }
        if (localp1 == p.c)
        {
          a(localc, localStringBuilder, k, bool);
          k = i;
          i = j;
          j = k;
          continue;
        }
        if (localp1 == p.e)
        {
          a(localc, localStringBuilder, k, locald, localArrayList, paramMap);
          k = i;
          i = j;
          j = k;
          continue;
        }
        if (localp1 == p.g)
        {
          b(localc, localStringBuilder, k);
          k = i;
          i = j;
          j = k;
          continue;
        }
        throw FormatException.a();
        label516: paramr = localArrayList;
        continue;
        label522: paramn = paramn.toString();
        continue;
        label530: k = i;
        i = j;
        j = k;
        continue;
        label545: k = i;
        i = j;
        j = k;
        continue;
        label560: bool = true;
        k = i;
        i = j;
        j = k;
        continue;
        label578: k = i;
        i = j;
        j = k;
        continue;
      }
      int k = i;
      i = j;
      j = k;
    }
  }

  private static void a(c paramc, StringBuilder paramStringBuilder, int paramInt)
    throws FormatException
  {
    if (paramInt * 13 > paramc.a())
      throw FormatException.a();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int j = 0;
    int i = paramInt;
    paramInt = j;
    if (i > 0)
    {
      j = paramc.a(13);
      j = j % 96 | j / 96 << 8;
      if (j < 959)
        j += 41377;
      while (true)
      {
        arrayOfByte[paramInt] = ((byte)(j >> 8 & 0xFF));
        arrayOfByte[(paramInt + 1)] = ((byte)(j & 0xFF));
        i -= 1;
        paramInt += 2;
        break;
        j += 42657;
      }
    }
    try
    {
      paramStringBuilder.append(new String(arrayOfByte, "GB2312"));
      return;
    }
    catch (UnsupportedEncodingException paramc)
    {
    }
    throw FormatException.a();
  }

  private static void a(c paramc, StringBuilder paramStringBuilder, int paramInt, com.google.zxing.common.d paramd, Collection<byte[]> paramCollection, Map<com.google.zxing.d, ?> paramMap)
    throws FormatException
  {
    if (paramInt * 8 > paramc.a())
      throw FormatException.a();
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      arrayOfByte[i] = ((byte)paramc.a(8));
      i += 1;
    }
    if (paramd == null)
      paramc = com.google.zxing.common.l.a(arrayOfByte, paramMap);
    try
    {
      while (true)
      {
        paramStringBuilder.append(new String(arrayOfByte, paramc));
        paramCollection.add(arrayOfByte);
        return;
        paramc = paramd.name();
      }
    }
    catch (UnsupportedEncodingException paramc)
    {
    }
    throw FormatException.a();
  }

  private static void a(c paramc, StringBuilder paramStringBuilder, int paramInt, boolean paramBoolean)
    throws FormatException
  {
    int i = paramStringBuilder.length();
    while (paramInt > 1)
    {
      if (paramc.a() < 11)
        throw FormatException.a();
      int j = paramc.a(11);
      paramStringBuilder.append(a(j / 45));
      paramStringBuilder.append(a(j % 45));
      paramInt -= 2;
    }
    if (paramInt == 1)
    {
      if (paramc.a() < 6)
        throw FormatException.a();
      paramStringBuilder.append(a(paramc.a(6)));
    }
    if (paramBoolean)
    {
      paramInt = i;
      if (paramInt < paramStringBuilder.length())
      {
        if (paramStringBuilder.charAt(paramInt) == '%')
        {
          if ((paramInt >= paramStringBuilder.length() - 1) || (paramStringBuilder.charAt(paramInt + 1) != '%'))
            break label159;
          paramStringBuilder.deleteCharAt(paramInt + 1);
        }
        while (true)
        {
          paramInt += 1;
          break;
          label159: paramStringBuilder.setCharAt(paramInt, '\035');
        }
      }
    }
  }

  private static void b(c paramc, StringBuilder paramStringBuilder, int paramInt)
    throws FormatException
  {
    if (paramInt * 13 > paramc.a())
      throw FormatException.a();
    byte[] arrayOfByte = new byte[paramInt * 2];
    int j = 0;
    int i = paramInt;
    paramInt = j;
    if (i > 0)
    {
      j = paramc.a(13);
      j = j % 192 | j / 192 << 8;
      if (j < 7936)
        j += 33088;
      while (true)
      {
        arrayOfByte[paramInt] = ((byte)(j >> 8));
        arrayOfByte[(paramInt + 1)] = ((byte)j);
        i -= 1;
        paramInt += 2;
        break;
        j += 49472;
      }
    }
    try
    {
      paramStringBuilder.append(new String(arrayOfByte, "SJIS"));
      return;
    }
    catch (UnsupportedEncodingException paramc)
    {
    }
    throw FormatException.a();
  }

  private static void c(c paramc, StringBuilder paramStringBuilder, int paramInt)
    throws FormatException
  {
    while (paramInt >= 3)
    {
      if (paramc.a() < 10)
        throw FormatException.a();
      int i = paramc.a(10);
      if (i >= 1000)
        throw FormatException.a();
      paramStringBuilder.append(a(i / 100));
      paramStringBuilder.append(a(i / 10 % 10));
      paramStringBuilder.append(a(i % 10));
      paramInt -= 3;
    }
    if (paramInt == 2)
    {
      if (paramc.a() < 7)
        throw FormatException.a();
      paramInt = paramc.a(7);
      if (paramInt >= 100)
        throw FormatException.a();
      paramStringBuilder.append(a(paramInt / 10));
      paramStringBuilder.append(a(paramInt % 10));
    }
    while (paramInt != 1)
      return;
    if (paramc.a() < 4)
      throw FormatException.a();
    paramInt = paramc.a(4);
    if (paramInt >= 10)
      throw FormatException.a();
    paramStringBuilder.append(a(paramInt));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.g.a.l
 * JD-Core Version:    0.6.2
 */