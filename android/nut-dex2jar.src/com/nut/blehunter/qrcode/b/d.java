package com.nut.blehunter.qrcode.b;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class d
  implements b
{
  private static final Pattern a = Pattern.compile("([\\\\:;])");
  private static final Pattern b = Pattern.compile("\\n");

  public final CharSequence a(CharSequence paramCharSequence, int paramInt)
  {
    return ":" + b.matcher(a.matcher(paramCharSequence).replaceAll("\\\\$1")).replaceAll("");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.d
 * JD-Core Version:    0.6.2
 */