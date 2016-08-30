package okhttp3;

import a.f;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import okhttp3.internal.o;

public final class ae
{
  String a;
  String b = "";
  String c = "";
  String d;
  int e = -1;
  final List<String> f = new ArrayList();
  public List<String> g;
  String h;

  public ae()
  {
    this.f.add("");
  }

  static String a(String paramString, int paramInt1, int paramInt2)
  {
    int m = 0;
    paramString = ad.a(paramString, paramInt1, paramInt2, false);
    if (paramString.contains(":"))
    {
      if ((paramString.startsWith("[")) && (paramString.endsWith("]")));
      for (paramString = d(paramString, 1, paramString.length() - 1); paramString == null; paramString = d(paramString, 0, paramString.length()))
        return null;
      paramString = paramString.getAddress();
      if (paramString.length == 16)
      {
        paramInt2 = 0;
        int i = -1;
        paramInt1 = 0;
        int j;
        while (paramInt1 < paramString.length)
        {
          j = paramInt1;
          while ((j < 16) && (paramString[j] == 0) && (paramString[(j + 1)] == 0))
            j += 2;
          int n = j - paramInt1;
          int k = paramInt2;
          if (n > paramInt2)
          {
            k = n;
            i = paramInt1;
          }
          paramInt1 = j + 2;
          paramInt2 = k;
        }
        f localf = new f();
        paramInt1 = m;
        while (paramInt1 < paramString.length)
          if (paramInt1 == i)
          {
            localf.b(58);
            j = paramInt1 + paramInt2;
            paramInt1 = j;
            if (j == 16)
            {
              localf.b(58);
              paramInt1 = j;
            }
          }
          else
          {
            if (paramInt1 > 0)
              localf.b(58);
            localf.h((paramString[paramInt1] & 0xFF) << 8 | paramString[(paramInt1 + 1)] & 0xFF);
            paramInt1 += 2;
          }
        return localf.m();
      }
      throw new AssertionError();
    }
    return o.a(paramString);
  }

  private void b(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2)
      return;
    int i = paramString.charAt(paramInt1);
    label52: int j;
    label76: String str;
    label159: if ((i == 47) || (i == 92))
    {
      this.f.clear();
      this.f.add("");
      paramInt1 += 1;
      if (paramInt1 >= paramInt2)
        break label267;
      j = o.a(paramString, paramInt1, paramInt2, "/\\");
      if (j >= paramInt2)
        break label269;
      i = 1;
      str = ad.a(paramString, paramInt1, j, " \"<>^`{}|/\\?#", true, false, false, true);
      if ((!str.equals(".")) && (!str.equalsIgnoreCase("%2e")))
        break label275;
      paramInt1 = 1;
      label113: if (paramInt1 == 0)
      {
        if ((!str.equals("..")) && (!str.equalsIgnoreCase("%2e.")) && (!str.equalsIgnoreCase(".%2e")) && (!str.equalsIgnoreCase("%2e%2e")))
          break label280;
        paramInt1 = 1;
        if (paramInt1 == 0)
          break label300;
        if ((!((String)this.f.remove(this.f.size() - 1)).isEmpty()) || (this.f.isEmpty()))
          break label285;
        this.f.set(this.f.size() - 1, "");
      }
    }
    label385: 
    while (true)
    {
      paramInt1 = j;
      if (i != 0)
        paramInt1 = j + 1;
      break label52;
      this.f.set(this.f.size() - 1, "");
      break label52;
      label267: break;
      label269: i = 0;
      break label76;
      label275: paramInt1 = 0;
      break label113;
      label280: paramInt1 = 0;
      break label159;
      label285: this.f.add("");
      continue;
      label300: if (((String)this.f.get(this.f.size() - 1)).isEmpty())
        this.f.set(this.f.size() - 1, str);
      while (true)
      {
        if (i == 0)
          break label385;
        this.f.add("");
        break;
        this.f.add(str);
      }
    }
  }

  private static int c(String paramString, int paramInt1, int paramInt2)
  {
    int i;
    int j;
    if (paramInt1 < paramInt2)
    {
      i = paramInt1;
      j = paramInt1;
    }
    switch (paramString.charAt(paramInt1))
    {
    default:
      i = paramInt1;
    case '[':
      while (true)
      {
        paramInt1 = i + 1;
        break;
        do
        {
          paramInt1 = i + 1;
          i = paramInt1;
          if (paramInt1 >= paramInt2)
            break;
          i = paramInt1;
        }
        while (paramString.charAt(paramInt1) != ']');
        i = paramInt1;
      }
      j = paramInt2;
    case ':':
    }
    return j;
  }

  private static InetAddress d(String paramString, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[16];
    int j = 0;
    int i = -1;
    int k = -1;
    if (paramInt1 < paramInt2)
    {
      if (j == 16)
        return null;
      if ((paramInt1 + 2 <= paramInt2) && (paramString.regionMatches(paramInt1, "::", 0, 2)))
      {
        if (i != -1)
          return null;
        paramInt1 += 2;
        i = j + 2;
        if (paramInt1 != paramInt2)
          break label497;
        paramInt2 = i;
        paramInt1 = i;
      }
    }
    while (true)
    {
      if (paramInt1 != 16)
        if (paramInt2 == -1)
        {
          return null;
          if (j == 0)
            break label494;
          if (paramString.regionMatches(paramInt1, ":", 0, 1))
            paramInt1 += 1;
        }
      while (true)
      {
        int m = 0;
        k = paramInt1;
        while (true)
          if (k < paramInt2)
          {
            n = ad.a(paramString.charAt(k));
            if (n != -1)
            {
              m = (m << 4) + n;
              k += 1;
              continue;
              if (paramString.regionMatches(paramInt1, ".", 0, 1))
              {
                int i1 = j - 2;
                m = i1;
                if (k < paramInt2)
                  if (m == 16)
                    paramInt1 = 0;
                while (true)
                {
                  if (paramInt1 != 0)
                    break label360;
                  return null;
                  paramInt1 = k;
                  if (m != i1)
                  {
                    if (paramString.charAt(k) != '.')
                      paramInt1 = 0;
                    else
                      paramInt1 = k + 1;
                  }
                  else
                  {
                    n = 0;
                    k = paramInt1;
                    while (true)
                    {
                      if (k >= paramInt2)
                        break label312;
                      int i2 = paramString.charAt(k);
                      if ((i2 < 48) || (i2 > 57))
                        break label312;
                      if ((n == 0) && (paramInt1 != k))
                      {
                        paramInt1 = 0;
                        break;
                      }
                      n = n * 10 + i2 - 48;
                      if (n > 255)
                      {
                        paramInt1 = 0;
                        break;
                      }
                      k += 1;
                    }
                    label312: if (k - paramInt1 == 0)
                    {
                      paramInt1 = 0;
                    }
                    else
                    {
                      arrayOfByte[m] = ((byte)n);
                      m += 1;
                      break;
                      if (m != i1 + 4)
                        paramInt1 = 0;
                      else
                        paramInt1 = 1;
                    }
                  }
                }
                label360: paramInt1 = j + 2;
                paramInt2 = i;
                break;
              }
              return null;
            }
          }
        int n = k - paramInt1;
        if ((n == 0) || (n > 4))
          return null;
        n = j + 1;
        arrayOfByte[j] = ((byte)(m >>> 8 & 0xFF));
        arrayOfByte[n] = ((byte)(m & 0xFF));
        m = n + 1;
        j = k;
        k = paramInt1;
        paramInt1 = j;
        j = m;
        break;
        System.arraycopy(arrayOfByte, paramInt2, arrayOfByte, 16 - (paramInt1 - paramInt2), paramInt1 - paramInt2);
        Arrays.fill(arrayOfByte, paramInt2, 16 - paramInt1 + paramInt2, (byte)0);
        try
        {
          paramString = InetAddress.getByAddress(arrayOfByte);
          return paramString;
        }
        catch (UnknownHostException paramString)
        {
          throw new AssertionError();
        }
        label494: continue;
        label497: j = i;
      }
      paramInt1 = j;
      paramInt2 = i;
    }
  }

  private static int e(String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = Integer.parseInt(ad.a(paramString, paramInt1, paramInt2, "", false, false, false, true));
      if ((paramInt1 > 0) && (paramInt1 <= 65535))
        return paramInt1;
      return -1;
    }
    catch (NumberFormatException paramString)
    {
    }
    return -1;
  }

  final int a()
  {
    if (this.e != -1)
      return this.e;
    return ad.a(this.a);
  }

  final int a(ad paramad, String paramString)
  {
    int j = o.a(paramString, 0, paramString.length());
    int i1 = o.b(paramString, j, paramString.length());
    int i;
    if (i1 - j >= 2)
    {
      i = paramString.charAt(j);
      if (((i < 97) || (i > 122)) && ((i < 65) || (i > 90)))
      {
        i = -1;
        if (i == -1)
          break label290;
        if (!paramString.regionMatches(true, j, "https:", 0, 6))
          break label258;
        this.a = "https";
        i = j + 6;
      }
    }
    int n;
    int m;
    int k;
    while (true)
    {
      n = 0;
      m = 0;
      k = 0;
      j = i;
      while (j < i1)
      {
        int i2 = paramString.charAt(j);
        if ((i2 != 92) && (i2 != 47))
          break;
        k += 1;
        j += 1;
      }
      i = j + 1;
      while (true)
      {
        if (i >= i1)
          break label253;
        k = paramString.charAt(i);
        if (((k < 97) || (k > 122)) && ((k < 65) || (k > 90)) && ((k < 48) || (k > 57)) && (k != 43) && (k != 45) && (k != 46))
        {
          if (k == 58)
            break;
          i = -1;
          break;
        }
        i += 1;
      }
      label253: i = -1;
      break;
      label258: if (paramString.regionMatches(true, j, "http:", 0, 5))
      {
        this.a = "http";
        i = j + 5;
      }
      else
      {
        return af.c;
        label290: if (paramad == null)
          break label308;
        this.a = ad.a(paramad);
        i = j;
      }
    }
    label308: return af.b;
    if ((k >= 2) || (paramad == null) || (!ad.a(paramad).equals(this.a)))
    {
      k = i + k;
      j = n;
      i = m;
      n = o.a(paramString, k, i1, "@/\\?#");
      if (n != i1);
      for (m = paramString.charAt(n); ; m = -1)
        switch (m)
        {
        default:
          break;
        case -1:
        case 35:
        case 47:
        case 63:
        case 92:
          i = c(paramString, k, n);
          if (i + 1 >= n)
            break label680;
          this.d = a(paramString, k, i);
          this.e = e(paramString, i + 1, n);
          if (this.e != -1)
            break label702;
          return af.d;
        case 64:
        }
      if (i == 0)
      {
        m = o.a(paramString, k, n, ':');
        String str = ad.a(paramString, k, m, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
        paramad = str;
        if (j != 0)
          paramad = this.b + "%40" + str;
        this.b = paramad;
        if (m != n)
        {
          i = 1;
          this.c = ad.a(paramString, m + 1, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
        }
        j = i;
      }
      for (i = 1; ; i = k)
      {
        m = i;
        k = n + 1;
        i = j;
        j = m;
        break;
        this.c = (this.c + "%40" + ad.a(paramString, k, n, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true));
        k = j;
        j = i;
      }
      label680: this.d = a(paramString, k, i);
      this.e = ad.a(this.a);
      label702: if (this.d == null)
        return af.e;
      j = n;
      i = o.a(paramString, j, i1, "?#");
      b(paramString, j, i);
      if ((i >= i1) || (paramString.charAt(i) != '?'))
        break label917;
      j = o.a(paramString, i, i1, '#');
      this.g = ad.b(ad.a(paramString, i + 1, j, " \"'<>#", true, false, true, true));
      i = j;
    }
    label917: 
    while (true)
    {
      if ((i < i1) && (paramString.charAt(i) == '#'))
        this.h = ad.a(paramString, i + 1, i1, "", true, false, false, false);
      return af.a;
      this.b = paramad.b();
      this.c = paramad.c();
      this.d = ad.b(paramad);
      this.e = ad.c(paramad);
      this.f.clear();
      this.f.addAll(paramad.e());
      if (i != i1)
      {
        j = i;
        if (paramString.charAt(i) != '#')
          break;
      }
      a(paramad.f());
      j = i;
      break;
    }
  }

  public final ae a(String paramString)
  {
    if (paramString != null);
    for (paramString = ad.b(ad.a(paramString, " \"'<>#", true, false, true, true)); ; paramString = null)
    {
      this.g = paramString;
      return this;
    }
  }

  public final ad b()
  {
    if (this.a == null)
      throw new IllegalStateException("scheme == null");
    if (this.d == null)
      throw new IllegalStateException("host == null");
    return new ad(this, (byte)0);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.a);
    localStringBuilder.append("://");
    if ((!this.b.isEmpty()) || (!this.c.isEmpty()))
    {
      localStringBuilder.append(this.b);
      if (!this.c.isEmpty())
      {
        localStringBuilder.append(':');
        localStringBuilder.append(this.c);
      }
      localStringBuilder.append('@');
    }
    if (this.d.indexOf(':') != -1)
    {
      localStringBuilder.append('[');
      localStringBuilder.append(this.d);
      localStringBuilder.append(']');
    }
    while (true)
    {
      int i = a();
      if (i != ad.a(this.a))
      {
        localStringBuilder.append(':');
        localStringBuilder.append(i);
      }
      ad.a(localStringBuilder, this.f);
      if (this.g != null)
      {
        localStringBuilder.append('?');
        ad.b(localStringBuilder, this.g);
      }
      if (this.h != null)
      {
        localStringBuilder.append('#');
        localStringBuilder.append(this.h);
      }
      return localStringBuilder.toString();
      localStringBuilder.append(this.d);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     okhttp3.ae
 * JD-Core Version:    0.6.2
 */