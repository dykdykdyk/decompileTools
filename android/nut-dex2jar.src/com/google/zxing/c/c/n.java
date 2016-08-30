package com.google.zxing.c.c;

final class n extends c
{
  public final int a()
  {
    return 3;
  }

  final int a(char paramChar, StringBuilder paramStringBuilder)
  {
    if (paramChar == '\r')
    {
      paramStringBuilder.append('\000');
      return 1;
    }
    if (paramChar == '*')
    {
      paramStringBuilder.append('\001');
      return 1;
    }
    if (paramChar == '>')
    {
      paramStringBuilder.append('\002');
      return 1;
    }
    if (paramChar == ' ')
    {
      paramStringBuilder.append('\003');
      return 1;
    }
    if ((paramChar >= '0') && (paramChar <= '9'))
    {
      paramStringBuilder.append((char)(paramChar - '0' + 4));
      return 1;
    }
    if ((paramChar >= 'A') && (paramChar <= 'Z'))
    {
      paramStringBuilder.append((char)(paramChar - 'A' + 14));
      return 1;
    }
    j.c(paramChar);
    return 1;
  }

  public final void a(h paramh)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (paramh.b())
    {
      char c = paramh.a();
      paramh.f += 1;
      a(c, localStringBuilder);
      if (localStringBuilder.length() % 3 == 0)
      {
        a(paramh, localStringBuilder);
        int i = j.a(paramh.a, paramh.f, 3);
        if (i != 3)
          paramh.g = i;
      }
    }
    b(paramh, localStringBuilder);
  }

  final void b(h paramh, StringBuilder paramStringBuilder)
  {
    paramh.d();
    int i = paramh.h.b - paramh.e.length();
    int j = paramStringBuilder.length();
    paramh.f -= j;
    if ((paramh.c() > 1) || (i > 1) || (paramh.c() != i))
      paramh.a('þ');
    if (paramh.g < 0)
      paramh.g = 0;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.c.n
 * JD-Core Version:    0.6.2
 */