package u.aly;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ai
  implements Serializable, o
{
  public int a = 0;
  public String b = null;
  public String c = null;
  public long d = 0L;
  public long e = 0L;
  public Map<String, Object> f = new HashMap();

  public final void a(z paramz)
  {
    int j = 0;
    if (this.b == null)
      this.b = w.a();
    if (paramz.b.a != null);
    while (true)
    {
      int i;
      try
      {
        int k;
        if (this.a == 1)
        {
          k = paramz.b.a.size();
          if (k <= 0)
            continue;
          i = 0;
          if (i < k)
          {
            localag1 = (ag)paramz.b.a.get(i);
            if ((TextUtils.isEmpty(localag1.a)) || (!localag1.a.equals(this.b)))
              break label505;
            paramz.b.a.remove(localag1);
            localag1.b.add(this);
            paramz.b.a.add(localag1);
            return;
          }
          localag1 = new ag();
          localag1.a = this.b;
          localag1.b.add(this);
          if (!paramz.b.a.contains(localag1))
            paramz.b.a.add(localag1);
        }
        if (paramz.b.b == null)
          break label504;
        try
        {
          if (this.a != 2)
            break label504;
          k = paramz.b.b.size();
          if (k <= 0)
            break label459;
          i = j;
          if (i >= k)
            continue;
          localag1 = (ag)paramz.b.b.get(i);
          if ((TextUtils.isEmpty(localag1.a)) || (!localag1.a.equals(this.b)))
            continue;
          paramz.b.b.remove(localag1);
          localag1.b.add(this);
          paramz.b.b.add(localag1);
          return;
        }
        catch (Throwable paramz)
        {
          ct.a(paramz);
          return;
        }
        ag localag1 = new ag();
        localag1.a = this.b;
        localag1.b.add(this);
        paramz.b.a.add(localag1);
        continue;
      }
      catch (Throwable localThrowable)
      {
        ct.a(localThrowable);
        continue;
        i += 1;
        continue;
        localag2 = new ag();
        localag2.a = this.b;
        localag2.b.add(this);
        paramz.b.b.add(localag2);
        return;
      }
      label459: ag localag2 = new ag();
      localag2.a = this.b;
      localag2.b.add(this);
      paramz.b.b.add(localag2);
      label504: return;
      label505: i += 1;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.ai
 * JD-Core Version:    0.6.2
 */