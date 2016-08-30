package com.loc;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimerTask;
import org.json.JSONObject;

final class ai extends TimerTask
{
  ai(ag paramag)
  {
  }

  public final void run()
  {
    if (ba.a[1] > 2000)
      ag.j(this.a);
    while (true)
    {
      return;
      Thread.currentThread().setPriority(1);
      if (by.a(ag.k(this.a), "fetchoffdatamobile"));
      Object localObject2;
      while (true)
      {
        try
        {
          bool1 = "1".equals(ag.k(this.a).getString("fetchoffdatamobile"));
          ArrayList localArrayList = bm.a().b();
          int j = localArrayList.size();
          if (j <= 0)
            break;
          if (ag.l(this.a) == null)
            ag.a(this.a, this.a.b(true));
          int i = 0;
          if ((i >= j) || (i >= 20))
            break;
          Object localObject3 = (bl)localArrayList.get(i);
          localObject2 = ag.m(this.a);
          String str = ag.l(this.a);
          localObject3 = ((bl)localObject3).a;
          if (bool1)
            break label185;
          bool2 = true;
          ba.a((Context)localObject2, str, (String)localObject3, bool2);
          i += 1;
          continue;
        }
        catch (Exception localException1)
        {
        }
        boolean bool1 = false;
        continue;
        label185: boolean bool2 = false;
      }
      ag.n(this.a);
      try
      {
        Object localObject1 = bk.a().c(ag.m(this.a));
        if ((localObject1 != null) && (((ArrayList)localObject1).size() > 0))
        {
          localObject1 = ((ArrayList)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            ba.a(ag.l(this.a), (String)localObject2);
          }
        }
      }
      catch (Exception localException2)
      {
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.ai
 * JD-Core Version:    0.6.2
 */