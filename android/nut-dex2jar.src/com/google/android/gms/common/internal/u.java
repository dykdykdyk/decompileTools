package com.google.android.gms.common.internal;

import java.util.Arrays;

public abstract class u
{
  public static final u a = b("\t\n\013\f\r     　 ᠎ ").a(a(' ', ' '));
  public static final u b = b("\t\n\013\f\r     　").a(a(' ', ' ')).a(a(' ', ' '));
  public static final u c = a('\000', '');
  public static final u d = localu;
  public static final u e = a('\t', '\r').a(a('\034', ' ')).a(b(' ')).a(b('᠎')).a(a(' ', ' ')).a(a(' ', '​')).a(a(' ', ' ')).a(b(' ')).a(b('　'));
  public static final u f = new v();
  public static final u g = new ab();
  public static final u h = new ac();
  public static final u i = new ad();
  public static final u j = new ae();
  public static final u k = a('\000', '\037').a(a('', ''));
  public static final u l = a('\000', ' ').a(a('', ' ')).a(b('­')).a(a('؀', '؃')).a(b("۝܏ ឴឵᠎")).a(a(' ', '‏')).a(a(' ', ' ')).a(a(' ', '⁤')).a(a('⁪', '⁯')).a(b('　')).a(a(55296, 63743)).a(b("﻿￹￺￻"));
  public static final u m = a('\000', 'ӹ').a(b('־')).a(a('א', 'ת')).a(b('׳')).a(b('״')).a(a('؀', 'ۿ')).a(a('ݐ', 'ݿ')).a(a('฀', '๿')).a(a('Ḁ', '₯')).a(a('℀', '℺')).a(a(64336, 65023)).a(a(65136, 65279)).a(a(65377, 65500));
  public static final u n = new af();
  public static final u o = new w();

  static
  {
    u localu = a('0', '9');
    char[] arrayOfChar = "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray();
    int i2 = arrayOfChar.length;
    int i1 = 0;
    while (i1 < i2)
    {
      char c1 = arrayOfChar[i1];
      localu = localu.a(a(c1, (char)(c1 + '\t')));
      i1 += 1;
    }
  }

  private static u a(char paramChar1, char paramChar2)
  {
    if (paramChar2 >= paramChar1);
    for (boolean bool = true; ; bool = false)
    {
      b.a(bool);
      return new aa(paramChar1, paramChar2);
    }
  }

  private static u b(char paramChar)
  {
    return new x(paramChar);
  }

  private static u b(CharSequence paramCharSequence)
  {
    switch (paramCharSequence.length())
    {
    default:
      paramCharSequence = paramCharSequence.toString().toCharArray();
      Arrays.sort(paramCharSequence);
      return new z(paramCharSequence);
    case 0:
      return o;
    case 1:
      return b(paramCharSequence.charAt(0));
    case 2:
    }
    return new y(paramCharSequence.charAt(0), paramCharSequence.charAt(1));
  }

  public u a(u paramu)
  {
    return new ag(Arrays.asList(new u[] { this, (u)b.a(paramu) }));
  }

  public abstract boolean a(char paramChar);

  public boolean a(CharSequence paramCharSequence)
  {
    int i1 = paramCharSequence.length() - 1;
    while (i1 >= 0)
    {
      if (!a(paramCharSequence.charAt(i1)))
        return false;
      i1 -= 1;
    }
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.u
 * JD-Core Version:    0.6.2
 */