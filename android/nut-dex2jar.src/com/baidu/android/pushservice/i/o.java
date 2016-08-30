package com.baidu.android.pushservice.i;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.pushservice.c.h;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.message.a.l;

public class o
{
  private static void a(Context paramContext, h paramh, n paramn, m paramm)
  {
    m localm = paramm;
    if (paramh != null)
    {
      paramm.d(paramh.c());
      localm = com.baidu.android.pushservice.util.m.a(paramm, paramContext, paramh.c());
    }
    try
    {
      t.a(paramContext, paramn);
      t.a(paramContext, localm);
      return;
    }
    catch (Exception paramContext)
    {
      a.b("PushBehaviorHelper", "MH insert db exception");
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    n localn = new n();
    localn.f = "010101";
    localn.a = paramString2;
    localn.g = System.currentTimeMillis();
    localn.h = com.baidu.android.pushservice.i.a.b.d(paramContext);
    localn.b = new String(paramArrayOfByte).length();
    localn.i = paramInt2;
    localn.c = paramInt1;
    localn.j = paramString1;
    paramString2 = new m(paramString1);
    paramString2.c(paramInt3);
    paramString1 = com.baidu.android.pushservice.c.b.a(paramContext).d(paramString1);
    if (paramString1 != null)
    {
      paramString2.c(com.baidu.android.pushservice.util.m.b(paramString1.e));
      paramString2.b(paramString1.e);
      paramString2.d(paramString1.c());
    }
    while (true)
    {
      a(paramContext, paramString1, localn, paramString2);
      return;
      paramString2.c("0");
      paramString2.b("0");
      paramString2.d("NP");
    }
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      return;
    while (true)
    {
      String str;
      try
      {
        n localn = new n();
        str = null;
        if ("com.baidu.android.pushservice.action.passthrough.notification.CLICK".equals(paramString3))
        {
          str = "010601";
          localn.f = str;
          localn.a = paramString1;
          localn.g = System.currentTimeMillis();
          localn.h = com.baidu.android.pushservice.i.a.b.d(paramContext);
          localn.c = l.g.a();
          localn.j = paramString2;
          paramString1 = com.baidu.android.pushservice.c.b.a(paramContext).d(paramString2);
          if (paramString1 == null)
            break;
          a(paramContext, paramString1, localn, new m(paramString2));
          return;
        }
      }
      catch (Exception paramContext)
      {
        a.e("PushBehaviorHelper", "error " + paramContext.getMessage());
        return;
      }
      if ("com.baidu.android.pushservice.action.passthrough.notification.DELETE".equals(paramString3))
        str = "010602";
      else if ("com.baidu.android.pushservice.action.passthrough.notification.NOTIFIED".equals(paramString3))
        str = "010603";
    }
  }

  public static void b(Context paramContext, String paramString1, String paramString2, int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    n localn = new n();
    localn.f = "019901";
    localn.a = paramString2;
    localn.g = System.currentTimeMillis();
    localn.h = com.baidu.android.pushservice.i.a.b.d(paramContext);
    localn.b = new String(paramArrayOfByte).length();
    localn.i = paramInt2;
    localn.c = paramInt1;
    localn.j = paramString1;
    paramString2 = new m(paramString1);
    paramString2.c(paramInt3);
    paramString1 = com.baidu.android.pushservice.c.b.a(paramContext).d(paramString1);
    if (paramString1 != null)
    {
      paramString2.c(com.baidu.android.pushservice.util.m.b(paramString1.e));
      paramString2.b(paramString1.e);
      paramString2.d(paramString1.c());
    }
    while (true)
    {
      a(paramContext, paramString1, localn, paramString2);
      return;
      paramString2.c("0");
      paramString2.b("0");
      paramString2.d("NP");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.i.o
 * JD-Core Version:    0.6.2
 */