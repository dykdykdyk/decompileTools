package com.tencent.mm.sdk.b;

import java.util.TimeZone;

public final class e
{
  private static final long[] G = { 300L, 200L, 300L, 200L };
  private static final TimeZone GMT = TimeZone.getTimeZone("GMT");
  private static final long[] H = { 300L, 50L, 300L, 50L };
  private static final char[] I = { 60, 62, 34, 39, 38, 13, 10, 32, 9 };
  private static final String[] J = { "&lt;", "&gt;", "&quot;", "&apos;", "&amp;", "&#x0D;", "&#x0A;", "&#x20;", "&#x09;" };

  public static boolean j(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.b.e
 * JD-Core Version:    0.6.2
 */