package u.aly;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class y
{
  public final Map<String, Long> a = new HashMap();
  public final ArrayList<ak> b = new ArrayList();

  public final void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      synchronized (this.a)
      {
        this.a.put(paramString, Long.valueOf(System.currentTimeMillis()));
        return;
      }
  }

  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString));
    Object localObject2;
    synchronized (this.a)
    {
      localObject2 = (Long)this.a.remove(paramString);
      if (localObject2 == null)
      {
        ct.c("please call 'onPageStart(%s)' before onPageEnd", new Object[] { paramString });
        return;
      }
    }
    long l1 = System.currentTimeMillis();
    long l2 = ((Long)localObject2).longValue();
    synchronized (this.b)
    {
      localObject2 = new ak();
      ((ak)localObject2).a = paramString;
      ((ak)localObject2).b = (l1 - l2);
      this.b.add(localObject2);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.y
 * JD-Core Version:    0.6.2
 */