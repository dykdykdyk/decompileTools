package com.nut.blehunter.qrcode.b;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class e
  implements b
{
  private static final Pattern a = Pattern.compile(",");

  public final CharSequence a(CharSequence paramCharSequence, int paramInt)
  {
    return a.matcher(paramCharSequence).replaceAll("");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.e
 * JD-Core Version:    0.6.2
 */