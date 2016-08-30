package com.google.android.gms.common.b;

import com.google.android.gms.common.internal.u;
import java.util.regex.Pattern;

public final class g
{
  private static final Pattern a = Pattern.compile("\\$\\{(.*?)\\}");

  public static boolean a(String paramString)
  {
    return (paramString == null) || (u.a.a(paramString));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.b.g
 * JD-Core Version:    0.6.2
 */