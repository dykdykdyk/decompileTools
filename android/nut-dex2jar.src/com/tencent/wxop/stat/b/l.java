package com.tencent.wxop.stat.b;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.wxop.stat.t;
import com.tencent.wxop.stat.w;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileReader;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpHost;
import org.json.JSONObject;

public final class l
{
  private static String a = null;
  private static String b = null;
  private static String c = null;
  private static String d = null;
  private static Random e = null;
  private static DisplayMetrics f = null;
  private static String g = null;
  private static String h = "";
  private static String i = "";
  private static int j = -1;
  private static b k = null;
  private static String l = null;
  private static String m = null;
  private static volatile int n = -1;
  private static String o = null;
  private static String p = null;
  private static long q = -1L;
  private static String r = "";
  private static o s = null;
  private static String t = "__MTA_FIRST_ACTIVATE__";
  private static int u = -1;
  private static long v = -1L;
  private static int w = 0;
  private static String x = "";

  public static int a()
  {
    return i().nextInt(2147483647);
  }

  public static int a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
      w = q.a(paramContext, "mta.qq.com.difftime", 0);
    return w;
  }

  private static Long a(String paramString1, String paramString2, Long paramLong)
  {
    if (paramString1 == null);
    do
    {
      return paramLong;
      String str;
      if (!paramString2.equalsIgnoreCase("."))
      {
        str = paramString2;
        if (!paramString2.equalsIgnoreCase("|"));
      }
      else
      {
        str = "\\" + paramString2;
      }
      paramString2 = paramString1.split(str);
    }
    while (paramString2.length != 3);
    try
    {
      paramString1 = Long.valueOf(0L);
      int i1 = 0;
      while (i1 < paramString2.length)
      {
        long l1 = paramString1.longValue();
        long l2 = Long.valueOf(paramString2[i1]).longValue();
        i1 += 1;
        paramString1 = Long.valueOf(100L * (l1 + l2));
      }
      return paramString1;
    }
    catch (NumberFormatException paramString1)
    {
    }
    return paramLong;
  }

  public static String a(long paramLong)
  {
    return new SimpleDateFormat("yyyyMMdd").format(new Date(paramLong));
  }

  public static String a(Context paramContext, String paramString)
  {
    String str = paramString;
    if (t.t() == true)
    {
      if (m == null)
        m = n(paramContext);
      str = paramString;
      if (m != null)
        str = paramString + "_" + m;
    }
    return str;
  }

  public static String a(String paramString)
  {
    if (paramString == null)
      return "0";
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i1 = 0;
      while (i1 < paramString.length)
      {
        int i2 = paramString[i1] & 0xFF;
        if (i2 < 16)
          ((StringBuffer)localObject).append("0");
        ((StringBuffer)localObject).append(Integer.toHexString(i2));
        i1 += 1;
      }
      paramString = ((StringBuffer)localObject).toString();
      return paramString;
    }
    catch (Throwable paramString)
    {
    }
    return "0";
  }

  public static HttpHost a(Context paramContext)
  {
    if (paramContext == null)
      return null;
    do
    {
      try
      {
        if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0)
          return null;
        paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (paramContext == null)
          return null;
        if ((paramContext.getTypeName() != null) && (paramContext.getTypeName().equalsIgnoreCase("WIFI")))
          return null;
        paramContext = paramContext.getExtraInfo();
        if (paramContext == null)
          return null;
        if ((paramContext.equals("cmwap")) || (paramContext.equals("3gwap")) || (paramContext.equals("uniwap")))
        {
          paramContext = new HttpHost("10.0.0.172", 80);
          return paramContext;
        }
      }
      catch (Throwable paramContext)
      {
        k.b(paramContext);
        return null;
      }
      if (paramContext.equals("ctwap"))
        return new HttpHost("10.0.0.200", 80);
      paramContext = Proxy.getDefaultHost();
    }
    while ((paramContext == null) || (paramContext.trim().length() <= 0));
    paramContext = new HttpHost(paramContext, Proxy.getDefaultPort());
    return paramContext;
  }

  public static void a(Context paramContext, int paramInt)
  {
    w = paramInt;
    q.b(paramContext, "mta.qq.com.difftime", paramInt);
  }

  public static boolean a(w paramw)
  {
    if (paramw == null)
      return false;
    return c(paramw.a);
  }

  public static byte[] a(byte[] paramArrayOfByte)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
    GZIPInputStream localGZIPInputStream = new GZIPInputStream(localByteArrayInputStream);
    byte[] arrayOfByte = new byte[4096];
    paramArrayOfByte = new ByteArrayOutputStream(paramArrayOfByte.length * 2);
    while (true)
    {
      int i1 = localGZIPInputStream.read(arrayOfByte);
      if (i1 == -1)
        break;
      paramArrayOfByte.write(arrayOfByte, 0, i1);
    }
    arrayOfByte = paramArrayOfByte.toByteArray();
    localByteArrayInputStream.close();
    localGZIPInputStream.close();
    paramArrayOfByte.close();
    return arrayOfByte;
  }

  public static int b()
  {
    if (j != -1)
      return j;
    try
    {
      if (p.a())
        j = 1;
      j = 0;
      return 0;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        k.b(localThrowable);
    }
  }

  public static long b(String paramString)
  {
    return a(paramString, ".", Long.valueOf(0L)).longValue();
  }

  public static String b(Context paramContext)
  {
    try
    {
      if ((a != null) && (a.trim().length() != 0));
      for (paramContext = a; ; paramContext = a)
      {
        return paramContext;
        paramContext = r.a(paramContext);
        a = paramContext;
        if ((paramContext == null) || (a.trim().length() == 0))
          a = Integer.toString(i().nextInt(2147483647));
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  public static b c()
  {
    try
    {
      if (k == null)
      {
        localb = new b("MtaSDK");
        k = localb;
        localb.a = false;
      }
      b localb = k;
      return localb;
    }
    finally
    {
    }
  }

  public static String c(Context paramContext)
  {
    try
    {
      if ((c == null) || (c.trim().length() == 0))
        c = r.b(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static boolean c(String paramString)
  {
    return (paramString != null) && (paramString.trim().length() != 0);
  }

  public static long d()
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.set(11, 0);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
      long l1 = localCalendar.getTimeInMillis();
      return l1 + 86400000L;
    }
    catch (Throwable localThrowable)
    {
      k.b(localThrowable);
    }
    return System.currentTimeMillis() + 86400000L;
  }

  public static DisplayMetrics d(Context paramContext)
  {
    if (f == null)
    {
      f = new DisplayMetrics();
      ((WindowManager)paramContext.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(f);
    }
    return f;
  }

  public static String e()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.roll(6, 0);
    return new SimpleDateFormat("yyyyMMdd").format(localCalendar.getTime());
  }

  public static boolean e(Context paramContext)
  {
    try
    {
      if (r.a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
      {
        paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
        if (paramContext == null)
          break label99;
        paramContext = paramContext.getAllNetworkInfo();
        if (paramContext == null)
          break label99;
        i1 = 0;
        if (i1 >= paramContext.length)
          break label99;
        if ((paramContext[i1].getTypeName().equalsIgnoreCase("WIFI")) && (paramContext[i1].isConnected()))
          return true;
      }
      else
      {
        k.b("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        return false;
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
      {
        int i1;
        k.b(paramContext);
        continue;
        i1 += 1;
      }
    }
    label99: return false;
  }

  public static String f()
  {
    if (c(p))
      return p;
    Object localObject = new StatFs(Environment.getDataDirectory().getPath());
    long l1 = ((StatFs)localObject).getBlockSize();
    l1 = ((StatFs)localObject).getBlockCount() * l1 / 1000000L;
    localObject = new StatFs(Environment.getDataDirectory().getPath());
    long l2 = ((StatFs)localObject).getBlockSize();
    l2 = ((StatFs)localObject).getAvailableBlocks() * l2 / 1000000L;
    localObject = String.valueOf(l2) + "/" + String.valueOf(l1);
    p = (String)localObject;
    return localObject;
  }

  public static String f(Context paramContext)
  {
    if (b != null)
      return b;
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.getString("TA_APPKEY");
        if (paramContext == null)
          break label62;
        b = paramContext;
        return paramContext;
      }
    }
    catch (Throwable paramContext)
    {
      k.a("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
    while (true)
    {
      return null;
      label62: k.a("Could not read APPKEY meta-data from AndroidManifest.xml");
    }
  }

  public static String g(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.get("InstallChannel");
        if (paramContext != null)
          return paramContext.toString();
        k.c("Could not read InstallChannel meta-data from AndroidManifest.xml");
      }
      return null;
    }
    catch (Throwable paramContext)
    {
      while (true)
        k.e("Could not read InstallChannel meta-data from AndroidManifest.xml");
    }
  }

  public static JSONObject g()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("n", m.a());
      String str = m.d();
      if ((str != null) && (str.length() > 0))
        localJSONObject.put("na", str);
      int i1 = m.b();
      if (i1 > 0)
        localJSONObject.put("fx", i1 / 1000000);
      i1 = m.c();
      if (i1 > 0)
        localJSONObject.put("fn", i1 / 1000000);
      return localJSONObject;
    }
    catch (Throwable localThrowable)
    {
      Log.w("MtaSDK", "get cpu error", localThrowable);
    }
    return localJSONObject;
  }

  public static String h(Context paramContext)
  {
    if (g != null)
      return g;
    try
    {
      int i1;
      if (r.a(paramContext, "android.permission.READ_PHONE_STATE"))
        if (paramContext.getPackageManager().checkPermission("android.permission.READ_PHONE_STATE", paramContext.getPackageName()) != 0)
        {
          i1 = 0;
          if (i1 != 0)
          {
            paramContext = (TelephonyManager)paramContext.getSystemService("phone");
            if (paramContext != null)
              g = paramContext.getSimOperator();
          }
        }
      while (true)
      {
        return g;
        i1 = 1;
        break;
        k.e("Could not get permission of android.permission.READ_PHONE_STATE");
      }
    }
    catch (Throwable paramContext)
    {
      while (true)
        k.b(paramContext);
    }
  }

  public static String i(Context paramContext)
  {
    if (c(h))
      return h;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      h = paramContext;
      if (paramContext == null)
        return "";
    }
    catch (Throwable paramContext)
    {
      k.b(paramContext);
    }
    return h;
  }

  private static Random i()
  {
    try
    {
      if (e == null)
        e = new Random();
      Random localRandom = e;
      return localRandom;
    }
    finally
    {
    }
  }

  private static long j()
  {
    if (q > 0L)
      return q;
    long l2 = 1L;
    long l1 = l2;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/meminfo"), 8192);
      l1 = l2;
      l2 = Integer.valueOf(localBufferedReader.readLine().split("\\s+")[1]).intValue() * 1024;
      l1 = l2;
      localBufferedReader.close();
      l1 = l2;
      label74: q = l1;
      return l1;
    }
    catch (Exception localException)
    {
      break label74;
    }
  }

  public static String j(Context paramContext)
  {
    Object localObject;
    try
    {
      if ((r.a(paramContext, "android.permission.INTERNET")) && (r.a(paramContext, "android.permission.ACCESS_NETWORK_STATE")))
      {
        localObject = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localObject == null) || (!((NetworkInfo)localObject).isConnected()))
          break label120;
        paramContext = ((NetworkInfo)localObject).getTypeName();
        localObject = ((NetworkInfo)localObject).getExtraInfo();
        if (paramContext == null)
          break label120;
        if (paramContext.equalsIgnoreCase("WIFI"))
          return "WIFI";
        if (!paramContext.equalsIgnoreCase("MOBILE"))
          break label114;
        if (localObject != null)
          return localObject;
      }
      else
      {
        k.e("can not get the permission of android.permission.ACCESS_WIFI_STATE");
        return "";
      }
    }
    catch (Throwable paramContext)
    {
      k.b(paramContext);
      return "";
    }
    return "MOBILE";
    label114: if (localObject != null)
    {
      return localObject;
      label120: paramContext = "";
    }
    return paramContext;
  }

  public static Integer k(Context paramContext)
  {
    try
    {
      paramContext = (TelephonyManager)paramContext.getSystemService("phone");
      if (paramContext != null)
      {
        int i1 = paramContext.getNetworkType();
        return Integer.valueOf(i1);
      }
    }
    catch (Throwable paramContext)
    {
    }
    return null;
  }

  public static String l(Context paramContext)
  {
    if (c(i))
      return i;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      i = paramContext;
      if ((paramContext == null) || (i.length() == 0))
        return "unknown";
    }
    catch (Throwable paramContext)
    {
      k.b(paramContext);
    }
    return i;
  }

  public static String m(Context paramContext)
  {
    if (c(l))
      return l;
    try
    {
      if (!r.a(paramContext, "android.permission.WRITE_EXTERNAL_STORAGE"))
        break label142;
      paramContext = Environment.getExternalStorageState();
      if ((paramContext != null) && (paramContext.equals("mounted")))
      {
        paramContext = Environment.getExternalStorageDirectory().getPath();
        if (paramContext != null)
        {
          paramContext = new StatFs(paramContext);
          long l1 = paramContext.getBlockCount() * paramContext.getBlockSize() / 1000000L;
          long l2 = paramContext.getAvailableBlocks();
          l2 = paramContext.getBlockSize() * l2 / 1000000L;
          paramContext = String.valueOf(l2) + "/" + String.valueOf(l1);
          l = paramContext;
          return paramContext;
        }
      }
    }
    catch (Throwable paramContext)
    {
      k.b(paramContext);
    }
    return null;
    label142: k.b("can not get the permission of android.permission.WRITE_EXTERNAL_STORAGE");
    return null;
  }

  static String n(Context paramContext)
  {
    try
    {
      if (m != null)
        return m;
      int i1 = Process.myPid();
      paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (localRunningAppProcessInfo.pid == i1)
          m = localRunningAppProcessInfo.processName;
      }
      label67: return m;
    }
    catch (Throwable paramContext)
    {
      break label67;
    }
  }

  public static String o(Context paramContext)
  {
    return a(paramContext, a.b);
  }

  public static Integer p(Context paramContext)
  {
    int i1 = 0;
    while (true)
    {
      int i2;
      try
      {
        if (n > 0)
        {
          i2 = n;
          if (i2 % 1000 == 0);
          try
          {
            i2 = n;
            if (n < 2147383647)
              break label107;
            q.b(paramContext, "MTA_EVENT_INDEX", i1);
            i1 = n + 1;
            n = i1;
            return Integer.valueOf(i1);
          }
          catch (Throwable paramContext)
          {
            k.c(paramContext);
            continue;
          }
        }
      }
      finally
      {
      }
      n = q.a(paramContext, "MTA_EVENT_INDEX", 0);
      q.b(paramContext, "MTA_EVENT_INDEX", n + 1000);
      continue;
      label107: i1 = i2 + 1000;
    }
  }

  public static String q(Context paramContext)
  {
    try
    {
      paramContext = (ActivityManager)paramContext.getSystemService("activity");
      ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
      paramContext.getMemoryInfo(localMemoryInfo);
      long l1 = localMemoryInfo.availMem / 1000000L;
      long l2 = j() / 1000000L;
      paramContext = String.valueOf(l1) + "/" + String.valueOf(l2);
      return paramContext;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }

  public static String r(Context paramContext)
  {
    if (c(r))
      return r;
    try
    {
      paramContext = (SensorManager)paramContext.getSystemService("sensor");
      if (paramContext != null)
      {
        paramContext = paramContext.getSensorList(-1);
        if (paramContext != null)
        {
          StringBuilder localStringBuilder = new StringBuilder(paramContext.size() * 10);
          i1 = 0;
          if (i1 < paramContext.size())
          {
            localStringBuilder.append(((Sensor)paramContext.get(i1)).getType());
            if (i1 == paramContext.size() - 1)
              break label130;
            localStringBuilder.append(",");
            break label130;
          }
          r = localStringBuilder.toString();
        }
      }
      return r;
    }
    catch (Throwable paramContext)
    {
      while (true)
      {
        int i1;
        k.b(paramContext);
        continue;
        label130: i1 += 1;
      }
    }
  }

  public static int s(Context paramContext)
  {
    try
    {
      if (u != -1);
      for (int i1 = u; ; i1 = u)
      {
        return i1;
        t(paramContext);
      }
    }
    finally
    {
    }
    throw paramContext;
  }

  public static void t(Context paramContext)
  {
    int i1 = q.a(paramContext, t, 1);
    u = i1;
    if (i1 == 1)
      q.b(paramContext, t, 0);
  }

  public static boolean u(Context paramContext)
  {
    if (v < 0L)
      v = q.a(paramContext, "mta.qq.com.checktime");
    return Math.abs(System.currentTimeMillis() - v) > 86400000L;
  }

  public static void v(Context paramContext)
  {
    v = System.currentTimeMillis();
    q.a(paramContext, "mta.qq.com.checktime", v);
  }

  public static String w(Context paramContext)
  {
    if (paramContext == null);
    do
    {
      return null;
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.HOME");
      paramContext = paramContext.getPackageManager().resolveActivity(localIntent, 0);
    }
    while ((paramContext.activityInfo == null) || (paramContext.activityInfo.packageName.equals("android")));
    return paramContext.activityInfo.packageName;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.l
 * JD-Core Version:    0.6.2
 */