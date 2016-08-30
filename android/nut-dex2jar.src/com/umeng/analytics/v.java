package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import u.aly.cr;
import u.aly.ct;
import u.aly.h;
import u.aly.o;
import u.aly.w;

final class v extends z
{
  v(s params, Context paramContext)
  {
  }

  public final void a()
  {
    Object localObject2 = this.a.getApplicationContext();
    w.a = (Context)localObject2;
    Object localObject3 = ((Context)localObject2).getSharedPreferences("umeng_general_config", 0);
    Object localObject1;
    if (localObject3 != null)
    {
      localObject1 = ((SharedPreferences)localObject3).edit();
      int i = ((SharedPreferences)localObject3).getInt("versioncode", 0);
      int j = Integer.parseInt(cr.a(w.a));
      if ((i == 0) || (j == i))
        break label351;
      if (w.d((Context)localObject2) == null)
        w.a((Context)localObject2, (SharedPreferences)localObject3);
      localObject1 = w.a;
      localObject2 = ((Context)localObject1).getSharedPreferences("umeng_general_config", 0);
      if ((localObject2 != null) && (((SharedPreferences)localObject2).getString("session_id", null) != null))
      {
        long l1 = ((SharedPreferences)localObject2).getLong("a_start_time", 0L);
        long l2 = ((SharedPreferences)localObject2).getLong("a_end_time", 0L);
        if ((l1 > 0L) && (l2 == 0L))
          w.c((Context)localObject1);
        localObject2 = h.a((Context)localObject1);
        localObject1 = w.a((Context)localObject1);
        if (localObject1 != null)
          ((h)localObject2).b((o)localObject1);
      }
      h.a(w.a).b();
      localObject1 = w.a;
      localObject3 = ((Context)localObject1).getSharedPreferences("umeng_general_config", 0);
      if (localObject3 != null)
      {
        localObject2 = w.b((Context)localObject1);
        localObject3 = ((SharedPreferences)localObject3).edit();
        ((SharedPreferences.Editor)localObject3).putString("session_id", (String)localObject2);
        ((SharedPreferences.Editor)localObject3).putLong("session_start_time", System.currentTimeMillis());
        ((SharedPreferences.Editor)localObject3).putLong("session_end_time", 0L);
        ((SharedPreferences.Editor)localObject3).putLong("a_start_time", System.currentTimeMillis());
        ((SharedPreferences.Editor)localObject3).putLong("a_end_time", 0L);
        ((SharedPreferences.Editor)localObject3).putInt("versioncode", Integer.parseInt(cr.a((Context)localObject1)));
        ((SharedPreferences.Editor)localObject3).putString("versionname", cr.b((Context)localObject1));
        ((SharedPreferences.Editor)localObject3).commit();
        ct.b("Restart session: " + (String)localObject2);
      }
    }
    return;
    label351: if (w.a((SharedPreferences)localObject3))
    {
      localObject1 = w.a((Context)localObject2, (SharedPreferences)localObject3);
      ct.b("Start new session: " + (String)localObject1);
      return;
    }
    localObject2 = ((SharedPreferences)localObject3).getString("session_id", null);
    ((SharedPreferences.Editor)localObject1).putLong("a_start_time", System.currentTimeMillis());
    ((SharedPreferences.Editor)localObject1).putLong("a_end_time", 0L);
    ((SharedPreferences.Editor)localObject1).commit();
    ct.b("Extend current session: " + (String)localObject2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.v
 * JD-Core Version:    0.6.2
 */