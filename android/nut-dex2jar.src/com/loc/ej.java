package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

public final class ej
{
  private static final char[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] b = new byte[''];

  static
  {
    int i = 0;
    while (i < 128)
    {
      b[i] = -1;
      i += 1;
    }
    i = 65;
    while (i <= 90)
    {
      b[i] = ((byte)(i - 65));
      i += 1;
    }
    i = 97;
    while (i <= 122)
    {
      b[i] = ((byte)(i - 97 + 26));
      i += 1;
    }
    i = 48;
    while (i <= 57)
    {
      b[i] = ((byte)(i - 48 + 52));
      i += 1;
    }
    b[43] = 62;
    b[47] = 63;
  }

  public static String a(byte[] paramArrayOfByte)
  {
    while (true)
    {
      StringBuffer localStringBuffer;
      int n;
      int k;
      try
      {
        localStringBuffer = new StringBuffer();
        int j = paramArrayOfByte.length;
        i = 0;
        if (i < j)
        {
          n = i + 1;
          k = paramArrayOfByte[i] & 0xFF;
          if (n == j)
          {
            localStringBuffer.append(a[(k >>> 2)]);
            localStringBuffer.append(a[((k & 0x3) << 4)]);
            localStringBuffer.append("==");
          }
        }
        else
        {
          return localStringBuffer.toString();
        }
        m = n + 1;
        n = paramArrayOfByte[n] & 0xFF;
        if (m == j)
        {
          localStringBuffer.append(a[(k >>> 2)]);
          localStringBuffer.append(a[((k & 0x3) << 4 | (n & 0xF0) >>> 4)]);
          localStringBuffer.append(a[((n & 0xF) << 2)]);
          localStringBuffer.append("=");
          continue;
        }
      }
      catch (Throwable paramArrayOfByte)
      {
        paramArrayOfByte.printStackTrace();
        return null;
      }
      int i = m + 1;
      int m = paramArrayOfByte[m] & 0xFF;
      localStringBuffer.append(a[(k >>> 2)]);
      localStringBuffer.append(a[((k & 0x3) << 4 | (n & 0xF0) >>> 4)]);
      localStringBuffer.append(a[((n & 0xF) << 2 | (m & 0xC0) >>> 6)]);
      localStringBuffer.append(a[(m & 0x3F)]);
    }
  }

  public static byte[] a(String paramString)
  {
    int i = 0;
    if (paramString == null)
      return new byte[0];
    try
    {
      Object localObject = paramString.getBytes("UTF-8");
      paramString = (String)localObject;
      k = paramString.length;
      localObject = new ByteArrayOutputStream(k);
      if (i < k)
      {
        j = i;
        byte[] arrayOfByte = b;
        i = j + 1;
        n = arrayOfByte[paramString[j]];
        if ((i < k) && (n == -1))
          break label285;
        if (n != -1)
        {
          j = i;
          arrayOfByte = b;
          i = j + 1;
          m = arrayOfByte[paramString[j]];
          if ((i < k) && (m == -1))
            break label280;
          if (m != -1)
          {
            ((ByteArrayOutputStream)localObject).write(n << 2 | (m & 0x30) >>> 4);
            j = i;
            i = j + 1;
            j = paramString[j];
            if (j == 61)
              return ((ByteArrayOutputStream)localObject).toByteArray();
          }
        }
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
      {
        int k;
        int m;
        paramString = paramString.getBytes();
        continue;
        int n = b[j];
        if ((i >= k) || (n != -1))
        {
          if (n != -1)
            localUnsupportedEncodingException.write((m & 0xF) << 4 | (n & 0x3C) >>> 2);
          for (j = i; ; j = i)
          {
            i = j + 1;
            j = paramString[j];
            if (j == 61)
              return localUnsupportedEncodingException.toByteArray();
            j = b[j];
            if ((i >= k) || (j != -1))
            {
              if (j != -1)
              {
                localUnsupportedEncodingException.write(j | (n & 0x3) << 6);
                break;
              }
              return localUnsupportedEncodingException.toByteArray();
            }
          }
        }
        int j = i;
        continue;
        label280: j = i;
        continue;
        label285: j = i;
      }
    }
  }

  static byte[] a(byte[] paramArrayOfByte, Key paramKey)
    throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramKey);
    return localCipher.doFinal(paramArrayOfByte);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ej
 * JD-Core Version:    0.6.2
 */