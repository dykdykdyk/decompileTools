package com.google.zxing.c.c;

final class m extends c
{
  public final int a()
  {
    return 2;
  }

  final int a(char paramChar, StringBuilder paramStringBuilder)
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
    if ((paramChar >= 'a') && (paramChar <= 'z'))
    {
      paramStringBuilder.append((char)(paramChar - 'a' + 14));
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
    if (paramChar == '`')
    {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - '`'));
      return 2;
    }
    if ((paramChar >= 'A') && (paramChar <= 'Z'))
    {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - 'A' + 1));
      return 2;
    }
    if ((paramChar >= '{') && (paramChar <= ''))
    {
      paramStringBuilder.append('\002');
      paramStringBuilder.append((char)(paramChar - '{' + 27));
      return 2;
    }
    if (paramChar >= '')
    {
      paramStringBuilder.append("\001\036");
      return a((char)(paramChar - ''), paramStringBuilder) + 2;
    }
    j.c(paramChar);
    return -1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.c.c.m
 * JD-Core Version:    0.6.2
 */