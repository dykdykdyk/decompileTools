package com.google.zxing.c.c;

class c
  implements g
{
  private int a(h paramh, StringBuilder paramStringBuilder1, StringBuilder paramStringBuilder2, int paramInt)
  {
    int i = paramStringBuilder1.length();
    paramStringBuilder1.delete(i - paramInt, i);
    paramh.f -= 1;
    paramInt = a(paramh.a(), paramStringBuilder2);
    paramh.h = null;
    return paramInt;
  }

  static void a(h paramh, StringBuilder paramStringBuilder)
  {
    int i = paramStringBuilder.charAt(0) * 'ـ' + paramStringBuilder.charAt(1) * '(' + paramStringBuilder.charAt(2) + 1;
    paramh.a(new String(new char[] { (char)(i / 256), (char)(i % 256) }));
    paramStringBuilder.delete(0, 3);
  }

  public int a()
  {
    return 1;
  }

  int a(char paramChar, StringBuilder paramStringBuilder)
  {
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
    if ((paramChar >= 0) && (paramChar <= '\037'))
    {
      paramStringBuilder.append('\000');
      paramStringBuilder.append(paramChar);
      return 2;
    }
    if ((paramChar >= '!') && (paramChar <= '/'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - '!'));
      return 2;
    }
    if ((paramChar >= ':') && (paramChar <= '@'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - ':' + 15));
      return 2;
    }
    if ((paramChar >= '[') && (paramChar <= '_'))
    {
      paramStringBuilder.append('\001');
      paramStringBuilder.append((char)(paramChar - '[' + 22));
      return 2;
    }
    if ((paramChar >= '`') && (paramChar <= ''))
    {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - '`'));
      return 2;
    }
    if (paramChar >= '')
    {
      paramStringBuilder.append("\001\036");
      return a((char)(paramChar - ''), paramStringBuilder) + 2;
    }
    throw new IllegalArgumentException("Illegal character: " + paramChar);
  }

  public void a(h paramh)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    while (paramh.b())
    {
      char c = paramh.a();
      paramh.f += 1;
      int j = a(c, localStringBuilder1);
      int i = localStringBuilder1.length() / 3 * 2 + paramh.e.length();
      paramh.a(i);
      int k = paramh.h.b - i;
      if (!paramh.b())
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        i = j;
        if (localStringBuilder1.length() % 3 == 2)
          if (k >= 2)
          {
            i = j;
            if (k <= 2)
              break label131;
          }
        label131: for (i = a(paramh, localStringBuilder1, localStringBuilder2, j); (localStringBuilder1.length() % 3 == 1) && (((i <= 3) && (k != 1)) || (i > 3)); i = a(paramh, localStringBuilder1, localStringBuilder2, i));
      }
      if (localStringBuilder1.length() % 3 == 0)
      {
        i = j.a(paramh.a, paramh.f, a());
        if (i != a())
          paramh.g = i;
      }
    }
    b(paramh, localStringBuilder1);
  }

  void b(h paramh, StringBuilder paramStringBuilder)
  {
    int j = paramStringBuilder.length() / 3;
    int i = paramStringBuilder.length() % 3;
    j = j * 2 + paramh.e.length();
    paramh.a(j);
    j = paramh.h.b - j;
    if (i == 2)
    {
      paramStringBuilder.append('\000');
      while (paramStringBuilder.length() >= 3)
        a(paramh, paramStringBuilder);
      if (paramh.b())
        paramh.a('þ');
    }
    while (true)
    {
      paramh.g = 0;
      return;
      if ((j == 1) && (i == 1))
      {
        while (paramStringBuilder.length() >= 3)
          a(paramh, paramStringBuilder);
        if (paramh.b())
          paramh.a('þ');
        paramh.f -= 1;
      }
      else
      {
        if (i != 0)
          break;
        while (paramStringBuilder.length() >= 3)
          a(paramh, paramStringBuilder);
        if ((j > 0) || (paramh.b()))
          paramh.a('þ');
      }
    }
    throw new IllegalStateException("Unexpected case. Please report!");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.c.c
 * JD-Core Version:    0.6.2
 */