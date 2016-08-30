package com.google.i18n.phonenumbers;

import java.util.regex.Pattern;

public final class q
{
  private r<String, Pattern> a = new r();

  public final Pattern a(String paramString)
  {
    Pattern localPattern2 = (Pattern)this.a.a(paramString);
    Pattern localPattern1 = localPattern2;
    if (localPattern2 == null)
    {
      localPattern1 = Pattern.compile(paramString);
      this.a.a(paramString, localPattern1);
    }
    return localPattern1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.q
 * JD-Core Version:    0.6.2
 */