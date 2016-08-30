package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class u
{
  static final y a = new v();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new x();
      return;
    }
  }

  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }

  public static boolean a(KeyEvent paramKeyEvent, int paramInt)
  {
    return a.a(paramKeyEvent.getMetaState(), paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.u
 * JD-Core Version:    0.6.2
 */