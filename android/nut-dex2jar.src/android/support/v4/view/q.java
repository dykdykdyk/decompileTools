package android.support.v4.view;

import android.os.Build.VERSION;

public final class q
{
  static final r a = new s();

  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new t();
      return;
    }
  }

  public static int a(int paramInt1, int paramInt2)
  {
    return a.a(paramInt1, paramInt2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.q
 * JD-Core Version:    0.6.2
 */