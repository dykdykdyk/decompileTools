package com.tencent.open.utils;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.open.a.h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class l
{
  private static Map<String, l> b = Collections.synchronizedMap(new HashMap());
  private static String c = null;
  public JSONObject a = null;
  private Context d = null;
  private String e = null;
  private long f = 0L;
  private int g = 0;
  private boolean h = true;

  private l(Context paramContext, String paramString)
  {
    this.d = paramContext.getApplicationContext();
    this.e = paramString;
    paramContext = c("com.tencent.open.config.json");
    try
    {
      this.a = new JSONObject(paramContext);
      b();
      return;
    }
    catch (JSONException paramContext)
    {
      while (true)
        this.a = new JSONObject();
    }
  }

  public static l a(Context paramContext, String paramString)
  {
    while (true)
    {
      synchronized (b)
      {
        h.a("openSDK_LOG.OpenConfig", "getInstance begin");
        if (paramString != null)
          c = paramString;
        str = paramString;
        if (paramString == null)
        {
          if (c != null)
            str = c;
        }
        else
        {
          l locall = (l)b.get(str);
          paramString = locall;
          if (locall == null)
          {
            paramString = new l(paramContext, str);
            b.put(str, paramString);
          }
          h.a("openSDK_LOG.OpenConfig", "getInstance end");
          return paramString;
        }
      }
      String str = "0";
    }
  }

  private void b()
  {
    if (this.g != 0)
    {
      b("update thread is running, return");
      return;
    }
    this.g = 1;
    Bundle localBundle = new Bundle();
    localBundle.putString("appid", this.e);
    localBundle.putString("appid_for_getting_config", this.e);
    localBundle.putString("status_os", Build.VERSION.RELEASE);
    localBundle.putString("status_machine", Build.MODEL);
    localBundle.putString("status_version", Build.VERSION.SDK);
    localBundle.putString("sdkv", "2.9.4.lite");
    localBundle.putString("sdkp", "a");
    new m(this, localBundle).start();
  }

  // ERROR //
  private String c(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 46	com/tencent/open/utils/l:e	Ljava/lang/String;
    //   4: ifnull +107 -> 111
    //   7: new 113	java/lang/StringBuilder
    //   10: dup
    //   11: invokespecial 114	java/lang/StringBuilder:<init>	()V
    //   14: aload_1
    //   15: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   18: ldc 120
    //   20: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: aload_0
    //   24: getfield 46	com/tencent/open/utils/l:e	Ljava/lang/String;
    //   27: invokevirtual 118	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: astore_2
    //   34: aload_0
    //   35: getfield 44	com/tencent/open/utils/l:d	Landroid/content/Context;
    //   38: aload_2
    //   39: invokevirtual 209	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   42: astore_2
    //   43: aload_2
    //   44: astore_1
    //   45: new 211	java/io/BufferedReader
    //   48: dup
    //   49: new 213	java/io/InputStreamReader
    //   52: dup
    //   53: aload_1
    //   54: ldc 129
    //   56: invokestatic 135	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   59: invokespecial 216	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   62: invokespecial 219	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   65: astore_2
    //   66: new 221	java/lang/StringBuffer
    //   69: dup
    //   70: invokespecial 222	java/lang/StringBuffer:<init>	()V
    //   73: astore_3
    //   74: aload_2
    //   75: invokevirtual 225	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   78: astore 4
    //   80: aload 4
    //   82: ifnull +58 -> 140
    //   85: aload_3
    //   86: aload 4
    //   88: invokevirtual 228	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   91: pop
    //   92: goto -18 -> 74
    //   95: astore_3
    //   96: aload_3
    //   97: invokevirtual 156	java/io/IOException:printStackTrace	()V
    //   100: aload_1
    //   101: invokevirtual 231	java/io/InputStream:close	()V
    //   104: aload_2
    //   105: invokevirtual 232	java/io/BufferedReader:close	()V
    //   108: ldc 234
    //   110: areturn
    //   111: aload_1
    //   112: astore_2
    //   113: goto -79 -> 34
    //   116: astore_2
    //   117: aload_0
    //   118: getfield 44	com/tencent/open/utils/l:d	Landroid/content/Context;
    //   121: invokevirtual 238	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   124: aload_1
    //   125: invokevirtual 244	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   128: astore_1
    //   129: goto -84 -> 45
    //   132: astore_1
    //   133: aload_1
    //   134: invokevirtual 156	java/io/IOException:printStackTrace	()V
    //   137: ldc 234
    //   139: areturn
    //   140: aload_3
    //   141: invokevirtual 245	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   144: astore_3
    //   145: aload_1
    //   146: invokevirtual 231	java/io/InputStream:close	()V
    //   149: aload_2
    //   150: invokevirtual 232	java/io/BufferedReader:close	()V
    //   153: aload_3
    //   154: areturn
    //   155: astore_1
    //   156: aload_1
    //   157: invokevirtual 156	java/io/IOException:printStackTrace	()V
    //   160: aload_3
    //   161: areturn
    //   162: astore_1
    //   163: aload_1
    //   164: invokevirtual 156	java/io/IOException:printStackTrace	()V
    //   167: ldc 234
    //   169: areturn
    //   170: astore_3
    //   171: aload_1
    //   172: invokevirtual 231	java/io/InputStream:close	()V
    //   175: aload_2
    //   176: invokevirtual 232	java/io/BufferedReader:close	()V
    //   179: aload_3
    //   180: athrow
    //   181: astore_1
    //   182: aload_1
    //   183: invokevirtual 156	java/io/IOException:printStackTrace	()V
    //   186: goto -7 -> 179
    //
    // Exception table:
    //   from	to	target	type
    //   74	80	95	java/io/IOException
    //   85	92	95	java/io/IOException
    //   140	145	95	java/io/IOException
    //   0	34	116	java/io/FileNotFoundException
    //   34	43	116	java/io/FileNotFoundException
    //   117	129	132	java/io/IOException
    //   145	153	155	java/io/IOException
    //   100	108	162	java/io/IOException
    //   74	80	170	finally
    //   85	92	170	finally
    //   96	100	170	finally
    //   140	145	170	finally
    //   171	179	181	java/io/IOException
  }

  public final int a(String paramString)
  {
    b("get " + paramString);
    a();
    return this.a.optInt(paramString);
  }

  public final void a()
  {
    int j = this.a.optInt("Common_frequency");
    int i = j;
    if (j == 0)
      i = 1;
    long l = i * 3600000;
    if (SystemClock.elapsedRealtime() - this.f >= l)
      b();
  }

  public final void b(String paramString)
  {
    if (this.h)
      h.a("openSDK_LOG.OpenConfig", paramString + "; appid: " + this.e);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.utils.l
 * JD-Core Version:    0.6.2
 */