package io.fabric.sdk.android;

import android.util.Log;

public final class e
  implements r
{
  private int a;

  public e()
  {
    this.a = 3;
  }

  public e(byte paramByte)
  {
    this.a = 4;
  }

  public final void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null);
  }

  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a(3))
      Log.d(paramString1, paramString2, paramThrowable);
  }

  public final boolean a(int paramInt)
  {
    return this.a <= paramInt;
  }

  public final void b(String paramString1, String paramString2)
  {
    if (a(2))
      Log.v(paramString1, paramString2, null);
  }

  public final void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a(5))
      Log.w(paramString1, paramString2, paramThrowable);
  }

  public final void c(String paramString1, String paramString2)
  {
    if (a(4))
      Log.i(paramString1, paramString2, null);
  }

  public final void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a(6))
      Log.e(paramString1, paramString2, paramThrowable);
  }

  public final void d(String paramString1, String paramString2)
  {
    b(paramString1, paramString2, null);
  }

  public final void e(String paramString1, String paramString2)
  {
    c(paramString1, paramString2, null);
  }

  public final void f(String paramString1, String paramString2)
  {
    if (a(4))
      Log.println(4, paramString1, paramString2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.e
 * JD-Core Version:    0.6.2
 */