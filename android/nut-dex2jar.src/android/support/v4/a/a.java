package android.support.v4.a;

import android.os.Build.VERSION;
import android.view.View;

public final class a
{
  private static final b a = new c();

  static
  {
    if (Build.VERSION.SDK_INT >= 12)
    {
      a = new d();
      return;
    }
  }

  public static void a(View paramView)
  {
    a.a(paramView);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.a.a
 * JD-Core Version:    0.6.2
 */