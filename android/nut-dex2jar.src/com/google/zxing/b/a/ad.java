package com.google.zxing.b.a;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ad extends u
{
  private static final Pattern a = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");
  private static final Pattern b = Pattern.compile("([a-zA-Z0-9\\-]+\\.)+[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

  static boolean a(String paramString)
  {
    if (paramString.contains(" "));
    do
    {
      return false;
      Matcher localMatcher = a.matcher(paramString);
      if ((localMatcher.find()) && (localMatcher.start() == 0))
        return true;
      paramString = b.matcher(paramString);
    }
    while ((!paramString.find()) || (paramString.start() != 0));
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.zxing.b.a.ad
 * JD-Core Version:    0.6.2
 */