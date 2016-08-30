package com.baidu.android.pushservice.e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.baidu.android.pushservice.j.e;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

public final class b
{
  public static String a(HashMap<String, String> paramHashMap)
  {
    if ((paramHashMap == null) || (paramHashMap.isEmpty()))
      return "params is null or empty";
    StringBuffer localStringBuffer = new StringBuffer();
    paramHashMap = paramHashMap.entrySet().iterator();
    int i = 0;
    while (paramHashMap.hasNext())
    {
      if (i != 0)
        localStringBuffer.append(", ");
      Object localObject2 = (Map.Entry)paramHashMap.next();
      Object localObject1 = ((Map.Entry)localObject2).getKey();
      localObject2 = ((Map.Entry)localObject2).getValue();
      localStringBuffer.append(localObject1).append("=").append(localObject2);
      i += 1;
    }
    return localStringBuffer.toString();
  }

  public static void a(Context paramContext)
  {
    a(paramContext, com.baidu.android.pushservice.c.b.a(paramContext).a);
  }

  // ERROR //
  private static void a(Context paramContext, java.util.ArrayList<com.baidu.android.pushservice.c.h> paramArrayList)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: aload_0
    //   6: invokevirtual 85	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   9: astore 4
    //   11: aload_1
    //   12: monitorenter
    //   13: aload_1
    //   14: invokevirtual 88	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   17: astore 5
    //   19: aload 5
    //   21: invokeinterface 35 1 0
    //   26: ifeq +123 -> 149
    //   29: aload 5
    //   31: invokeinterface 45 1 0
    //   36: checkcast 90	com/baidu/android/pushservice/c/h
    //   39: astore 6
    //   41: aload 6
    //   43: invokevirtual 93	com/baidu/android/pushservice/c/h:c	()Ljava/lang/String;
    //   46: astore 7
    //   48: aconst_null
    //   49: astore_3
    //   50: aload 4
    //   52: aload 7
    //   54: iconst_0
    //   55: invokevirtual 99	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   58: astore_2
    //   59: aload_2
    //   60: ifnonnull -41 -> 19
    //   63: new 101	android/content/Intent
    //   66: dup
    //   67: ldc 103
    //   69: invokespecial 106	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   72: astore_2
    //   73: aload_2
    //   74: ldc 108
    //   76: ldc 110
    //   78: invokevirtual 114	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   81: pop
    //   82: aload_2
    //   83: ldc 116
    //   85: aload 6
    //   87: invokevirtual 93	com/baidu/android/pushservice/c/h:c	()Ljava/lang/String;
    //   90: invokevirtual 114	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   93: pop
    //   94: aload_0
    //   95: aload_2
    //   96: invokestatic 122	com/baidu/android/pushservice/util/l:b	(Landroid/content/Context;Landroid/content/Intent;)V
    //   99: goto -80 -> 19
    //   102: astore_0
    //   103: aload_1
    //   104: monitorexit
    //   105: aload_0
    //   106: athrow
    //   107: astore_2
    //   108: aload_3
    //   109: astore_2
    //   110: aload 7
    //   112: invokestatic 127	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   115: ifne -56 -> 59
    //   118: ldc 129
    //   120: new 131	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 132	java/lang/StringBuilder:<init>	()V
    //   127: aload 7
    //   129: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc 137
    //   134: invokevirtual 135	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 138	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 144	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: aload_3
    //   145: astore_2
    //   146: goto -87 -> 59
    //   149: aload_1
    //   150: monitorexit
    //   151: return
    //
    // Exception table:
    //   from	to	target	type
    //   13	19	102	finally
    //   19	48	102	finally
    //   50	59	102	finally
    //   63	99	102	finally
    //   103	105	102	finally
    //   110	144	102	finally
    //   149	151	102	finally
    //   50	59	107	android/content/pm/PackageManager$NameNotFoundException
  }

  @SuppressLint({"InlinedApi"})
  public static void a(List<NameValuePair> paramList)
  {
    long l = System.currentTimeMillis() / 1000L;
    paramList.add(new BasicNameValuePair("timestamp", String.valueOf(l)));
    paramList.add(new BasicNameValuePair("expires", 86400L + l));
    paramList.add(new BasicNameValuePair("v", "1"));
    try
    {
      paramList.add(new BasicNameValuePair("vcode", e.a(URLEncoder.encode(l + "bccs", "UTF-8").getBytes(), false)));
      return;
    }
    catch (UnsupportedEncodingException paramList)
    {
      Log.e("ApiUtils", "error " + paramList.getMessage());
    }
  }

  @SuppressLint({"InlinedApi"})
  public static void b(HashMap<String, String> paramHashMap)
  {
    long l = System.currentTimeMillis() / 1000L;
    paramHashMap.put("timestamp", String.valueOf(l));
    paramHashMap.put("expires", 86400L + l);
    paramHashMap.put("v", "1");
    try
    {
      paramHashMap.put("vcode", e.a(URLEncoder.encode(l + "bccs", "UTF-8").getBytes(), false));
      return;
    }
    catch (UnsupportedEncodingException paramHashMap)
    {
      Log.e("ApiUtils", "error " + paramHashMap.getMessage());
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.e.b
 * JD-Core Version:    0.6.2
 */