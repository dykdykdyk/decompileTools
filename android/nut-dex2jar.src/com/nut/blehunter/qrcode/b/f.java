package com.nut.blehunter.qrcode.b;

import android.telephony.PhoneNumberUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class f
  implements b
{
  private static final Pattern a = Pattern.compile("[^0-9]+");

  public final CharSequence a(CharSequence paramCharSequence, int paramInt)
  {
    return a.matcher(PhoneNumberUtils.formatNumber(paramCharSequence.toString())).replaceAll("");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b.f
 * JD-Core Version:    0.6.2
 */