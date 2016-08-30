package com.tencent.open.a;

import android.util.Log;

public final class g extends k
{
  public static final g a = new g();

  protected final void a(int paramInt, Thread paramThread, long paramLong, String paramString1, String paramString2, Throwable paramThrowable)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      Log.v(paramString1, paramString2, paramThrowable);
      return;
    case 2:
      Log.d(paramString1, paramString2, paramThrowable);
      return;
    case 4:
      Log.i(paramString1, paramString2, paramThrowable);
      return;
    case 8:
      Log.w(paramString1, paramString2, paramThrowable);
      return;
    case 16:
      Log.e(paramString1, paramString2, paramThrowable);
      return;
    case 32:
    }
    Log.e(paramString1, paramString2, paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a.g
 * JD-Core Version:    0.6.2
 */