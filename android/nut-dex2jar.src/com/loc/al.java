package com.loc;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.RemoteException;
import com.autonavi.aps.amapapi.model.AmapLoc;

public final class al
{
  Context a = null;
  boolean b = true;
  dv c = null;
  ServiceConnection d = null;
  ServiceConnection e = null;
  boolean f = false;
  boolean g = false;
  ao h = null;
  private String i = null;
  private Intent j = new Intent();
  private String k = "com.autonavi.minimap";
  private String l = "com.amap.api.service.AMapService";
  private String m = "com.taobao.agoo.PushService";
  private String n = "invaid type";
  private String o = "empty appkey";
  private String p = "refused";
  private String q = "failed";

  al(Context paramContext)
  {
    this.a = paramContext;
    try
    {
      this.i = ej.a(bf.a(dy.e(paramContext).getBytes("UTF-8"), "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"));
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  // ERROR //
  private AmapLoc a(Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 120
    //   3: invokevirtual 126	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   6: ifeq +141 -> 147
    //   9: aload_1
    //   10: ldc 120
    //   12: invokevirtual 130	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   15: invokestatic 132	com/loc/ej:a	(Ljava/lang/String;)[B
    //   18: astore_2
    //   19: aload_2
    //   20: ldc 101
    //   22: invokestatic 134	com/loc/bf:b	([BLjava/lang/String;)[B
    //   25: astore_2
    //   26: aload_1
    //   27: ldc 136
    //   29: invokevirtual 126	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   32: ifeq +108 -> 140
    //   35: aload_1
    //   36: ldc 136
    //   38: invokevirtual 130	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   41: invokestatic 132	com/loc/ej:a	(Ljava/lang/String;)[B
    //   44: astore_1
    //   45: new 138	org/json/JSONObject
    //   48: dup
    //   49: new 95	java/lang/String
    //   52: dup
    //   53: aload_2
    //   54: aload_1
    //   55: invokestatic 141	com/loc/bf:a	([B[B)[B
    //   58: ldc 143
    //   60: invokespecial 146	java/lang/String:<init>	([BLjava/lang/String;)V
    //   63: invokespecial 149	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   66: astore_1
    //   67: aload_1
    //   68: ldc 151
    //   70: invokevirtual 154	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   73: ifeq +79 -> 152
    //   76: aload_1
    //   77: ldc 151
    //   79: invokevirtual 155	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   82: astore_1
    //   83: aload_0
    //   84: getfield 74	com/loc/al:n	Ljava/lang/String;
    //   87: aload_1
    //   88: invokevirtual 159	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifeq +8 -> 99
    //   94: aload_0
    //   95: iconst_0
    //   96: putfield 41	com/loc/al:b	Z
    //   99: aload_0
    //   100: getfield 78	com/loc/al:o	Ljava/lang/String;
    //   103: aload_1
    //   104: invokevirtual 159	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   107: ifeq +8 -> 115
    //   110: aload_0
    //   111: iconst_0
    //   112: putfield 41	com/loc/al:b	Z
    //   115: aload_0
    //   116: getfield 82	com/loc/al:p	Ljava/lang/String;
    //   119: aload_1
    //   120: invokevirtual 159	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   123: ifeq +8 -> 131
    //   126: aload_0
    //   127: iconst_0
    //   128: putfield 41	com/loc/al:b	Z
    //   131: aload_0
    //   132: getfield 86	com/loc/al:q	Ljava/lang/String;
    //   135: aload_1
    //   136: invokevirtual 159	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   139: pop
    //   140: aconst_null
    //   141: areturn
    //   142: astore_2
    //   143: aload_2
    //   144: invokevirtual 160	java/lang/Exception:printStackTrace	()V
    //   147: aconst_null
    //   148: astore_2
    //   149: goto -123 -> 26
    //   152: new 162	com/autonavi/aps/amapapi/model/AmapLoc
    //   155: dup
    //   156: aload_1
    //   157: invokespecial 165	com/autonavi/aps/amapapi/model/AmapLoc:<init>	(Lorg/json/JSONObject;)V
    //   160: astore_1
    //   161: aload_1
    //   162: ldc 167
    //   164: invokevirtual 169	com/autonavi/aps/amapapi/model/AmapLoc:c	(Ljava/lang/String;)V
    //   167: aload_1
    //   168: bipush 7
    //   170: invokevirtual 172	com/autonavi/aps/amapapi/model/AmapLoc:a	(I)V
    //   173: ldc 174
    //   175: aload_1
    //   176: invokevirtual 177	com/autonavi/aps/amapapi/model/AmapLoc:l	()Ljava/lang/String;
    //   179: invokevirtual 159	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   182: ifeq +49 -> 231
    //   185: aload_1
    //   186: invokevirtual 180	com/autonavi/aps/amapapi/model/AmapLoc:i	()D
    //   189: aload_1
    //   190: invokevirtual 182	com/autonavi/aps/amapapi/model/AmapLoc:h	()D
    //   193: invokestatic 187	com/loc/dp:a	(DD)Z
    //   196: ifeq +35 -> 231
    //   199: aload_0
    //   200: getfield 39	com/loc/al:a	Landroid/content/Context;
    //   203: aload_1
    //   204: invokevirtual 182	com/autonavi/aps/amapapi/model/AmapLoc:h	()D
    //   207: aload_1
    //   208: invokevirtual 180	com/autonavi/aps/amapapi/model/AmapLoc:i	()D
    //   211: invokestatic 192	com/loc/du:a	(Landroid/content/Context;DD)Lcom/amap/api/location/DPoint;
    //   214: astore_2
    //   215: aload_1
    //   216: aload_2
    //   217: invokevirtual 197	com/amap/api/location/DPoint:getLatitude	()D
    //   220: invokevirtual 200	com/autonavi/aps/amapapi/model/AmapLoc:b	(D)V
    //   223: aload_1
    //   224: aload_2
    //   225: invokevirtual 203	com/amap/api/location/DPoint:getLongitude	()D
    //   228: invokevirtual 205	com/autonavi/aps/amapapi/model/AmapLoc:a	(D)V
    //   231: aload_1
    //   232: areturn
    //   233: astore_1
    //   234: aload_1
    //   235: invokevirtual 160	java/lang/Exception:printStackTrace	()V
    //   238: aconst_null
    //   239: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   19	26	142	java/lang/Exception
    //   45	99	233	java/lang/Exception
    //   99	115	233	java/lang/Exception
    //   115	131	233	java/lang/Exception
    //   131	140	233	java/lang/Exception
    //   152	231	233	java/lang/Exception
  }

  final boolean a()
  {
    try
    {
      this.j.putExtra("appkey", this.i);
      this.j.setComponent(new ComponentName(this.k, this.l));
      this.f = this.a.bindService(this.j, this.d, 1);
      Intent localIntent = new Intent();
      localIntent.putExtra("appkey", this.i);
      localIntent.setComponent(new ComponentName(this.k, this.m));
      this.g = this.a.bindService(localIntent, this.e, 1);
      if (this.f)
      {
        boolean bool = this.g;
        if (bool)
          return true;
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  final AmapLoc b()
  {
    try
    {
      if (this.b)
      {
        if (!this.f)
          return null;
        Object localObject = new Bundle();
        ((Bundle)localObject).putString("type", "corse");
        ((Bundle)localObject).putString("appkey", this.i);
        this.c.a((Bundle)localObject);
        if (((Bundle)localObject).size() > 0)
        {
          localObject = a((Bundle)localObject);
          return localObject;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      return null;
    }
    catch (RemoteException localRemoteException)
    {
    }
    return null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.al
 * JD-Core Version:    0.6.2
 */