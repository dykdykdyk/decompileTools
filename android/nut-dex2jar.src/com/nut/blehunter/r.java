package com.nut.blehunter;

import b.a.c;
import com.crashlytics.android.a;

final class r extends c
{
  public final void a(String paramString, Object[] paramArrayOfObject)
  {
  }

  public final void a(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    k.a(NutTrackerApplication.a().getApplicationContext(), NutTrackerApplication.a().c, String.format(paramString, paramArrayOfObject), false);
  }

  public final void b(String paramString, Object[] paramArrayOfObject)
  {
    a.a(String.format(paramString, paramArrayOfObject));
  }

  public final void b(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    b(paramString, paramArrayOfObject);
    k.a(NutTrackerApplication.a().getApplicationContext(), NutTrackerApplication.a().c, k.a(paramThrowable), true);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.r
 * JD-Core Version:    0.6.2
 */