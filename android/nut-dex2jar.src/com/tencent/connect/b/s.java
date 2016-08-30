package com.tencent.connect.b;

import java.util.HashMap;

public class s
{
  public static s a;
  private static int e;
  public HashMap<String, t> b = new HashMap();
  public final String c = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";

  static
  {
    if (!s.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      d = bool;
      e = 0;
      return;
    }
  }

  public static s a()
  {
    if (a == null)
      a = new s();
    return a;
  }

  public static String b()
  {
    int j = (int)Math.ceil(Math.random() * 20.0D + 3.0D);
    char[] arrayOfChar = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
    int k = arrayOfChar.length;
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < j)
    {
      localStringBuffer.append(arrayOfChar[((int)(Math.random() * k))]);
      i += 1;
    }
    return localStringBuffer.toString();
  }

  public final String a(t paramt)
  {
    int i = e + 1;
    e = i;
    try
    {
      this.b.put(String.valueOf(i), paramt);
      return String.valueOf(i);
    }
    catch (Throwable paramt)
    {
      while (true)
        paramt.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.s
 * JD-Core Version:    0.6.2
 */