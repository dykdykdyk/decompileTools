package com.tencent.wxop.stat;

import com.tencent.wxop.stat.a.c;
import com.tencent.wxop.stat.b.b;

final class ac
  implements Thread.UncaughtExceptionHandler
{
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if ((!t.c()) || (v.d() == null));
    do
    {
      do
      {
        return;
        if (t.m())
        {
          ai.a(v.d()).a(new c(v.d(), v.a(v.d(), null), paramThrowable, paramThread), null, false, true);
          v.e().f("MTA has caught the following uncaught exception:");
          v.e().a(paramThrowable);
        }
        v.c(v.d());
      }
      while (v.f() == null);
      v.e().g("Call the original uncaught exception handler.");
    }
    while ((v.f() instanceof ac));
    v.f().uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.ac
 * JD-Core Version:    0.6.2
 */