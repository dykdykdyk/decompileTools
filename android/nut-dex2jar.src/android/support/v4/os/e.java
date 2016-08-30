package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.Trace;

public final class e
{
  public static void a()
  {
    if (Build.VERSION.SDK_INT >= 18)
      Trace.endSection();
  }

  public static void a(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18)
      Trace.beginSection(paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.os.e
 * JD-Core Version:    0.6.2
 */