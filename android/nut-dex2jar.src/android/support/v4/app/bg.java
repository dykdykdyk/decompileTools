package android.support.v4.app;

import android.os.Build.VERSION;

public final class bg
{
  private static final bo a = new br();

  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new bq();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a = new bp();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new bw();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new bv();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new bu();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new bt();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new bs();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.bg
 * JD-Core Version:    0.6.2
 */