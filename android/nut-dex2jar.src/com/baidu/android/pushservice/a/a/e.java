package com.baidu.android.pushservice.a.a;

import android.net.Uri;

public final class e
{
  public static boolean a(Uri paramUri)
  {
    if (paramUri != null)
    {
      paramUri = paramUri.getScheme();
      if ((paramUri != null) && ((paramUri.equalsIgnoreCase("http")) || (paramUri.equalsIgnoreCase("https"))))
        return true;
    }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.a.a.e
 * JD-Core Version:    0.6.2
 */