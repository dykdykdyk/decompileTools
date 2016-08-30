package com.google.zxing.c.c;

final class a
  implements g
{
  public final void a(h paramh)
  {
    String str = paramh.a;
    int j = paramh.f;
    int n = str.length();
    if (j < n)
    {
      c1 = str.charAt(j);
      i = 0;
      while (true)
      {
        k = i;
        if (!j.a(c1))
          break;
        k = i;
        if (j >= n)
          break;
        k = i + 1;
        int m = j + 1;
        i = k;
        j = m;
        if (m < n)
        {
          c1 = str.charAt(m);
          i = k;
          j = m;
        }
      }
    }
    int k = 0;
    if (k >= 2)
    {
      c1 = paramh.a.charAt(paramh.f);
      char c2 = paramh.a.charAt(paramh.f + 1);
      if ((j.a(c1)) && (j.a(c2)))
      {
        paramh.a((char)((c1 - '0') * 10 + (c2 - '0') + 130));
        paramh.f += 2;
        return;
      }
      throw new IllegalArgumentException("not digits: " + c1 + c2);
    }
    char c1 = paramh.a();
    int i = j.a(paramh.a, paramh.f, 0);
    if (i != 0)
    {
      switch (i)
      {
      default:
        throw new IllegalStateException("Illegal mode: " + i);
      case 5:
        paramh.a('ç');
        paramh.g = 5;
        return;
      case 1:
        paramh.a('æ');
        paramh.g = 1;
        return;
      case 3:
        paramh.a('î');
        paramh.g = 3;
        return;
      case 2:
        paramh.a('ï');
        paramh.g = 2;
        return;
      case 4:
      }
      paramh.a('ð');
      paramh.g = 4;
      return;
    }
    if (j.b(c1))
    {
      paramh.a('ë');
      paramh.a((char)(c1 - '' + 1));
      paramh.f += 1;
      return;
    }
    paramh.a((char)(c1 + '\001'));
    paramh.f += 1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.c.a
 * JD-Core Version:    0.6.2
 */