package com.amap.api.mapcore2d;

import java.util.ArrayList;
import java.util.LinkedList;

class cb extends by<cc>
{
  protected ArrayList<cc> b(int paramInt, boolean paramBoolean)
  {
    int j = 0;
    while (true)
    {
      int i;
      int k;
      try
      {
        Object localObject1 = this.a;
        if (localObject1 == null)
        {
          localObject1 = null;
          return localObject1;
        }
        i = this.a.size();
        k = paramInt;
        if (paramInt > i)
          k = i;
        localObject1 = new ArrayList(k);
        m = 0;
        paramInt = i;
        i = m;
        if (j < paramInt)
        {
          cc localcc = (cc)this.a.get(j);
          if (localcc == null)
            break label221;
          m = localcc.a;
          if (paramBoolean)
          {
            if (m == 0)
            {
              ((ArrayList)localObject1).add(localcc);
              this.a.remove(j);
              j -= 1;
              i += 1;
              m = paramInt - 1;
              paramInt = j;
              j = m;
              break label234;
            }
          }
          else if (m < 0)
          {
            ((ArrayList)localObject1).add(localcc);
            this.a.remove(j);
            j -= 1;
            i += 1;
            m = paramInt - 1;
            paramInt = j;
            j = m;
            break label234;
          }
        }
        else
        {
          b();
          continue;
        }
      }
      finally
      {
      }
      int m = paramInt;
      paramInt = j;
      j = m;
      break label234;
      label221: m = paramInt;
      paramInt = j;
      j = m;
      label234: if (i < k)
      {
        m = j;
        j = paramInt + 1;
        paramInt = m;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.mapcore2d.cb
 * JD-Core Version:    0.6.2
 */