package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public final class z
{
  static final aa a = new ab();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ad();
      return;
    }
    if (i >= 11)
    {
      a = new ac();
      return;
    }
  }

  public static ai a(LayoutInflater paramLayoutInflater)
  {
    return a.a(paramLayoutInflater);
  }

  public static void a(LayoutInflater paramLayoutInflater, ai paramai)
  {
    a.a(paramLayoutInflater, paramai);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.view.z
 * JD-Core Version:    0.6.2
 */