package com.crashlytics.android.a;

import io.fabric.sdk.android.services.c.o;
import io.fabric.sdk.android.services.concurrency.a.a;
import io.fabric.sdk.android.services.concurrency.a.e;
import java.io.File;
import java.util.List;

final class l
  implements o
{
  private final y a;
  private final u b;

  l(y paramy, u paramu)
  {
    this.a = paramy;
    this.b = paramu;
  }

  public final boolean a(List<File> paramList)
  {
    long l1 = System.nanoTime();
    Object localObject = this.b;
    e locale = ((u)localObject).b;
    long l2 = locale.b.a(locale.a);
    int i;
    if (l1 - ((u)localObject).a >= 1000000L * l2)
      i = 1;
    while (i != 0)
      if (this.a.a(paramList))
      {
        paramList = this.b;
        paramList.a = 0L;
        localObject = paramList.b;
        paramList.b = new e(((e)localObject).b, ((e)localObject).c);
        return true;
        i = 0;
      }
      else
      {
        paramList = this.b;
        paramList.a = l1;
        localObject = paramList.b;
        paramList.b = new e(((e)localObject).a + 1, ((e)localObject).b, ((e)localObject).c);
        return false;
      }
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.a.l
 * JD-Core Version:    0.6.2
 */