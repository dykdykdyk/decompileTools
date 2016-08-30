package com.tencent.connect.a;

import android.content.Context;
import com.tencent.connect.b.v;
import com.tencent.open.utils.l;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import org.json.JSONObject;

public final class a
{
  private static Class<?> a = null;
  private static Class<?> b = null;
  private static Method c = null;
  private static Method d = null;
  private static Method e = null;
  private static Method f = null;
  private static boolean g = false;

  public static void a(Context paramContext, v paramv)
  {
    String str = paramv.a;
    str = "Aqc" + str;
    try
    {
      a = Class.forName("com.tencent.stat.StatConfig");
      Class localClass = Class.forName("com.tencent.stat.StatService");
      b = localClass;
      c = localClass.getMethod("reportQQ", new Class[] { Context.class, String.class });
      d = b.getMethod("trackCustomEvent", new Class[] { Context.class, String.class, [Ljava.lang.String.class });
      e = b.getMethod("commitEvents", new Class[] { Context.class, Integer.TYPE });
      f = a.getMethod("setEnableStatService", new Class[] { Boolean.TYPE });
      c(paramContext, paramv);
      a.getMethod("setAutoExceptionCaught", new Class[] { Boolean.TYPE }).invoke(a, new Object[] { Boolean.valueOf(false) });
      a.getMethod("setEnableSmartReporting", new Class[] { Boolean.TYPE }).invoke(a, new Object[] { Boolean.valueOf(true) });
      a.getMethod("setSendPeriodMinutes", new Class[] { Integer.TYPE }).invoke(a, new Object[] { Integer.valueOf(1440) });
      paramv = Class.forName("com.tencent.stat.StatReportStrategy");
      a.getMethod("setStatSendStrategy", new Class[] { paramv }).invoke(a, new Object[] { paramv.getField("PERIOD").get(null) });
      b.getMethod("startStatService", new Class[] { Context.class, String.class, String.class }).invoke(b, new Object[] { paramContext, str, Class.forName("com.tencent.stat.common.StatConstants").getField("VERSION").get(null) });
      g = true;
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public static void a(Context paramContext, v paramv, String paramString, String[] paramArrayOfString)
  {
    if (!g)
      return;
    c(paramContext, paramv);
    try
    {
      d.invoke(b, new Object[] { paramContext, paramString, paramArrayOfString });
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  public static void b(Context paramContext, v paramv)
  {
    if (!g);
    do
    {
      return;
      c(paramContext, paramv);
    }
    while (paramv.c == null);
    try
    {
      c.invoke(b, new Object[] { paramContext, paramv.c });
      return;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  private static void c(Context paramContext, v paramv)
  {
    while (true)
    {
      try
      {
        paramContext = l.a(paramContext, paramv.a);
        paramContext.b("get " + "Common_ta_enable");
        paramContext.a();
        paramContext = paramContext.a.opt("Common_ta_enable");
        if (paramContext == null)
          break label145;
        if ((paramContext instanceof Integer))
        {
          if (paramContext.equals(Integer.valueOf(0)))
            break label140;
          bool = true;
          if (bool)
            f.invoke(a, new Object[] { Boolean.valueOf(true) });
        }
        else
        {
          if (!(paramContext instanceof Boolean))
            break label145;
          bool = ((Boolean)paramContext).booleanValue();
          continue;
        }
        f.invoke(a, new Object[] { Boolean.valueOf(false) });
        return;
      }
      catch (Exception paramContext)
      {
        paramContext.printStackTrace();
        return;
      }
      label140: boolean bool = false;
      continue;
      label145: bool = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.a.a
 * JD-Core Version:    0.6.2
 */