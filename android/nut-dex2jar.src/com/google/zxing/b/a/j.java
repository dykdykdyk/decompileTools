package com.google.zxing.b.a;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class j extends a
{
  private static final Pattern a = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

  static boolean a(String paramString)
  {
    return (paramString != null) && (a.matcher(paramString).matches()) && (paramString.indexOf('@') >= 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.j
 * JD-Core Version:    0.6.2
 */