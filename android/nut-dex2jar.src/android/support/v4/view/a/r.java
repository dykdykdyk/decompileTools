package android.support.v4.view.a;

import android.os.Build.VERSION;
import java.util.List;

public final class r
{
  private static final s b = new x();
  public final Object a;

  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      b = new v();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      b = new t();
      return;
    }
  }

  public r()
  {
    this.a = b.a(this);
  }

  public r(Object paramObject)
  {
    this.a = paramObject;
  }

  public static f a()
  {
    return null;
  }

  public static boolean b()
  {
    return false;
  }

  public static List<f> c()
  {
    return null;
  }

  public static f d()
  {
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.r
 * JD-Core Version:    0.6.2
 */