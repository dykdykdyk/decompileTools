package android.support.v4.app;

import android.content.Context;
import android.os.Build.VERSION;

public final class f
{
  private static final h a = new h((byte)0);

  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      a = new g((byte)0);
      return;
    }
  }

  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    return a.a(paramContext, paramString1, paramString2);
  }

  public static String a(String paramString)
  {
    return a.a(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.f
 * JD-Core Version:    0.6.2
 */