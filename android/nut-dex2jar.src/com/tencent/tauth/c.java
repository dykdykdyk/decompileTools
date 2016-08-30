package com.tencent.tauth;

import android.content.Context;
import com.tencent.connect.b.u;
import com.tencent.connect.b.v;
import com.tencent.open.a.h;

public final class c
{
  private static c b;
  public final u a;

  private c(String paramString, Context paramContext)
  {
    com.tencent.open.utils.g.a = paramContext.getApplicationContext();
    this.a = u.a(paramString, paramContext);
  }

  public static c a(String paramString, Context paramContext)
  {
    Object localObject = null;
    while (true)
    {
      try
      {
        com.tencent.open.utils.g.a = paramContext.getApplicationContext();
        h.c("openSDK_LOG.Tencent", "createInstance()  -- start");
        if (b == null)
        {
          b = new c(paramString, paramContext);
          boolean bool = a(paramContext, paramString);
          if (!bool)
          {
            paramString = localObject;
            return paramString;
          }
        }
        else
        {
          if (paramString.equals(b.a.a.a))
            continue;
          c localc = b;
          h.c("openSDK_LOG.Tencent", "logout()");
          localc.a.a.a(null, "0");
          localc.a.a.c = null;
          b = new c(paramString, paramContext);
          continue;
        }
      }
      finally
      {
      }
      h.c("openSDK_LOG.Tencent", "createInstance()  -- end");
      paramString = b;
    }
  }

  // ERROR //
  private static boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 78	android/content/ComponentName
    //   3: dup
    //   4: aload_0
    //   5: invokevirtual 82	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: ldc 84
    //   10: invokespecial 86	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   13: astore_2
    //   14: aload_0
    //   15: invokevirtual 90	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   18: aload_2
    //   19: iconst_0
    //   20: invokevirtual 96	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   23: pop
    //   24: new 78	android/content/ComponentName
    //   27: dup
    //   28: aload_0
    //   29: invokevirtual 82	android/content/Context:getPackageName	()Ljava/lang/String;
    //   32: ldc 98
    //   34: invokespecial 86	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: astore_1
    //   38: aload_0
    //   39: invokevirtual 90	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   42: aload_1
    //   43: iconst_0
    //   44: invokevirtual 96	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   47: pop
    //   48: iconst_1
    //   49: ireturn
    //   50: astore_0
    //   51: new 100	java/lang/StringBuilder
    //   54: dup
    //   55: ldc 102
    //   57: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_1
    //   61: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc 111
    //   66: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: astore_0
    //   73: new 100	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   80: aload_0
    //   81: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 117
    //   86: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: aload_1
    //   90: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: ldc 119
    //   95: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: astore_0
    //   102: ldc 35
    //   104: new 100	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 121
    //   110: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_0
    //   114: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 124	com/tencent/open/a/h:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   123: iconst_0
    //   124: ireturn
    //   125: astore_0
    //   126: new 100	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 115	java/lang/StringBuilder:<init>	()V
    //   133: ldc 126
    //   135: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc 128
    //   140: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   146: astore_0
    //   147: ldc 35
    //   149: new 100	java/lang/StringBuilder
    //   152: dup
    //   153: ldc 130
    //   155: invokespecial 105	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   158: aload_0
    //   159: invokevirtual 109	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: invokevirtual 114	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   165: invokestatic 124	com/tencent/open/a/h:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   168: iconst_0
    //   169: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	24	50	android/content/pm/PackageManager$NameNotFoundException
    //   24	48	125	android/content/pm/PackageManager$NameNotFoundException
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.tauth.c
 * JD-Core Version:    0.6.2
 */