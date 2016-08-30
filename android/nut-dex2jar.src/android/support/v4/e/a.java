package android.support.v4.e;

import android.os.Build.VERSION;
import java.util.Locale;

public final class a
{
  private static final b a = new c();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new e();
      return;
    }
    if (i >= 14)
    {
      a = new d();
      return;
    }
  }

  public static String a(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.e.a
 * JD-Core Version:    0.6.2
 */