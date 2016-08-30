package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.umeng.analytics.a;
import java.lang.reflect.Method;
import java.util.List;
import org.json.JSONArray;

public final class w
{
  public static Context a = null;
  private static String d = null;
  private final String b = "a_start_time";
  private final String c = "a_end_time";

  public static String a()
  {
    try
    {
      if (d == null)
        d = a.getSharedPreferences("umeng_general_config", 0).getString("session_id", null);
      label26: return d;
    }
    catch (Exception localException)
    {
      break label26;
    }
  }

  public static String a(Context paramContext, SharedPreferences paramSharedPreferences)
  {
    h localh = h.a(paramContext);
    String str = b(paramContext);
    an localan = a(paramContext);
    paramSharedPreferences = paramSharedPreferences.edit();
    paramSharedPreferences.putString("session_id", str);
    paramSharedPreferences.putLong("session_start_time", System.currentTimeMillis());
    paramSharedPreferences.putLong("session_end_time", 0L);
    paramSharedPreferences.putLong("a_start_time", System.currentTimeMillis());
    paramSharedPreferences.putLong("a_end_time", 0L);
    paramSharedPreferences.putInt("versioncode", Integer.parseInt(cr.a(paramContext)));
    paramSharedPreferences.putString("versionname", cr.b(paramContext));
    paramSharedPreferences.commit();
    if (localan != null)
    {
      localh.a(localan);
      return str;
    }
    localh.a(null);
    return str;
  }

  public static an a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("umeng_general_config", 0);
    Object localObject1 = localSharedPreferences.getString("session_id", null);
    if (localObject1 == null)
      return null;
    long l3 = localSharedPreferences.getLong("session_start_time", 0L);
    long l4 = localSharedPreferences.getLong("session_end_time", 0L);
    long l1 = 0L;
    long l2;
    if (l4 != 0L)
    {
      l2 = l4 - l3;
      l1 = l2;
      if (Math.abs(l2) > 86400000L)
        l1 = 0L;
    }
    an localan = new an();
    localan.b = ((String)localObject1);
    localan.c = l3;
    localan.d = l4;
    localan.e = l1;
    localObject1 = a.a();
    if (localObject1 != null)
    {
      localan.j.a = localObject1[0];
      localan.j.b = localObject1[1];
      localan.j.c = System.currentTimeMillis();
    }
    try
    {
      Object localObject2 = Class.forName("android.net.TrafficStats");
      localObject1 = ((Class)localObject2).getMethod("getUidRxBytes", new Class[] { Integer.TYPE });
      localObject2 = ((Class)localObject2).getMethod("getUidTxBytes", new Class[] { Integer.TYPE });
      int i = paramContext.getApplicationInfo().uid;
      if (i == -1)
        return null;
      l3 = ((Long)((Method)localObject1).invoke(null, new Object[] { Integer.valueOf(i) })).longValue();
      l1 = ((Long)((Method)localObject2).invoke(null, new Object[] { Integer.valueOf(i) })).longValue();
      if ((l3 > 0L) && (l1 > 0L))
      {
        l2 = localSharedPreferences.getLong("uptr", -1L);
        l4 = localSharedPreferences.getLong("dntr", -1L);
        localSharedPreferences.edit().putLong("uptr", l1).putLong("dntr", l3).commit();
        if ((l2 > 0L) && (l4 > 0L))
        {
          l3 -= l4;
          l1 -= l2;
          if ((l3 > 0L) && (l1 > 0L))
          {
            localan.i.a = l3;
            localan.i.b = l1;
          }
        }
      }
      label404: paramContext = localSharedPreferences.getString("activities", "");
      if (!TextUtils.isEmpty(paramContext))
        try
        {
          paramContext = paramContext.split(";");
          i = 0;
          while (i < paramContext.length)
          {
            localObject1 = new JSONArray(paramContext[i]);
            localObject2 = new ak();
            ((ak)localObject2).a = ((JSONArray)localObject1).getString(0);
            ((ak)localObject2).b = ((JSONArray)localObject1).getInt(1);
            localan.h.add(localObject2);
            i += 1;
          }
        }
        catch (Exception paramContext)
        {
          ct.a(paramContext);
        }
      paramContext = localSharedPreferences.edit();
      paramContext.remove("session_start_time");
      paramContext.remove("session_end_time");
      paramContext.remove("a_start_time");
      paramContext.remove("a_end_time");
      paramContext.putString("activities", "");
      paramContext.commit();
      return localan;
    }
    catch (Throwable paramContext)
    {
      break label404;
    }
  }

  public static boolean a(SharedPreferences paramSharedPreferences)
  {
    long l1 = paramSharedPreferences.getLong("a_start_time", 0L);
    long l2 = paramSharedPreferences.getLong("a_end_time", 0L);
    long l3 = System.currentTimeMillis();
    if ((l1 != 0L) && (l3 - l1 < a.i))
      ct.d("onResume called before onPause");
    while (l3 - l2 <= a.i)
      return false;
    return true;
  }

  public static String b(Context paramContext)
  {
    String str = cr.c(paramContext);
    paramContext = a.a(paramContext);
    long l = System.currentTimeMillis();
    if (paramContext == null)
      throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(l).append(paramContext).append(str);
    paramContext = cs.a(localStringBuilder.toString());
    d = paramContext;
    return paramContext;
  }

  public static void c(Context paramContext)
  {
    paramContext = paramContext.getSharedPreferences("umeng_general_config", 0);
    if (paramContext == null)
      return;
    if ((paramContext.getLong("a_start_time", 0L) == 0L) && (a.e))
    {
      ct.d("onPause called before onResume");
      return;
    }
    long l = System.currentTimeMillis();
    paramContext = paramContext.edit();
    paramContext.putLong("a_start_time", 0L);
    paramContext.putLong("a_end_time", l);
    paramContext.putLong("session_end_time", l);
    paramContext.commit();
  }

  public static String d(Context paramContext)
  {
    if (d == null)
      d = paramContext.getSharedPreferences("umeng_general_config", 0).getString("session_id", null);
    return d;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.w
 * JD-Core Version:    0.6.2
 */