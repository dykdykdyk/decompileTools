package com.sina.weibo.sdk.d;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.HttpManager;
import com.sina.weibo.sdk.net.k;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
{
  private static b c;
  e a;
  volatile ReentrantLock b = new ReentrantLock(true);
  private Context d;
  private String e;
  private g f;

  private b(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
    this.f = new g(this.d.getMainLooper());
    new Thread(new c(this)).start();
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new b(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  // ERROR //
  private static String a(String paramString1, String paramString2)
    throws Exception
  {
    // Byte code:
    //   0: ldc 73
    //   2: invokestatic 79	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   5: astore 4
    //   7: new 81	java/security/spec/X509EncodedKeySpec
    //   10: dup
    //   11: aload_1
    //   12: invokevirtual 87	java/lang/String:getBytes	()[B
    //   15: invokestatic 92	com/sina/weibo/sdk/d/h:a	([B)[B
    //   18: invokespecial 95	java/security/spec/X509EncodedKeySpec:<init>	([B)V
    //   21: astore_1
    //   22: aload 4
    //   24: iconst_1
    //   25: ldc 97
    //   27: invokestatic 102	java/security/KeyFactory:getInstance	(Ljava/lang/String;)Ljava/security/KeyFactory;
    //   30: aload_1
    //   31: invokevirtual 106	java/security/KeyFactory:generatePublic	(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    //   34: invokevirtual 110	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   37: aload_0
    //   38: ldc 112
    //   40: invokevirtual 115	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   43: astore_0
    //   44: new 117	java/io/ByteArrayOutputStream
    //   47: dup
    //   48: invokespecial 118	java/io/ByteArrayOutputStream:<init>	()V
    //   51: astore_1
    //   52: iconst_0
    //   53: istore_2
    //   54: iload_2
    //   55: aload_0
    //   56: arraylength
    //   57: if_icmplt +187 -> 244
    //   60: iconst_m1
    //   61: istore_3
    //   62: iload_3
    //   63: iconst_m1
    //   64: if_icmpne +116 -> 180
    //   67: aload_1
    //   68: invokevirtual 121	java/io/ByteArrayOutputStream:flush	()V
    //   71: aload_1
    //   72: invokevirtual 124	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   75: astore_0
    //   76: ldc 126
    //   78: new 128	java/lang/StringBuilder
    //   81: dup
    //   82: ldc 130
    //   84: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   87: aload_0
    //   88: arraylength
    //   89: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   92: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   95: invokestatic 146	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   98: aload_0
    //   99: invokestatic 148	com/sina/weibo/sdk/d/h:b	([B)[B
    //   102: astore_0
    //   103: ldc 126
    //   105: new 128	java/lang/StringBuilder
    //   108: dup
    //   109: ldc 150
    //   111: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_0
    //   115: arraylength
    //   116: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   119: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 146	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   125: new 83	java/lang/String
    //   128: dup
    //   129: aload_0
    //   130: ldc 112
    //   132: invokespecial 153	java/lang/String:<init>	([BLjava/lang/String;)V
    //   135: astore_0
    //   136: new 128	java/lang/StringBuilder
    //   139: dup
    //   140: ldc 155
    //   142: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload_0
    //   146: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: astore_0
    //   153: ldc 126
    //   155: new 128	java/lang/StringBuilder
    //   158: dup
    //   159: ldc 160
    //   161: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   164: aload_0
    //   165: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 146	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   174: aload_1
    //   175: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   178: aload_0
    //   179: areturn
    //   180: aload 4
    //   182: aload_0
    //   183: iload_2
    //   184: iload_3
    //   185: invokevirtual 167	javax/crypto/Cipher:doFinal	([BII)[B
    //   188: astore 5
    //   190: aload_1
    //   191: aload 5
    //   193: invokevirtual 170	java/io/ByteArrayOutputStream:write	([B)V
    //   196: ldc 126
    //   198: new 128	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 172
    //   204: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: iload_2
    //   208: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   211: ldc 174
    //   213: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: iload_3
    //   217: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   220: ldc 176
    //   222: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload 5
    //   227: arraylength
    //   228: invokevirtual 137	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   231: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: invokestatic 146	com/sina/weibo/sdk/d/i:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   237: iload_2
    //   238: iload_3
    //   239: iadd
    //   240: istore_2
    //   241: goto -187 -> 54
    //   244: aload_0
    //   245: arraylength
    //   246: iload_2
    //   247: isub
    //   248: bipush 117
    //   250: invokestatic 182	java/lang/Math:min	(II)I
    //   253: istore_3
    //   254: goto -192 -> 62
    //   257: astore_0
    //   258: aconst_null
    //   259: astore_1
    //   260: aload_1
    //   261: ifnull +7 -> 268
    //   264: aload_1
    //   265: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   268: aload_0
    //   269: athrow
    //   270: astore_1
    //   271: aload_0
    //   272: areturn
    //   273: astore_1
    //   274: goto -6 -> 268
    //   277: astore_0
    //   278: goto -18 -> 260
    //
    // Exception table:
    //   from	to	target	type
    //   44	52	257	finally
    //   174	178	270	java/io/IOException
    //   264	268	273	java/io/IOException
    //   54	60	277	finally
    //   67	174	277	finally
    //   180	237	277	finally
    //   244	254	277	finally
  }

  private static String b(Context paramContext)
  {
    paramContext = c(paramContext);
    try
    {
      paramContext = new String(paramContext.getBytes(), "UTF-8");
      i.a("AidTask", "genMfpString() utf-8 string : " + paramContext);
    }
    catch (UnsupportedEncodingException paramContext)
    {
      try
      {
        paramContext = a(paramContext, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDHHM0Fi2Z6+QYKXqFUX2Cy6AaWq3cPi+GSn9oeAwQbPZR75JB7Netm0HtBVVbtPhzT7UO2p1JhFUKWqrqoYuAjkgMVPmA0sFrQohns5EE44Y86XQopD4ZO+dE5KjUZFE6vrPO3rWW3np2BqlgKpjnYZri6TJApmIpGcQg9/G/3zQIDAQAB");
        i.a("AidTask", "encryptRsa() string : " + paramContext);
        return paramContext;
        paramContext = paramContext;
        paramContext = "";
      }
      catch (Exception paramContext)
      {
        i.c("AidTask", paramContext.getMessage());
      }
    }
    return "";
  }

  private static String c()
  {
    try
    {
      String str = "Android " + Build.VERSION.RELEASE;
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String c(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      String str = c();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("1", str);
      str = d(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("2", str);
      str = e(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("3", str);
      str = f(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("4", str);
      str = g(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("5", str);
      str = h(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("6", str);
      str = d();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("7", str);
      str = i(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("10", str);
      str = e();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("13", str);
      str = f();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("14", str);
      str = g();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("15", str);
      str = j(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("16", str);
      str = k(paramContext);
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("17", str);
      str = h();
      if (!TextUtils.isEmpty(str))
        localJSONObject.put("18", str);
      paramContext = l(paramContext);
      if (!TextUtils.isEmpty(paramContext))
        localJSONObject.put("19", paramContext);
      paramContext = "";
      try
      {
        str = p.a();
        paramContext = str;
        if (!TextUtils.isEmpty(paramContext))
          localJSONObject.put("20", paramContext);
        return localJSONObject.toString();
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    catch (JSONException paramContext)
    {
    }
    return "";
  }

  private static String d()
  {
    try
    {
      Object localObject = Class.forName("android.os.SystemProperties");
      localObject = (String)((Class)localObject).getMethod("get", new Class[] { String.class, String.class }).invoke(localObject, new Object[] { "ro.serialno", "unknown" });
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String d(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String e()
  {
    try
    {
      String str = Build.CPU_ABI;
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String e(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String f()
  {
    try
    {
      String str = Build.MODEL;
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String f(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String g()
  {
    try
    {
      Object localObject = new StatFs(Environment.getExternalStorageDirectory().getPath());
      long l = ((StatFs)localObject).getBlockSize();
      localObject = Long.toString(((StatFs)localObject).getBlockCount() * l);
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String g(Context paramContext)
  {
    try
    {
      paramContext = (WifiManager)paramContext.getSystemService("wifi");
      if (paramContext == null)
        return "";
      paramContext = paramContext.getConnectionInfo();
      if (paramContext != null)
        return paramContext.getMacAddress();
      return "";
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String h()
  {
    try
    {
      String str = Build.BRAND;
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  private static String h(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getSimSerialNumber();
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String i(Context paramContext)
  {
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String j(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      paramContext = String.valueOf(localDisplayMetrics.widthPixels) + "*" + String.valueOf(localDisplayMetrics.heightPixels);
      return paramContext;
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String k(Context paramContext)
  {
    try
    {
      paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (paramContext != null)
      {
        paramContext = paramContext.getSSID();
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
    }
    return "";
  }

  private static String l(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (paramContext != null)
      {
        if (paramContext.getType() == 0);
        switch (paramContext.getSubtype())
        {
        default:
          if (paramContext.getType() == 1)
            return "wifi";
          break;
        case 1:
        case 2:
        case 4:
        case 7:
        case 11:
        case 3:
        case 5:
        case 6:
        case 8:
        case 9:
        case 10:
        case 12:
        case 14:
        case 15:
        case 13:
        }
      }
    }
    catch (Exception paramContext)
    {
    }
    return "none";
    return "none";
    return "2G";
    return "3G";
    return "4G";
  }

  // ERROR //
  final e a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: new 467	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: iconst_1
    //   10: invokevirtual 470	com/sina/weibo/sdk/d/b:a	(I)Ljava/io/File;
    //   13: invokespecial 473	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   16: astore_1
    //   17: aload_1
    //   18: invokevirtual 476	java/io/FileInputStream:available	()I
    //   21: newarray byte
    //   23: astore_2
    //   24: aload_1
    //   25: aload_2
    //   26: invokevirtual 480	java/io/FileInputStream:read	([B)I
    //   29: pop
    //   30: new 83	java/lang/String
    //   33: dup
    //   34: aload_2
    //   35: invokespecial 481	java/lang/String:<init>	([B)V
    //   38: invokestatic 486	com/sina/weibo/sdk/d/e:a	(Ljava/lang/String;)Lcom/sina/weibo/sdk/d/e;
    //   41: astore_2
    //   42: aload_1
    //   43: invokevirtual 487	java/io/FileInputStream:close	()V
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_2
    //   49: areturn
    //   50: astore_1
    //   51: aconst_null
    //   52: astore_1
    //   53: aload_3
    //   54: astore_2
    //   55: aload_1
    //   56: ifnull -10 -> 46
    //   59: aload_1
    //   60: invokevirtual 487	java/io/FileInputStream:close	()V
    //   63: aload_3
    //   64: astore_2
    //   65: goto -19 -> 46
    //   68: astore_1
    //   69: aload_3
    //   70: astore_2
    //   71: goto -25 -> 46
    //   74: astore_2
    //   75: aconst_null
    //   76: astore_1
    //   77: aload_1
    //   78: ifnull +7 -> 85
    //   81: aload_1
    //   82: invokevirtual 487	java/io/FileInputStream:close	()V
    //   85: aload_2
    //   86: athrow
    //   87: astore_1
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    //   92: astore_1
    //   93: goto -47 -> 46
    //   96: astore_1
    //   97: goto -12 -> 85
    //   100: astore_2
    //   101: goto -24 -> 77
    //   104: astore_2
    //   105: goto -52 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   4	17	50	java/lang/Exception
    //   59	63	68	java/io/IOException
    //   4	17	74	finally
    //   42	46	87	finally
    //   59	63	87	finally
    //   81	85	87	finally
    //   85	87	87	finally
    //   42	46	92	java/io/IOException
    //   81	85	96	java/io/IOException
    //   17	42	100	finally
    //   17	42	104	java/lang/Exception
  }

  final File a(int paramInt)
  {
    return new File(this.d.getFilesDir(), "weibo_sdk_aid" + paramInt);
  }

  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString));
    do
    {
      return;
      i.c("AidTask", "aidTaskInit ");
    }
    while (TextUtils.isEmpty(paramString));
    this.e = paramString;
    new Thread(new d(this)).start();
  }

  final String b()
    throws WeiboException
  {
    String str1 = this.d.getPackageName();
    String str2 = p.a(this.d, str1);
    String str3 = b(this.d);
    k localk = new k(this.e);
    localk.a("appkey", this.e);
    localk.a("mfp", str3);
    localk.a("packagename", str1);
    localk.a("key_hash", str2);
    try
    {
      str1 = HttpManager.a(this.d, "https://api.weibo.com/oauth2/getaid.json", "GET", localk);
      i.a("AidTask", "loadAidFromNet response : " + str1);
      return str1;
    }
    catch (WeiboException localWeiboException)
    {
      i.a("AidTask", "loadAidFromNet WeiboException Msg : " + localWeiboException.getMessage());
      throw localWeiboException;
    }
  }

  // ERROR //
  final void b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 223	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aconst_null
    //   15: astore 4
    //   17: new 540	java/io/FileOutputStream
    //   20: dup
    //   21: aload_0
    //   22: iconst_1
    //   23: invokevirtual 470	com/sina/weibo/sdk/d/b:a	(I)Ljava/io/File;
    //   26: invokespecial 541	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   29: astore_3
    //   30: aload_3
    //   31: aload_1
    //   32: invokevirtual 87	java/lang/String:getBytes	()[B
    //   35: invokevirtual 542	java/io/FileOutputStream:write	([B)V
    //   38: aload_3
    //   39: invokevirtual 543	java/io/FileOutputStream:close	()V
    //   42: goto -31 -> 11
    //   45: astore_1
    //   46: goto -35 -> 11
    //   49: astore_1
    //   50: aconst_null
    //   51: astore_3
    //   52: aload_3
    //   53: ifnull -42 -> 11
    //   56: aload_3
    //   57: invokevirtual 543	java/io/FileOutputStream:close	()V
    //   60: goto -49 -> 11
    //   63: astore_1
    //   64: goto -53 -> 11
    //   67: astore_1
    //   68: aload 4
    //   70: astore_3
    //   71: aload_3
    //   72: ifnull +7 -> 79
    //   75: aload_3
    //   76: invokevirtual 543	java/io/FileOutputStream:close	()V
    //   79: aload_1
    //   80: athrow
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore_3
    //   87: goto -8 -> 79
    //   90: astore_1
    //   91: goto -20 -> 71
    //   94: astore_1
    //   95: goto -43 -> 52
    //
    // Exception table:
    //   from	to	target	type
    //   38	42	45	java/io/IOException
    //   17	30	49	java/lang/Exception
    //   56	60	63	java/io/IOException
    //   17	30	67	finally
    //   2	7	81	finally
    //   38	42	81	finally
    //   56	60	81	finally
    //   75	79	81	finally
    //   79	81	81	finally
    //   75	79	86	java/io/IOException
    //   30	38	90	finally
    //   30	38	94	java/lang/Exception
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.d.b
 * JD-Core Version:    0.6.2
 */