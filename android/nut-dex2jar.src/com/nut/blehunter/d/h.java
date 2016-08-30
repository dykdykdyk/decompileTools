package com.nut.blehunter.d;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class h
{
  public static boolean a(String paramString)
  {
    return Pattern.compile("^[A-Za-z0-9]{6,16}$").matcher(paramString).matches();
  }

  public static boolean b(String paramString)
  {
    return Pattern.compile("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}").matcher(paramString).matches();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.d.h
 * JD-Core Version:    0.6.2
 */