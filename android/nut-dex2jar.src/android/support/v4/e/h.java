package android.support.v4.e;

import android.os.Build.VERSION;
import java.util.Locale;

public final class h
{
  public static final Locale a;
  private static final i b;
  private static String c;
  private static String d;

  static
  {
    if (Build.VERSION.SDK_INT >= 17);
    for (b = new j((byte)0); ; b = new i((byte)0))
    {
      a = new Locale("", "");
      c = "Arab";
      d = "Hebr";
      return;
    }
  }

  public static int a(Locale paramLocale)
  {
    return b.a(paramLocale);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.e.h
 * JD-Core Version:    0.6.2
 */