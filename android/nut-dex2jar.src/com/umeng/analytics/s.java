package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import u.aly.ah;
import u.aly.ai;
import u.aly.ak;
import u.aly.ct;
import u.aly.ej;
import u.aly.ev;
import u.aly.h;
import u.aly.l;
import u.aly.m;
import u.aly.o;
import u.aly.w;

public final class s
  implements u.aly.s
{
  u.aly.y a = new u.aly.y();
  w b = new w();
  m c;
  ej d = null;
  boolean e = false;
  boolean f = false;
  private Context g = null;
  private l h = new l();
  private h i;

  s()
  {
    this.h.a = this;
  }

  final void a(Context paramContext)
  {
    if (!this.e)
    {
      this.g = paramContext.getApplicationContext();
      this.c = new m(this.g);
      this.i = h.a(this.g);
      this.e = true;
      if (this.d == null)
      {
        ej.f = this.g;
        this.d = ev.a();
      }
      if (!this.f)
        y.b(new t(this));
    }
  }

  public final void a(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    while (true)
    {
      try
      {
        if (!this.e)
          a(paramContext);
        m localm = this.c;
        if (!m.a(paramString1))
          break;
        if (!m.b(paramString2))
          return;
        Object localObject = new HashMap();
        if (paramString2 == null)
        {
          paramContext = "";
          ((Map)localObject).put(paramString1, paramContext);
          localObject = new ai();
          ((ai)localObject).c = paramString1;
          ((ai)localObject).d = System.currentTimeMillis();
          if (paramLong > 0L)
            ((ai)localObject).e = paramLong;
          ((ai)localObject).a = 1;
          Map localMap = ((ai)localObject).f;
          paramContext = paramString2;
          if (paramString2 == null)
            paramContext = "";
          localMap.put(paramString1, paramContext);
          if (((ai)localObject).b == null)
            ((ai)localObject).b = w.d(localm.a);
          localm.b.a((o)localObject);
          return;
        }
      }
      catch (Exception paramContext)
      {
        ct.a(paramContext);
        return;
      }
      paramContext = paramString2;
    }
  }

  public final void a(Throwable paramThrowable)
  {
    while (true)
      try
      {
        u.aly.y localy = this.a;
        Object localObject = null;
        long l = 0L;
        synchronized (localy.a)
        {
          Iterator localIterator = localy.a.entrySet().iterator();
          if (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            if (((Long)localEntry.getValue()).longValue() > l)
            {
              l = ((Long)localEntry.getValue()).longValue();
              localObject = (String)localEntry.getKey();
            }
          }
          else
          {
            if (localObject != null)
              localy.b((String)localObject);
            if (this.g != null)
            {
              if ((paramThrowable != null) && (this.i != null))
              {
                localObject = new ah();
                ((ah)localObject).a = System.currentTimeMillis();
                ((ah)localObject).b = 1L;
                ((ah)localObject).c = r.a(paramThrowable);
                this.i.a((o)localObject);
              }
              this.d.b();
              b(this.g);
              this.g.getSharedPreferences("umeng_general_config", 0).edit().commit();
            }
            y.a();
            return;
          }
        }
      }
      catch (Exception paramThrowable)
      {
        ct.b("Exception in onAppCrash", paramThrowable);
        return;
      }
  }

  final void b(Context paramContext)
  {
    w.c(paramContext);
    u.aly.y localy = this.a;
    Object localObject1 = paramContext.getSharedPreferences("umeng_general_config", 0);
    paramContext = ((SharedPreferences)localObject1).edit();
    if (localy.b.size() > 0)
    {
      ??? = ((SharedPreferences)localObject1).getString("activities", "");
      localObject1 = new StringBuilder();
      if (!TextUtils.isEmpty((CharSequence)???))
      {
        ((StringBuilder)localObject1).append((String)???);
        ((StringBuilder)localObject1).append(";");
      }
      synchronized (localy.b)
      {
        Iterator localIterator = localy.b.iterator();
        if (localIterator.hasNext())
        {
          ak localak = (ak)localIterator.next();
          ((StringBuilder)localObject1).append(String.format("[\"%s\",%d]", new Object[] { localak.a, Long.valueOf(localak.b) }));
          ((StringBuilder)localObject1).append(";");
        }
      }
      localy.b.clear();
      ((StringBuilder)localObject1).deleteCharAt(((StringBuilder)localObject1).length() - 1);
      paramContext.remove("activities");
      paramContext.putString("activities", ((StringBuilder)localObject1).toString());
    }
    paramContext.commit();
    this.i.a();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.s
 * JD-Core Version:    0.6.2
 */