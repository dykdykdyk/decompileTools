package com.loc;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class o extends Thread
{
  o(Context paramContext, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    try
    {
      f localf = new f(this.a, t.a());
      Object localObject1 = this.b;
      Object localObject2 = new HashMap();
      ((Map)localObject2).put("sdkname", localObject1);
      localObject1 = localf.a(f.a((Map)localObject2), new u());
      if (((List)localObject1).size() > 0)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (v)((Iterator)localObject1).next();
          String str = ((v)localObject2).d;
          if (!this.c.equalsIgnoreCase(str))
          {
            localObject2 = ((v)localObject2).a;
            n.a(this.a, localf, (String)localObject2);
          }
        }
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.o
 * JD-Core Version:    0.6.2
 */