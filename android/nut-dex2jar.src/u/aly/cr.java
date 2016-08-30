package u.aly;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.System;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.umeng.analytics.a;
import com.umeng.analytics.c;
import com.umeng.analytics.q;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Locale;
import java.util.Properties;
import java.util.TimeZone;

public class cr
{
  protected static final String a = cr.class.getName();

  private static int a(Object paramObject, String paramString)
  {
    try
    {
      paramString = DisplayMetrics.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      int i = paramString.getInt(paramObject);
      return i;
    }
    catch (Exception paramObject)
    {
      paramObject.printStackTrace();
    }
    return -1;
  }

  public static String a()
  {
    Object localObject2 = null;
    String str2 = null;
    Object localObject1 = localObject2;
    try
    {
      FileReader localFileReader = new FileReader("/proc/cpuinfo");
      String str1 = str2;
      localObject1 = localObject2;
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
        str1 = str2;
        localObject1 = localObject2;
        str2 = localBufferedReader.readLine();
        str1 = str2;
        localObject1 = str2;
        localBufferedReader.close();
        str1 = str2;
        localObject1 = str2;
        localFileReader.close();
        localObject1 = str2;
        if (localObject1 != null)
          return ((String)localObject1).substring(((String)localObject1).indexOf(':') + 1).trim();
      }
      catch (IOException localIOException)
      {
        while (true)
        {
          localObject1 = str1;
          ct.c(a, "Could not read from file /proc/cpuinfo", localIOException);
          localObject1 = str1;
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        ct.c(a, "Could not open file /proc/cpuinfo", localFileNotFoundException);
    }
    return "";
  }

  public static String a(Context paramContext)
  {
    try
    {
      int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
      return String.valueOf(i);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return "";
  }

  // ERROR //
  private static String a(String paramString)
    throws FileNotFoundException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: new 48	java/io/FileReader
    //   6: dup
    //   7: aload_0
    //   8: invokespecial 53	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   11: astore 5
    //   13: new 55	java/io/BufferedReader
    //   16: dup
    //   17: aload 5
    //   19: sipush 1024
    //   22: invokespecial 58	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   25: astore_2
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokevirtual 61	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   32: astore_3
    //   33: aload_3
    //   34: astore_0
    //   35: aload 5
    //   37: invokevirtual 65	java/io/FileReader:close	()V
    //   40: aload_2
    //   41: invokevirtual 64	java/io/BufferedReader:close	()V
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aload_1
    //   48: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   51: goto -11 -> 40
    //   54: astore_1
    //   55: aload_1
    //   56: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   59: aload_0
    //   60: areturn
    //   61: astore_3
    //   62: aconst_null
    //   63: astore_2
    //   64: aload_2
    //   65: astore_1
    //   66: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   69: new 121	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 123
    //   75: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_0
    //   79: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: aload_3
    //   86: invokestatic 86	u/aly/ct:c	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   89: aload 5
    //   91: invokevirtual 65	java/io/FileReader:close	()V
    //   94: aload 4
    //   96: astore_0
    //   97: aload_2
    //   98: ifnull -54 -> 44
    //   101: aload_2
    //   102: invokevirtual 64	java/io/BufferedReader:close	()V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_0
    //   108: aload_0
    //   109: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   112: aconst_null
    //   113: areturn
    //   114: astore_0
    //   115: aload_0
    //   116: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   119: goto -25 -> 94
    //   122: astore_0
    //   123: aconst_null
    //   124: astore_1
    //   125: aload 5
    //   127: invokevirtual 65	java/io/FileReader:close	()V
    //   130: aload_1
    //   131: ifnull +7 -> 138
    //   134: aload_1
    //   135: invokevirtual 64	java/io/BufferedReader:close	()V
    //   138: aload_0
    //   139: athrow
    //   140: astore_2
    //   141: aload_2
    //   142: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   145: goto -15 -> 130
    //   148: astore_1
    //   149: aload_1
    //   150: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   153: goto -15 -> 138
    //   156: astore_0
    //   157: goto -32 -> 125
    //   160: astore_3
    //   161: goto -97 -> 64
    //
    // Exception table:
    //   from	to	target	type
    //   35	40	46	java/io/IOException
    //   40	44	54	java/io/IOException
    //   13	26	61	java/io/IOException
    //   101	105	107	java/io/IOException
    //   89	94	114	java/io/IOException
    //   13	26	122	finally
    //   125	130	140	java/io/IOException
    //   134	138	148	java/io/IOException
    //   28	33	156	finally
    //   66	89	156	finally
    //   28	33	160	java/io/IOException
  }

  private static String a(Properties paramProperties)
  {
    paramProperties = paramProperties.getProperty("ro.yunos.version");
    if (!TextUtils.isEmpty(paramProperties))
      return paramProperties;
    return null;
  }

  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      Object localObject2 = Integer.toHexString(paramArrayOfByte[i]);
      int j = ((String)localObject2).length();
      Object localObject1 = localObject2;
      if (j == 1)
        localObject1 = "0" + (String)localObject2;
      localObject2 = localObject1;
      if (j > 2)
        localObject2 = ((String)localObject1).substring(j - 2, j);
      localStringBuilder.append(((String)localObject2).toUpperCase());
      if (i < paramArrayOfByte.length - 1)
        localStringBuilder.append(':');
      i += 1;
    }
    return localStringBuilder.toString();
  }

  public static boolean a(Context paramContext, String paramString)
  {
    if (Build.VERSION.SDK_INT >= 23)
      try
      {
        int i = ((Integer)Class.forName("android.content.Context").getMethod("checkSelfPermission", new Class[] { String.class }).invoke(paramContext, new Object[] { paramString })).intValue();
        return i == 0;
      }
      catch (Exception paramContext)
      {
        return false;
      }
    return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
  }

  public static String b()
  {
    Properties localProperties = e();
    String str;
    try
    {
      str = localProperties.getProperty("ro.miui.ui.version.name");
      if (TextUtils.isEmpty(str))
      {
        if (f())
          return "Flyme";
        if (!TextUtils.isEmpty(a(localProperties)))
          return "YunOS";
      }
      else
      {
        return "MIUI";
      }
    }
    catch (Exception localException)
    {
      str = null;
      localException.printStackTrace();
    }
    return str;
  }

  public static String b(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return "";
  }

  private static String b(Properties paramProperties)
  {
    try
    {
      paramProperties = paramProperties.getProperty("ro.build.display.id").toLowerCase(Locale.getDefault());
      if (paramProperties.contains("flyme os"))
      {
        paramProperties = paramProperties.split(" ")[2];
        return paramProperties;
      }
    }
    catch (Exception paramProperties)
    {
    }
    return null;
  }

  // ERROR //
  public static String c()
  {
    // Byte code:
    //   0: invokestatic 206	u/aly/cr:e	()Ljava/util/Properties;
    //   3: astore_3
    //   4: aload_3
    //   5: ldc 208
    //   7: invokevirtual 140	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore_2
    //   11: aload_2
    //   12: astore_1
    //   13: aload_2
    //   14: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   17: ifeq +16 -> 33
    //   20: invokestatic 212	u/aly/cr:f	()Z
    //   23: istore_0
    //   24: iload_0
    //   25: ifeq +10 -> 35
    //   28: aload_3
    //   29: invokestatic 248	u/aly/cr:b	(Ljava/util/Properties;)Ljava/lang/String;
    //   32: astore_1
    //   33: aload_1
    //   34: areturn
    //   35: aload_3
    //   36: invokestatic 216	u/aly/cr:a	(Ljava/util/Properties;)Ljava/lang/String;
    //   39: astore_1
    //   40: aload_1
    //   41: areturn
    //   42: astore_1
    //   43: aload_1
    //   44: invokevirtual 42	java/lang/Exception:printStackTrace	()V
    //   47: aconst_null
    //   48: areturn
    //   49: astore_1
    //   50: aload_2
    //   51: areturn
    //   52: astore_1
    //   53: aload_2
    //   54: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   4	11	42	java/lang/Exception
    //   13	24	42	java/lang/Exception
    //   28	33	49	java/lang/Exception
    //   35	40	52	java/lang/Exception
  }

  public static String c(Context paramContext)
  {
    if ((c.c.e == a.d(paramContext)) || (c.d.e == a.d(paramContext)))
      return y(paramContext);
    return x(paramContext);
  }

  private static String d()
  {
    if (q.a)
    {
      int i = 0;
      while (i < 3)
        try
        {
          String str = a(new String[] { "/sys/class/net/wlan0/address", "/sys/class/net/eth0/address", "/sys/devices/virtual/net/wlan0/address" }[i]);
          if (str != null)
            return str;
        }
        catch (Exception localException)
        {
          ct.c(a, "open file  Failed", localException);
          i += 1;
        }
    }
    return null;
  }

  public static String d(Context paramContext)
  {
    return cs.b(c(paramContext));
  }

  public static String e(Context paramContext)
  {
    if (u(paramContext) == null);
    int i;
    int j;
    do
    {
      return null;
      i = paramContext.getResources().getConfiguration().mcc;
      j = paramContext.getResources().getConfiguration().mnc;
    }
    while (i == 0);
    paramContext = String.valueOf(j);
    if (j < 10)
      paramContext = String.format("%02d", new Object[] { Integer.valueOf(j) });
    return String.valueOf(i) + paramContext;
  }

  // ERROR //
  private static Properties e()
  {
    // Byte code:
    //   0: new 137	java/util/Properties
    //   3: dup
    //   4: invokespecial 328	java/util/Properties:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore_0
    //   10: new 330	java/io/FileInputStream
    //   13: dup
    //   14: new 332	java/io/File
    //   17: dup
    //   18: invokestatic 338	android/os/Environment:getRootDirectory	()Ljava/io/File;
    //   21: ldc_w 340
    //   24: invokespecial 343	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   27: invokespecial 346	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   30: astore_1
    //   31: aload_1
    //   32: astore_0
    //   33: aload_3
    //   34: aload_1
    //   35: invokevirtual 350	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   38: aload_1
    //   39: invokevirtual 351	java/io/FileInputStream:close	()V
    //   42: aload_3
    //   43: areturn
    //   44: astore_0
    //   45: aload_0
    //   46: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   49: aload_3
    //   50: areturn
    //   51: astore_2
    //   52: aconst_null
    //   53: astore_1
    //   54: aload_1
    //   55: astore_0
    //   56: aload_2
    //   57: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   60: aload_1
    //   61: ifnull -19 -> 42
    //   64: aload_1
    //   65: invokevirtual 351	java/io/FileInputStream:close	()V
    //   68: aload_3
    //   69: areturn
    //   70: astore_0
    //   71: aload_0
    //   72: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   75: aload_3
    //   76: areturn
    //   77: astore_2
    //   78: aload_0
    //   79: astore_1
    //   80: aload_2
    //   81: astore_0
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 351	java/io/FileInputStream:close	()V
    //   90: aload_0
    //   91: athrow
    //   92: astore_1
    //   93: aload_1
    //   94: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   97: goto -7 -> 90
    //   100: astore_2
    //   101: aload_0
    //   102: astore_1
    //   103: aload_2
    //   104: astore_0
    //   105: goto -23 -> 82
    //   108: astore_2
    //   109: goto -55 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   38	42	44	java/io/IOException
    //   10	31	51	java/io/IOException
    //   64	68	70	java/io/IOException
    //   10	31	77	finally
    //   86	90	92	java/io/IOException
    //   33	38	100	finally
    //   56	60	100	finally
    //   33	38	108	java/io/IOException
  }

  public static String f(Context paramContext)
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
      if (!a(paramContext, "android.permission.READ_PHONE_STATE"))
        return "";
      if (localTelephonyManager == null)
        return "";
      paramContext = localTelephonyManager.getNetworkOperatorName();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return "";
  }

  private static boolean f()
  {
    try
    {
      Build.class.getMethod("hasSmartBar", new Class[0]);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  public static String[] g(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = "";
    arrayOfString[1] = "";
    try
    {
      if (!a(paramContext, "android.permission.ACCESS_NETWORK_STATE"))
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null)
      {
        arrayOfString[0] = "";
        return arrayOfString;
      }
      if (paramContext.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "Wi-Fi";
        return arrayOfString;
      }
      paramContext = paramContext.getNetworkInfo(0);
      if (paramContext.getState() == NetworkInfo.State.CONNECTED)
      {
        arrayOfString[0] = "2G/3G";
        arrayOfString[1] = paramContext.getSubtypeName();
        return arrayOfString;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return arrayOfString;
  }

  public static boolean h(Context paramContext)
  {
    return "Wi-Fi".equals(g(paramContext)[0]);
  }

  public static boolean i(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        boolean bool = paramContext.isConnectedOrConnecting();
        return bool;
      }
      return false;
    }
    catch (Exception paramContext)
    {
    }
    return true;
  }

  public static int j(Context paramContext)
  {
    try
    {
      paramContext = Calendar.getInstance(v(paramContext));
      if (paramContext != null)
      {
        int i = paramContext.getTimeZone().getRawOffset() / 3600000;
        return i;
      }
    }
    catch (Exception paramContext)
    {
      ct.a(a, "error in getTimeZone", paramContext);
    }
    return 8;
  }

  public static boolean k(Context paramContext)
  {
    fk localfk = fj.a(paramContext).b;
    String str = "";
    if (localfk.g != null)
      str = localfk.g;
    if (!TextUtils.isEmpty(str))
      return str.equals("cn");
    if (u(paramContext) == null)
    {
      paramContext = l(paramContext)[0];
      if ((!TextUtils.isEmpty(paramContext)) && (paramContext.equalsIgnoreCase("cn")))
        return true;
    }
    else
    {
      int i = paramContext.getResources().getConfiguration().mcc;
      if ((i == 460) || (i == 461))
        return true;
      if (i == 0)
      {
        paramContext = l(paramContext)[0];
        if ((!TextUtils.isEmpty(paramContext)) && (paramContext.equalsIgnoreCase("cn")))
          return true;
      }
    }
    return false;
  }

  public static String[] l(Context paramContext)
  {
    String[] arrayOfString = new String[2];
    try
    {
      paramContext = v(paramContext);
      if (paramContext != null)
      {
        arrayOfString[0] = paramContext.getCountry();
        arrayOfString[1] = paramContext.getLanguage();
      }
      if (TextUtils.isEmpty(arrayOfString[0]))
        arrayOfString[0] = "Unknown";
      if (TextUtils.isEmpty(arrayOfString[1]))
        arrayOfString[1] = "Unknown";
      return arrayOfString;
    }
    catch (Exception paramContext)
    {
      ct.c(a, "error in getLocaleInfo", paramContext);
    }
    return arrayOfString;
  }

  public static String m(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if (paramContext != null)
      {
        paramContext = paramContext.metaData.getString("UMENG_APPKEY");
        if (paramContext != null)
          return paramContext.trim();
        ct.b(a, new Object[] { "getAppkey failed. the applicationinfo is null!" });
      }
      return null;
    }
    catch (Exception paramContext)
    {
      while (true)
        ct.c(a, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", paramContext);
    }
  }

  public static String n(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      String str2 = d();
      String str1 = str2;
      if (str2 == null)
        str1 = w(paramContext);
      return str1;
    }
    return w(paramContext);
  }

  public static int[] o(Context paramContext)
  {
    while (true)
    {
      int j;
      int i;
      int k;
      try
      {
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        if ((paramContext.getApplicationInfo().flags & 0x2000) == 0)
        {
          j = a(localDisplayMetrics, "noncompatWidthPixels");
          i = a(localDisplayMetrics, "noncompatHeightPixels");
          break label134;
          i = localDisplayMetrics.widthPixels;
          j = localDisplayMetrics.heightPixels;
          k = i;
          i = j;
          label83: paramContext = new int[2];
          if (k > i)
          {
            paramContext[0] = i;
            paramContext[1] = k;
            return paramContext;
          }
          paramContext[0] = k;
          paramContext[1] = i;
          return paramContext;
        }
      }
      catch (Exception paramContext)
      {
        ct.c(a, "read resolution fail", paramContext);
        return null;
      }
      label134: 
      do
      {
        k = j;
        break label83;
        i = 0;
        j = -1;
        if (j == -1)
          break;
      }
      while (i != -1);
    }
  }

  public static String p(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
      if ((paramContext != null) && (paramContext.metaData != null))
      {
        paramContext = paramContext.metaData.get("UMENG_CHANNEL");
        if (paramContext != null)
        {
          paramContext = paramContext.toString();
          if (paramContext != null)
            return paramContext;
          ct.a(a, new Object[] { "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml." });
        }
      }
      return "Unknown";
    }
    catch (Exception paramContext)
    {
      ct.a(a, new Object[] { "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml." });
      paramContext.printStackTrace();
    }
    return "Unknown";
  }

  public static String q(Context paramContext)
  {
    return paramContext.getPackageName();
  }

  // ERROR //
  public static String r(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 99	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore_1
    //   5: aload_1
    //   6: aload_0
    //   7: invokevirtual 102	android/content/Context:getPackageName	()Ljava/lang/String;
    //   10: bipush 64
    //   12: invokevirtual 108	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   15: astore_0
    //   16: new 563	java/io/ByteArrayInputStream
    //   19: dup
    //   20: aload_0
    //   21: getfield 567	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   24: iconst_0
    //   25: aaload
    //   26: invokevirtual 573	android/content/pm/Signature:toByteArray	()[B
    //   29: invokespecial 576	java/io/ByteArrayInputStream:<init>	([B)V
    //   32: astore_1
    //   33: ldc_w 578
    //   36: invokestatic 583	java/security/cert/CertificateFactory:getInstance	(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    //   39: astore_0
    //   40: aload_0
    //   41: aload_1
    //   42: invokevirtual 587	java/security/cert/CertificateFactory:generateCertificate	(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    //   45: checkcast 589	java/security/cert/X509Certificate
    //   48: astore_0
    //   49: ldc_w 591
    //   52: invokestatic 596	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   55: aload_0
    //   56: invokevirtual 599	java/security/cert/X509Certificate:getEncoded	()[B
    //   59: invokevirtual 603	java/security/MessageDigest:digest	([B)[B
    //   62: invokestatic 605	u/aly/cr:a	([B)Ljava/lang/String;
    //   65: astore_0
    //   66: aload_0
    //   67: areturn
    //   68: astore_0
    //   69: aload_0
    //   70: invokevirtual 606	android/content/pm/PackageManager$NameNotFoundException:printStackTrace	()V
    //   73: aconst_null
    //   74: astore_0
    //   75: goto -59 -> 16
    //   78: astore_0
    //   79: aload_0
    //   80: invokevirtual 607	java/security/cert/CertificateException:printStackTrace	()V
    //   83: aconst_null
    //   84: astore_0
    //   85: goto -45 -> 40
    //   88: astore_0
    //   89: aload_0
    //   90: invokevirtual 607	java/security/cert/CertificateException:printStackTrace	()V
    //   93: aconst_null
    //   94: astore_0
    //   95: goto -46 -> 49
    //   98: astore_0
    //   99: aload_0
    //   100: invokevirtual 608	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   103: aconst_null
    //   104: areturn
    //   105: astore_0
    //   106: aload_0
    //   107: invokevirtual 609	java/security/cert/CertificateEncodingException:printStackTrace	()V
    //   110: aconst_null
    //   111: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   5	16	68	android/content/pm/PackageManager$NameNotFoundException
    //   33	40	78	java/security/cert/CertificateException
    //   40	49	88	java/security/cert/CertificateException
    //   49	66	98	java/security/NoSuchAlgorithmException
    //   49	66	105	java/security/cert/CertificateEncodingException
  }

  public static String s(Context paramContext)
  {
    return paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo()).toString();
  }

  public static String t(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).applicationInfo.loadLabel(paramContext.getPackageManager()).toString();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      ct.a(a, paramContext);
    }
    return null;
  }

  private static String u(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (a(paramContext, "android.permission.READ_PHONE_STATE"))
      return localTelephonyManager.getSubscriberId();
    return null;
  }

  private static Locale v(Context paramContext)
  {
    Object localObject = null;
    try
    {
      Configuration localConfiguration = new Configuration();
      localConfiguration.setToDefaults();
      Settings.System.getConfiguration(paramContext.getContentResolver(), localConfiguration);
      paramContext = localConfiguration.locale;
      localObject = paramContext;
      if (paramContext == null)
        localObject = Locale.getDefault();
      return localObject;
    }
    catch (Exception paramContext)
    {
      while (true)
      {
        ct.b(a, new Object[] { "fail to read user config locale" });
        paramContext = (Context)localObject;
      }
    }
  }

  private static String w(Context paramContext)
  {
    try
    {
      WifiManager localWifiManager = (WifiManager)paramContext.getSystemService("wifi");
      if (a(paramContext, "android.permission.ACCESS_WIFI_STATE"))
        return localWifiManager.getConnectionInfo().getMacAddress();
      ct.c(a, new Object[] { "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE" });
      return "";
    }
    catch (Exception paramContext)
    {
      ct.c(a, new Object[] { "Could not get mac address." + paramContext.toString() });
    }
    return "";
  }

  // ERROR //
  private static String x(Context paramContext)
  {
    // Byte code:
    //   0: ldc 90
    //   2: astore_2
    //   3: aload_0
    //   4: ldc_w 353
    //   7: invokevirtual 357	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   10: checkcast 359	android/telephony/TelephonyManager
    //   13: astore_3
    //   14: getstatic 176	android/os/Build$VERSION:SDK_INT	I
    //   17: bipush 23
    //   19: if_icmplt +217 -> 236
    //   22: aload_3
    //   23: ifnull +354 -> 377
    //   26: aload_0
    //   27: ldc_w 361
    //   30: invokestatic 363	u/aly/cr:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   33: ifeq +344 -> 377
    //   36: aload_3
    //   37: invokevirtual 676	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   40: astore_2
    //   41: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   44: iconst_1
    //   45: anewarray 4	java/lang/Object
    //   48: dup
    //   49: iconst_0
    //   50: new 121	java/lang/StringBuilder
    //   53: dup
    //   54: ldc_w 678
    //   57: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_2
    //   61: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: aastore
    //   68: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   71: aload_2
    //   72: astore_1
    //   73: aload_2
    //   74: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   77: ifeq +140 -> 217
    //   80: invokestatic 502	u/aly/cr:d	()Ljava/lang/String;
    //   83: astore_2
    //   84: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   87: iconst_1
    //   88: anewarray 4	java/lang/Object
    //   91: dup
    //   92: iconst_0
    //   93: new 121	java/lang/StringBuilder
    //   96: dup
    //   97: ldc_w 680
    //   100: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   103: aload_2
    //   104: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: aastore
    //   111: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   114: aload_2
    //   115: astore_1
    //   116: aload_2
    //   117: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   120: ifeq +97 -> 217
    //   123: aload_0
    //   124: invokevirtual 640	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   127: ldc_w 682
    //   130: invokestatic 687	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   133: astore_0
    //   134: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   137: iconst_1
    //   138: anewarray 4	java/lang/Object
    //   141: dup
    //   142: iconst_0
    //   143: new 121	java/lang/StringBuilder
    //   146: dup
    //   147: ldc_w 689
    //   150: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   160: aastore
    //   161: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   164: aload_0
    //   165: astore_1
    //   166: aload_0
    //   167: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   170: ifeq +47 -> 217
    //   173: aload_0
    //   174: astore_1
    //   175: getstatic 176	android/os/Build$VERSION:SDK_INT	I
    //   178: bipush 9
    //   180: if_icmplt +7 -> 187
    //   183: getstatic 692	android/os/Build:SERIAL	Ljava/lang/String;
    //   186: astore_1
    //   187: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   190: iconst_1
    //   191: anewarray 4	java/lang/Object
    //   194: dup
    //   195: iconst_0
    //   196: new 121	java/lang/StringBuilder
    //   199: dup
    //   200: ldc_w 694
    //   203: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   206: aload_1
    //   207: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   210: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   213: aastore
    //   214: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   217: aload_1
    //   218: areturn
    //   219: astore_1
    //   220: ldc 90
    //   222: astore_2
    //   223: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   226: ldc_w 696
    //   229: aload_1
    //   230: invokestatic 698	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   233: goto -162 -> 71
    //   236: aload_2
    //   237: astore_1
    //   238: aload_3
    //   239: ifnull +20 -> 259
    //   242: aload_2
    //   243: astore_1
    //   244: aload_0
    //   245: ldc_w 361
    //   248: invokestatic 363	u/aly/cr:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   251: ifeq +8 -> 259
    //   254: aload_3
    //   255: invokevirtual 676	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   258: astore_1
    //   259: aload_1
    //   260: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   263: ifeq +112 -> 375
    //   266: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   269: iconst_1
    //   270: anewarray 4	java/lang/Object
    //   273: dup
    //   274: iconst_0
    //   275: ldc_w 696
    //   278: aastore
    //   279: invokestatic 670	u/aly/ct:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   282: aload_0
    //   283: invokestatic 700	u/aly/cr:n	(Landroid/content/Context;)Ljava/lang/String;
    //   286: astore_2
    //   287: aload_2
    //   288: astore_1
    //   289: aload_2
    //   290: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   293: ifeq -76 -> 217
    //   296: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   299: iconst_1
    //   300: anewarray 4	java/lang/Object
    //   303: dup
    //   304: iconst_0
    //   305: ldc_w 702
    //   308: aastore
    //   309: invokestatic 670	u/aly/ct:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   312: aload_0
    //   313: invokevirtual 640	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   316: ldc_w 682
    //   319: invokestatic 687	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   322: astore_0
    //   323: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   326: iconst_1
    //   327: anewarray 4	java/lang/Object
    //   330: dup
    //   331: iconst_0
    //   332: new 121	java/lang/StringBuilder
    //   335: dup
    //   336: ldc_w 704
    //   339: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   342: aload_0
    //   343: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: aastore
    //   350: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   353: aload_0
    //   354: areturn
    //   355: astore_1
    //   356: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   359: ldc_w 696
    //   362: aload_1
    //   363: invokestatic 698	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   366: aload_2
    //   367: astore_1
    //   368: goto -109 -> 259
    //   371: astore_1
    //   372: goto -149 -> 223
    //   375: aload_1
    //   376: areturn
    //   377: ldc 90
    //   379: astore_2
    //   380: goto -309 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   26	41	219	java/lang/Exception
    //   244	259	355	java/lang/Exception
    //   41	71	371	java/lang/Exception
  }

  // ERROR //
  private static String y(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 353
    //   4: invokevirtual 357	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   7: checkcast 359	android/telephony/TelephonyManager
    //   10: astore_3
    //   11: getstatic 176	android/os/Build$VERSION:SDK_INT	I
    //   14: bipush 23
    //   16: if_icmplt +214 -> 230
    //   19: aload_0
    //   20: invokevirtual 640	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   23: ldc_w 682
    //   26: invokestatic 687	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_2
    //   30: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: new 121	java/lang/StringBuilder
    //   42: dup
    //   43: ldc_w 689
    //   46: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   49: aload_2
    //   50: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   56: aastore
    //   57: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   60: aload_2
    //   61: astore_1
    //   62: aload_2
    //   63: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   66: ifeq +146 -> 212
    //   69: invokestatic 502	u/aly/cr:d	()Ljava/lang/String;
    //   72: astore_2
    //   73: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   76: iconst_1
    //   77: anewarray 4	java/lang/Object
    //   80: dup
    //   81: iconst_0
    //   82: new 121	java/lang/StringBuilder
    //   85: dup
    //   86: ldc_w 680
    //   89: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload_2
    //   93: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: aastore
    //   100: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   103: aload_2
    //   104: astore_1
    //   105: aload_2
    //   106: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   109: ifeq +103 -> 212
    //   112: aload_3
    //   113: ifnull +244 -> 357
    //   116: aload_0
    //   117: ldc_w 361
    //   120: invokestatic 363	u/aly/cr:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   123: ifeq +234 -> 357
    //   126: aload_3
    //   127: invokevirtual 676	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   130: astore_0
    //   131: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   134: iconst_1
    //   135: anewarray 4	java/lang/Object
    //   138: dup
    //   139: iconst_0
    //   140: new 121	java/lang/StringBuilder
    //   143: dup
    //   144: ldc_w 678
    //   147: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   150: aload_0
    //   151: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: aastore
    //   158: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   161: aload_0
    //   162: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   165: ifeq +190 -> 355
    //   168: getstatic 176	android/os/Build$VERSION:SDK_INT	I
    //   171: bipush 9
    //   173: if_icmplt +7 -> 180
    //   176: getstatic 692	android/os/Build:SERIAL	Ljava/lang/String;
    //   179: astore_0
    //   180: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   183: iconst_1
    //   184: anewarray 4	java/lang/Object
    //   187: dup
    //   188: iconst_0
    //   189: new 121	java/lang/StringBuilder
    //   192: dup
    //   193: ldc_w 694
    //   196: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   199: aload_0
    //   200: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   206: aastore
    //   207: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   210: aload_0
    //   211: astore_1
    //   212: aload_1
    //   213: areturn
    //   214: astore_1
    //   215: aload_2
    //   216: astore_0
    //   217: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   220: ldc_w 696
    //   223: aload_1
    //   224: invokestatic 698	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   227: goto -66 -> 161
    //   230: aload_0
    //   231: invokevirtual 640	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   234: ldc_w 682
    //   237: invokestatic 687	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   240: astore_2
    //   241: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   244: iconst_1
    //   245: anewarray 4	java/lang/Object
    //   248: dup
    //   249: iconst_0
    //   250: new 121	java/lang/StringBuilder
    //   253: dup
    //   254: ldc_w 704
    //   257: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   260: aload_2
    //   261: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: aastore
    //   268: invokestatic 553	u/aly/ct:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   271: aload_2
    //   272: astore_1
    //   273: aload_2
    //   274: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   277: ifeq -65 -> 212
    //   280: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   283: iconst_1
    //   284: anewarray 4	java/lang/Object
    //   287: dup
    //   288: iconst_0
    //   289: ldc_w 696
    //   292: aastore
    //   293: invokestatic 670	u/aly/ct:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   296: aload_0
    //   297: invokestatic 700	u/aly/cr:n	(Landroid/content/Context;)Ljava/lang/String;
    //   300: astore_2
    //   301: aload_2
    //   302: astore_1
    //   303: aload_2
    //   304: invokestatic 146	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   307: ifeq -95 -> 212
    //   310: aload_2
    //   311: astore_1
    //   312: aload_3
    //   313: ifnull -101 -> 212
    //   316: aload_0
    //   317: ldc_w 361
    //   320: invokestatic 363	u/aly/cr:a	(Landroid/content/Context;Ljava/lang/String;)Z
    //   323: ifeq +27 -> 350
    //   326: aload_3
    //   327: invokevirtual 676	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   330: astore_0
    //   331: aload_0
    //   332: areturn
    //   333: astore_0
    //   334: getstatic 16	u/aly/cr:a	Ljava/lang/String;
    //   337: ldc_w 696
    //   340: aload_0
    //   341: invokestatic 698	u/aly/ct:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   344: aload_2
    //   345: areturn
    //   346: astore_1
    //   347: goto -130 -> 217
    //   350: aload_2
    //   351: astore_0
    //   352: goto -21 -> 331
    //   355: aload_0
    //   356: areturn
    //   357: aload_2
    //   358: astore_0
    //   359: goto -198 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   116	131	214	java/lang/Exception
    //   316	331	333	java/lang/Exception
    //   131	161	346	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.cr
 * JD-Core Version:    0.6.2
 */