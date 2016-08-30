package com.crashlytics.android.a;

import java.util.Set;

final class v
  implements r
{
  static final Set<ad> b = new w();
  final int a;

  public v(int paramInt)
  {
    this.a = paramInt;
  }

  public final boolean a(ab paramab)
  {
    int i;
    if ((b.contains(paramab.c)) && (paramab.a.g == null))
    {
      i = 1;
      if (Math.abs(paramab.a.c.hashCode() % this.a) == 0)
        break label65;
    }
    label65: for (int j = 1; ; j = 0)
    {
      if ((i == 0) || (j == 0))
        break label70;
      return true;
      i = 0;
      break;
    }
    label70: return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.v
 * JD-Core Version:    0.6.2
 */