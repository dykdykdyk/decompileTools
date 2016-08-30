package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class q
{
  Context a = null;
  private List<o> b = new ArrayList();

  public q(Context paramContext)
  {
    this.a = paramContext;
  }

  public final int a()
  {
    try
    {
      int j = this.b.size();
      long l = z.c;
      int i = j;
      if (l != 0L)
        i = j + 1;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(o paramo)
  {
    try
    {
      this.b.add(paramo);
      return;
    }
    finally
    {
      paramo = finally;
    }
    throw paramo;
  }

  final void a(z paramz)
  {
    try
    {
      localObject = this.b.iterator();
      while (((Iterator)localObject).hasNext())
        ((o)((Iterator)localObject).next()).a(paramz);
    }
    finally
    {
    }
    Object localObject = this.a.getSharedPreferences("umeng_general_config", 0);
    if (localObject == null)
      return;
    localObject = ((SharedPreferences)localObject).getString("userlevel", "");
    if (!TextUtils.isEmpty((CharSequence)localObject))
      paramz.b.j = ((String)localObject);
    this.b.clear();
    if (z.c != 0L)
      paramz.b.d.a = z.c;
    ej.f = this.a;
    ej localej = ev.a();
    ac localac;
    Map localMap;
    if (paramz.b.h != null)
    {
      localac = paramz.b.h;
      new ef();
      localMap = ey.a();
      localObject = new HashMap();
      if ((localMap != null) && (localMap.size() > 0))
        break label351;
      localObject = null;
    }
    while (true)
    {
      localac.a = ((Map)localObject);
      localObject = paramz.b.h;
      new ef();
      if (localej.b.a.size() > 0)
        ey.a(new el(localej), localej.b.a);
      ((ac)localObject).b = ey.a(new ef());
      localObject = x.a(this.a);
      if ((localObject != null) && (!TextUtils.isEmpty(localObject[0])) && (!TextUtils.isEmpty(localObject[1])))
      {
        paramz.b.g.a = localObject[0];
        paramz.b.g.b = localObject[1];
      }
      localObject = ap.a(this.a);
      if (!((ap)localObject).a)
        break;
      paramz.b.f.put("client_test", Integer.valueOf(((ap)localObject).c));
      return;
      label351: Iterator localIterator = localej.g.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (localMap.containsKey(str))
          ((Map)localObject).put(str, localMap.get(str));
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.q
 * JD-Core Version:    0.6.2
 */