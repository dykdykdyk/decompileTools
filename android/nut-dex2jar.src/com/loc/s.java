package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class s
  implements Thread.UncaughtExceptionHandler
{
  private static s a;
  private Thread.UncaughtExceptionHandler b;
  private Context c;
  private eo d;

  private s(Context paramContext, eo parameo)
  {
    this.c = paramContext.getApplicationContext();
    this.d = parameo;
    this.b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }

  static s a(Context paramContext, eo parameo)
  {
    try
    {
      if (a == null)
        a = new s(paramContext, parameo);
      paramContext = a;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Object localObject1 = eq.a(paramThrowable);
    try
    {
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (((String)localObject1).contains("amapdynamic")) && (((String)localObject1).contains("com.amap.api")))
      {
        localObject1 = new f(this.c, t.a());
        Context localContext = this.c;
        Object localObject3 = this.d;
        Object localObject2 = new u();
        String str = ((eo)localObject3).c;
        localObject3 = n.b(str, ((eo)localObject3).a);
        Object localObject4 = p.a((f)localObject1, (String)localObject3);
        if (localObject4 != null)
        {
          n.b(localContext, (f)localObject1, (String)localObject3);
          localObject3 = ((v)localObject4).e;
          localObject4 = new HashMap();
          ((Map)localObject4).put("sdkname", str);
          ((Map)localObject4).put("dynamicversion", localObject3);
          localObject2 = ((f)localObject1).a(f.a((Map)localObject4), (g)localObject2);
          if (((List)localObject2).size() > 0)
          {
            localObject2 = (v)((List)localObject2).get(0);
            ((v)localObject2).f = "errorstatus";
            p.a((f)localObject1, (v)localObject2, u.a(((v)localObject2).a));
            localObject1 = new File(n.a(localContext, ((v)localObject2).a));
            if (((File)localObject1).exists())
              ((File)localObject1).delete();
          }
        }
      }
      if (this.b != null)
        this.b.uncaughtException(paramThread, paramThrowable);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.s
 * JD-Core Version:    0.6.2
 */