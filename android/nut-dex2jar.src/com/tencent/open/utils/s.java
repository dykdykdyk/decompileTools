package com.tencent.open.utils;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.tencent.open.a.h;
import com.tencent.open.b.a;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class s
{
  private static String a = "";
  private static String b = "";
  private static String c = "";
  private static String d = "";
  private static int e = -1;
  private static String f;
  private static String g = "0123456789ABCDEF";

  private static char a(int paramInt)
  {
    paramInt &= 15;
    if (paramInt < 10)
      return (char)(paramInt + 48);
    return (char)(paramInt - 10 + 97);
  }

  public static Bundle a(String paramString)
  {
    int i = 0;
    Bundle localBundle = new Bundle();
    Object localObject = localBundle;
    if (paramString != null)
      try
      {
        paramString = paramString.split("&");
        int j = paramString.length;
        while (true)
        {
          localObject = localBundle;
          if (i >= j)
            break;
          localObject = paramString[i].split("=");
          if (localObject.length == 2)
            localBundle.putString(URLDecoder.decode(localObject[0]), URLDecoder.decode(localObject[1]));
          i += 1;
        }
      }
      catch (Exception paramString)
      {
        localObject = null;
      }
    return localObject;
  }

  public static Bundle a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("platform", "1");
    localBundle.putString("result", paramString1);
    localBundle.putString("code", paramString2);
    localBundle.putString("tmcost", paramString3);
    localBundle.putString("rate", paramString4);
    localBundle.putString("cmd", paramString5);
    localBundle.putString("uin", paramString6);
    localBundle.putString("appid", paramString7);
    localBundle.putString("share_type", paramString8);
    localBundle.putString("detail", paramString9);
    localBundle.putString("os_ver", Build.VERSION.RELEASE);
    localBundle.putString("network", a.a(g.a()));
    localBundle.putString("apn", a.b(g.a()));
    localBundle.putString("model_name", Build.MODEL);
    localBundle.putString("sdk_ver", "2.9.4.lite");
    localBundle.putString("packagename", g.b());
    localBundle.putString("app_ver", c(g.a(), g.b()));
    return localBundle;
  }

  public static Bundle a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("openid", paramString1);
    localBundle.putString("report_type", paramString2);
    localBundle.putString("act_type", paramString3);
    localBundle.putString("via", paramString4);
    localBundle.putString("app_id", paramString5);
    localBundle.putString("result", paramString6);
    localBundle.putString("type", paramString7);
    localBundle.putString("login_status", paramString8);
    localBundle.putString("need_user_auth", paramString9);
    localBundle.putString("to_uin", paramString10);
    localBundle.putString("call_source", paramString11);
    localBundle.putString("to_type", paramString12);
    return localBundle;
  }

  public static String a()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if ((localObject == null) || (!((Enumeration)localObject).hasMoreElements()))
            break;
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      }
      while (localInetAddress.isLoopbackAddress());
      Object localObject = localInetAddress.getHostAddress().toString();
      return localObject;
    }
    catch (SocketException localSocketException)
    {
      h.a("openSDK_LOG.Util", "getUserIp SocketException ", localSocketException);
    }
    return "";
  }

  public static String a(Bundle paramBundle)
  {
    if (paramBundle == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = paramBundle.get((String)localObject1);
      if (((localObject2 instanceof String)) || ((localObject2 instanceof String[])))
        if ((localObject2 instanceof String[]))
        {
          int j;
          int k;
          if (i != 0)
          {
            j = 0;
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=");
            localObject1 = paramBundle.getStringArray((String)localObject1);
            i = j;
            if (localObject1 != null)
            {
              k = 0;
              label135: i = j;
              if (k < localObject1.length)
                if (k == 0)
                  localStringBuilder.append(URLEncoder.encode(localObject1[k]));
            }
          }
          else
          {
            while (true)
            {
              k += 1;
              break label135;
              localStringBuilder.append("&");
              j = i;
              break;
              localStringBuilder.append(URLEncoder.encode("," + localObject1[k]));
            }
          }
        }
        else
        {
          if (i != 0)
            i = 0;
          while (true)
          {
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=" + URLEncoder.encode(paramBundle.getString((String)localObject1)));
            break;
            localStringBuilder.append("&");
          }
        }
    }
    return localStringBuilder.toString();
  }

  // ERROR //
  public static final String a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokestatic 248	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +10 -> 16
    //   9: ldc 17
    //   11: astore 5
    //   13: aload 5
    //   15: areturn
    //   16: ldc 250
    //   18: astore 6
    //   20: aconst_null
    //   21: invokestatic 248	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   24: ifne +6 -> 30
    //   27: aconst_null
    //   28: astore 6
    //   30: aload_0
    //   31: astore 5
    //   33: aload_0
    //   34: aload 6
    //   36: invokevirtual 254	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   39: arraylength
    //   40: iload_1
    //   41: if_icmple -28 -> 13
    //   44: iconst_0
    //   45: istore_3
    //   46: aload_0
    //   47: astore 5
    //   49: iload_2
    //   50: aload_0
    //   51: invokevirtual 258	java/lang/String:length	()I
    //   54: if_icmpge -41 -> 13
    //   57: aload_0
    //   58: iload_2
    //   59: iload_2
    //   60: iconst_1
    //   61: iadd
    //   62: invokevirtual 262	java/lang/String:substring	(II)Ljava/lang/String;
    //   65: aload 6
    //   67: invokevirtual 254	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   70: arraylength
    //   71: istore 4
    //   73: iload_3
    //   74: iload 4
    //   76: iadd
    //   77: iload_1
    //   78: if_icmple +47 -> 125
    //   81: aload_0
    //   82: iconst_0
    //   83: iload_2
    //   84: invokevirtual 262	java/lang/String:substring	(II)Ljava/lang/String;
    //   87: astore 5
    //   89: aload 5
    //   91: astore_0
    //   92: aload_0
    //   93: astore 5
    //   95: aconst_null
    //   96: invokestatic 248	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   99: ifne +23 -> 122
    //   102: new 195	java/lang/StringBuilder
    //   105: dup
    //   106: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   109: aload_0
    //   110: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aconst_null
    //   114: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: astore 5
    //   122: aload 5
    //   124: areturn
    //   125: iload_3
    //   126: iload 4
    //   128: iadd
    //   129: istore_3
    //   130: iload_2
    //   131: iconst_1
    //   132: iadd
    //   133: istore_2
    //   134: goto -88 -> 46
    //   137: astore 5
    //   139: getstatic 268	java/lang/System:out	Ljava/io/PrintStream;
    //   142: new 195	java/lang/StringBuilder
    //   145: dup
    //   146: ldc_w 270
    //   149: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   152: aload 5
    //   154: invokevirtual 273	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   157: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: invokevirtual 230	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   163: invokevirtual 278	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   166: aload_0
    //   167: areturn
    //   168: astore 5
    //   170: goto -31 -> 139
    //
    // Exception table:
    //   from	to	target	type
    //   33	44	137	java/lang/Exception
    //   49	73	137	java/lang/Exception
    //   81	89	137	java/lang/Exception
    //   95	122	168	java/lang/Exception
  }

  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toString(paramArrayOfByte[i] & 0xFF, 16);
      String str1 = str2;
      if (str2.length() == 1)
        str1 = "0" + str2;
      localStringBuilder.append(str1);
      i += 1;
    }
    return localStringBuilder.toString();
  }

  private static JSONObject a(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null)
      localJSONObject = new JSONObject();
    if (paramString != null)
    {
      paramJSONObject = paramString.split("&");
      int j = paramJSONObject.length;
      int i = 0;
      while (true)
        if (i < j)
        {
          paramString = paramJSONObject[i].split("=");
          if (paramString.length == 2);
          try
          {
            localJSONObject.put(URLDecoder.decode(paramString[0]), URLDecoder.decode(paramString[1]));
            i += 1;
          }
          catch (JSONException paramString)
          {
            while (true)
              h.e("openSDK_LOG.Util", "decodeUrlToJson has exception: " + paramString.getMessage());
          }
        }
    }
    return localJSONObject;
  }

  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(paramString1, paramString2));
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.addFlags(1073741824);
    localIntent.addFlags(268435456);
    localIntent.setData(Uri.parse(paramString3));
    paramContext.startActivity(localIntent);
  }

  public static boolean a(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      int i = o.a(paramContext.getPackageInfo("com.tencent.mobileqq", 0).versionName, "4.1");
      if (i >= 0)
        bool = true;
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      h.b("openSDK_LOG.Util", "NameNotFoundException", paramContext);
    }
    return false;
  }

  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      bool = f(paramContext);
      if (bool);
      try
      {
        a(paramContext, "com.tencent.mtt", "com.tencent.mtt.MainActivity", paramString);
        break label127;
        a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException1)
      {
      }
      if (bool)
        try
        {
          a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
        }
        catch (Exception localException2)
        {
          try
          {
            a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
          }
          catch (Exception localException3)
          {
            try
            {
              a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
            }
            catch (Exception paramContext)
            {
              return false;
            }
          }
        }
      else
        try
        {
          a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
        }
        catch (Exception localException4)
        {
          try
          {
            a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
          }
          catch (Exception paramContext)
          {
            return false;
          }
        }
    }
    catch (Exception localException5)
    {
      while (true)
        boolean bool = false;
    }
    label127: return true;
  }

  public static Bundle b(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = a(paramString.getQuery());
      localBundle.putAll(a(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString)
    {
    }
    return new Bundle();
  }

  public static final String b(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = paramContext.getPackageManager().getApplicationLabel(paramContext.getApplicationInfo());
      if (paramContext != null)
        return paramContext.toString();
    }
    return null;
  }

  public static String b(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return "";
    e(paramContext, paramString);
    return b;
  }

  public static boolean b()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted"))
      localFile = Environment.getExternalStorageDirectory();
    return localFile != null;
  }

  public static String c(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return "";
    e(paramContext, paramString);
    return a;
  }

  public static JSONObject c(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      JSONObject localJSONObject = a(null, paramString.getQuery());
      a(localJSONObject, paramString.getRef());
      return localJSONObject;
    }
    catch (MalformedURLException paramString)
    {
    }
    return new JSONObject();
  }

  public static boolean c(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    boolean bool1;
    if (paramContext == null)
      bool1 = true;
    do
    {
      return bool1;
      paramContext = paramContext.getAllNetworkInfo();
      bool1 = bool2;
    }
    while (paramContext == null);
    int i = 0;
    while (true)
    {
      bool1 = bool2;
      if (i >= paramContext.length)
        break;
      if (paramContext[i].isConnectedOrConnecting())
        return true;
      i += 1;
    }
  }

  public static String d(Context paramContext)
  {
    if (paramContext == null)
      return "";
    try
    {
      paramContext = (LocationManager)paramContext.getSystemService("location");
      Object localObject = new Criteria();
      ((Criteria)localObject).setCostAllowed(false);
      ((Criteria)localObject).setAccuracy(2);
      localObject = paramContext.getBestProvider((Criteria)localObject, true);
      if (localObject != null)
      {
        paramContext = paramContext.getLastKnownLocation((String)localObject);
        if (paramContext == null)
          return "";
        double d1 = paramContext.getLatitude();
        double d2 = paramContext.getLongitude();
        paramContext = d1 + "*" + d2;
        f = paramContext;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      h.b("openSDK_LOG.Util", "getLocation>>>", paramContext);
    }
    return "";
  }

  public static String d(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return "";
    paramContext = c(paramContext, paramString);
    c = paramContext;
    return paramContext;
  }

  public static JSONObject d(String paramString)
    throws JSONException
  {
    String str = paramString;
    if (paramString.equals("false"))
      str = "{value : false}";
    paramString = str;
    if (str.equals("true"))
      paramString = "{value : true}";
    str = paramString;
    if (paramString.contains("allback("))
      str = paramString.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
    paramString = str;
    if (str.contains("online[0]="))
      paramString = "{online:" + str.charAt(str.length() - 2) + "}";
    return new JSONObject(paramString);
  }

  public static String e(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(h(paramString));
      byte[] arrayOfByte = ((MessageDigest)localObject).digest();
      localObject = paramString;
      if (arrayOfByte != null)
      {
        localObject = new StringBuilder();
        int j = arrayOfByte.length;
        int i = 0;
        while (i < j)
        {
          int k = arrayOfByte[i];
          ((StringBuilder)localObject).append(a(k >>> 4));
          ((StringBuilder)localObject).append(a(k));
          i += 1;
        }
        localObject = ((StringBuilder)localObject).toString();
      }
      return localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      h.e("openSDK_LOG.Util", "encrypt has exception: " + localNoSuchAlgorithmException.getMessage());
    }
    return paramString;
  }

  private static void e(Context paramContext, String paramString)
  {
    if (paramContext == null)
      return;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      paramString = paramContext.versionName;
      b = paramString;
      a = paramString.substring(0, b.lastIndexOf('.'));
      d = b.substring(b.lastIndexOf('.') + 1, b.length());
      e = paramContext.versionCode;
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      h.e("openSDK_LOG.Util", "getPackageInfo has exception: " + paramContext.getMessage());
      return;
    }
    catch (Exception paramContext)
    {
      h.e("openSDK_LOG.Util", "getPackageInfo has exception: " + paramContext.getMessage());
    }
  }

  public static boolean e(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      float f1 = localDisplayMetrics.widthPixels / localDisplayMetrics.xdpi;
      float f2 = localDisplayMetrics.heightPixels / localDisplayMetrics.ydpi;
      d1 = Math.pow(f1, 2.0D);
      d1 = Math.sqrt(Math.pow(f2, 2.0D) + d1);
    }
    catch (Throwable localThrowable)
    {
      try
      {
        while (true)
        {
          i = ((TelephonyManager)paramContext.getSystemService("phone")).getPhoneType();
          if (i != 0)
            break;
          i = 0;
          if ((d1 <= 6.5D) || (i != 0))
            break label116;
          return true;
          localThrowable = localThrowable;
          double d1 = 0.0D;
        }
      }
      catch (Exception paramContext)
      {
        while (true)
        {
          paramContext.printStackTrace();
          int i = 1;
        }
      }
    }
    label116: return false;
  }

  private static boolean f(Context paramContext)
  {
    boolean bool2 = false;
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
      Object localObject = paramContext.versionName;
      boolean bool1 = bool2;
      if (o.a((String)localObject, "4.3") >= 0)
      {
        bool1 = bool2;
        if (!((String)localObject).startsWith("4.4"))
        {
          localObject = paramContext.signatures;
          bool1 = bool2;
          if (localObject == null);
        }
      }
      try
      {
        paramContext = MessageDigest.getInstance("MD5");
        paramContext.update(localObject[0].toByteArray());
        localObject = a(paramContext.digest());
        paramContext.reset();
        boolean bool3 = ((String)localObject).equals("d8391a394d4a179e6fe7bdb8a301258b");
        bool1 = bool2;
        if (bool3)
          bool1 = true;
        return bool1;
      }
      catch (NoSuchAlgorithmException paramContext)
      {
        h.e("openSDK_LOG.Util", "isQQBrowerAvailable has exception: " + paramContext.getMessage());
        return false;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
    }
    return false;
  }

  public static final boolean f(String paramString)
  {
    if (paramString == null);
    while ((!paramString.startsWith("http://")) && (!paramString.startsWith("https://")))
      return false;
    return true;
  }

  public static boolean g(String paramString)
  {
    if (paramString == null);
    while (!new File(paramString).exists())
      return false;
    return true;
  }

  public static byte[] h(String paramString)
  {
    try
    {
      paramString = paramString.getBytes("UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.s
 * JD-Core Version:    0.6.2
 */