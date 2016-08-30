package com.tencent.mm.sdk.b;

import android.util.Log;

final class b
  implements a.a
{
  public final void e(String paramString1, String paramString2)
  {
    if (a.g() <= 2)
      Log.i(paramString1, paramString2);
  }

  public final void f(String paramString1, String paramString2)
  {
    if (a.g() <= 1)
      Log.d(paramString1, paramString2);
  }

  public final void g(String paramString1, String paramString2)
  {
    if (a.g() <= 3)
      Log.w(paramString1, paramString2);
  }

  public final int h()
  {
    return a.g();
  }

  public final void h(String paramString1, String paramString2)
  {
    if (a.g() <= 4)
      Log.e(paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.b.b
 * JD-Core Version:    0.6.2
 */