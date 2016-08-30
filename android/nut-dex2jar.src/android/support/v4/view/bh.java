package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public final class bh
{
  static final bk a = new bi();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new bj();
      return;
    }
  }

  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.a(paramVelocityTracker, paramInt);
  }

  public static float b(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.b(paramVelocityTracker, paramInt);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.bh
 * JD-Core Version:    0.6.2
 */