package com.baidu.android.pushservice;

import android.annotation.SuppressLint;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.LocalServerSocket;
import android.os.Handler;
import android.text.TextUtils;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.jni.PushSocket;
import com.baidu.android.pushservice.message.a.d;
import com.baidu.android.pushservice.util.l;
import com.baidu.android.pushservice.util.m;

@SuppressLint({"WorldReadableFiles", "InlinedApi"})
public class g
{
  public static f a;
  private static String b = "PushSDK";
  private static g c = null;
  private static int d = 180000;
  private static int e = 1800000;
  private static Object g = new Object();
  private static LocalServerSocket h;
  private static Object l = new Object();
  private int f;
  private i i;
  private Boolean j = Boolean.valueOf(false);
  private Boolean k = Boolean.valueOf(false);
  private Context m;
  private Handler n;
  private Runnable o = new g.2(this);
  private Runnable p = new g.3(this);
  private Runnable q = new g.4(this);

  private g(Context paramContext)
  {
    this.n = new Handler(paramContext.getMainLooper());
    this.m = paramContext.getApplicationContext();
    this.f = d;
    m.h(this.m.getApplicationContext());
  }

  public static g a(Context paramContext)
  {
    try
    {
      if (c == null)
        c = new g(paramContext);
      paramContext = c;
      return paramContext;
    }
    finally
    {
    }
    throw paramContext;
  }

  public static void b()
  {
    if (c != null)
      c.h();
  }

  private boolean b(Context paramContext)
  {
    String str = m.v(paramContext);
    paramContext = paramContext.getPackageName();
    if (paramContext.equals(str))
    {
      com.baidu.android.pushservice.h.b.a(b, "Try use current push service, package name is: " + paramContext, this.m);
      return false;
    }
    com.baidu.android.pushservice.h.b.a(b, "Current push service : " + paramContext + " should stop!!! highest priority service is: " + str, this.m);
    return true;
  }

  // ERROR //
  private void h()
  {
    // Byte code:
    //   0: getstatic 42	com/baidu/android/pushservice/g:b	Ljava/lang/String;
    //   3: ldc 167
    //   5: aload_0
    //   6: getfield 105	com/baidu/android/pushservice/g:m	Landroid/content/Context;
    //   9: invokestatic 153	com/baidu/android/pushservice/h/b:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    //   12: getstatic 57	com/baidu/android/pushservice/g:l	Ljava/lang/Object;
    //   15: astore_1
    //   16: aload_1
    //   17: monitorenter
    //   18: getstatic 169	com/baidu/android/pushservice/g:h	Landroid/net/LocalServerSocket;
    //   21: ifnull +13 -> 34
    //   24: getstatic 169	com/baidu/android/pushservice/g:h	Landroid/net/LocalServerSocket;
    //   27: invokevirtual 174	android/net/LocalServerSocket:close	()V
    //   30: aconst_null
    //   31: putstatic 169	com/baidu/android/pushservice/g:h	Landroid/net/LocalServerSocket;
    //   34: getstatic 176	com/baidu/android/pushservice/g:a	Lcom/baidu/android/pushservice/f;
    //   37: ifnull +21 -> 58
    //   40: getstatic 55	com/baidu/android/pushservice/g:g	Ljava/lang/Object;
    //   43: astore_2
    //   44: aload_2
    //   45: monitorenter
    //   46: getstatic 176	com/baidu/android/pushservice/g:a	Lcom/baidu/android/pushservice/f;
    //   49: invokevirtual 180	com/baidu/android/pushservice/f:c	()V
    //   52: aconst_null
    //   53: putstatic 176	com/baidu/android/pushservice/g:a	Lcom/baidu/android/pushservice/f;
    //   56: aload_2
    //   57: monitorexit
    //   58: invokestatic 184	com/baidu/android/pushservice/util/k:a	()V
    //   61: aconst_null
    //   62: putstatic 44	com/baidu/android/pushservice/g:c	Lcom/baidu/android/pushservice/g;
    //   65: aload_1
    //   66: monitorexit
    //   67: return
    //   68: astore_2
    //   69: getstatic 42	com/baidu/android/pushservice/g:b	Ljava/lang/String;
    //   72: new 136	java/lang/StringBuilder
    //   75: dup
    //   76: ldc 186
    //   78: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_2
    //   82: invokevirtual 189	java/io/IOException:getMessage	()Ljava/lang/String;
    //   85: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   88: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   91: invokestatic 194	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   94: goto -60 -> 34
    //   97: astore_2
    //   98: aload_1
    //   99: monitorexit
    //   100: aload_2
    //   101: athrow
    //   102: astore_3
    //   103: aload_2
    //   104: monitorexit
    //   105: aload_3
    //   106: athrow
    //   107: astore_2
    //   108: getstatic 42	com/baidu/android/pushservice/g:b	Ljava/lang/String;
    //   111: new 136	java/lang/StringBuilder
    //   114: dup
    //   115: ldc 186
    //   117: invokespecial 141	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   120: aload_2
    //   121: invokevirtual 195	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   124: invokevirtual 145	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 194	com/baidu/android/pushservice/h/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   133: goto -72 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   18	34	68	java/io/IOException
    //   18	34	97	finally
    //   34	46	97	finally
    //   58	61	97	finally
    //   61	67	97	finally
    //   69	94	97	finally
    //   98	100	97	finally
    //   105	107	97	finally
    //   108	133	97	finally
    //   46	58	102	finally
    //   103	105	102	finally
    //   58	61	107	java/lang/Exception
  }

  private void i()
  {
    synchronized (g)
    {
      a = f.a(this.m);
      return;
    }
  }

  private void j()
  {
    k();
    long l1 = System.currentTimeMillis();
    long l2 = this.f + l1;
    int i1 = (int)(l2 / 60000L % 5L);
    int i2 = (int)(l2 / 1000L);
    l1 = l2;
    if (i1 == 0)
    {
      l1 = l2;
      if (i2 % 60 < 15)
        l1 = l2 + (()(Math.random() * (this.f - 20000)) + 15000L);
    }
    AlarmManager localAlarmManager = (AlarmManager)this.m.getSystemService("alarm");
    try
    {
      localAlarmManager.setRepeating(0, l1, this.f, r());
      return;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.a(b, localException);
    }
  }

  private void k()
  {
    AlarmManager localAlarmManager = (AlarmManager)this.m.getSystemService("alarm");
    try
    {
      localAlarmManager.cancel(r());
      return;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.a.a(b, localException);
    }
  }

  private void l()
  {
    new Thread(new g.1(this)).start();
  }

  private boolean m()
  {
    if (h == null);
    try
    {
      h = new LocalServerSocket(m.p(this.m));
      q();
      return true;
    }
    catch (Exception localException)
    {
      com.baidu.android.pushservice.h.b.a(b, "--- Socket Adress (" + m.p(this.m) + ") in use --- @ " + this.m.getPackageName(), this.m);
      l.b(this.m);
    }
    return false;
  }

  private boolean n()
  {
    boolean bool1 = true;
    d.a(this.m);
    boolean bool2 = com.baidu.android.pushservice.f.a.a(this.m);
    com.baidu.android.pushservice.h.b.a(b, "heartbeat networkConnected :" + bool2, this.m);
    Object localObject = m.u(this.m);
    localObject = m.n(this.m, (String)localObject);
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!this.m.getPackageName().equals(localObject)))
    {
      k();
      bool1 = false;
    }
    do
    {
      do
      {
        return bool1;
        if (bool2)
          break;
        if (this.f != e)
          a(e / 1000);
      }
      while (a.b() <= 0);
      t.a(this.m, "039912");
      return true;
      if (a.b() > 0)
        t.a(this.m, "039914");
    }
    while (a == null);
    if (!a.a())
      if (!j.a(this.m).d())
      {
        com.baidu.android.pushservice.h.b.c(b, "Channel token is not available, start NETWORK REGISTER SERVICE .", this.m);
        o();
      }
    while (true)
    {
      m.a("heartbeat PushConnection isConnected " + a.a() + " at Time " + System.currentTimeMillis(), this.m.getApplicationContext());
      return true;
      p();
      continue;
      a.d();
      localObject = new Intent("com.baidu.android.pushservice.action.METHOD");
      ((Intent)localObject).putExtra("method", "com.baidu.android.pushservice.action.SEND_APPSTAT");
      ((Intent)localObject).setClass(this.m, PushService.class);
      this.i.a((Intent)localObject);
    }
  }

  private void o()
  {
    this.n.removeCallbacks(this.p);
    this.n.postDelayed(this.p, 500L);
  }

  private void p()
  {
    if ((h != null) || (m()))
    {
      this.n.removeCallbacks(this.q);
      this.n.postDelayed(this.q, 1000L);
    }
  }

  private void q()
  {
    com.baidu.android.pushservice.util.b.a(this.m, "com.baidu.push.cur_prio", a.a());
    com.baidu.android.pushservice.util.b.a(this.m, "com.baidu.push.cur_pkg", this.m.getPackageName());
  }

  private PendingIntent r()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("AlarmAlert", "OK");
    localIntent.setFlags(32);
    localIntent.setClass(this.m, PushService.class);
    return PendingIntent.getService(this.m.getApplicationContext(), 0, localIntent, 134217728);
  }

  public void a(int paramInt)
  {
    com.baidu.android.pushservice.h.b.a(b, "heartbeat set : " + paramInt + " secs", this.m);
    if (paramInt > 0)
      this.f = (paramInt * 1000);
    j();
  }

  public boolean a()
  {
    com.baidu.android.pushservice.h.b.a(b, "Create PushSDK from : " + this.m.getPackageName(), this.m);
    k();
    this.k = Boolean.valueOf(true);
    if ((m.c(this.m.getApplicationContext())) || (b(this.m)))
    {
      com.baidu.android.pushservice.h.b.a(b, "onCreate shouldStopSelf", this.m);
      return false;
    }
    synchronized (l)
    {
      if (!PushSocket.a)
        return false;
    }
    if (!m())
    {
      String str = m.u(this.m);
      str = m.n(this.m, str);
      if (!this.m.getPackageName().equals(str))
        return false;
    }
    h.a(this.m);
    Thread.setDefaultUncaughtExceptionHandler(new b(this.m.getApplicationContext()));
    i();
    this.i = new i(this.m);
    PushSettings.l(this.m);
    if (h != null)
    {
      this.n.postDelayed(this.o, 500L);
      l();
    }
    this.j = Boolean.valueOf(true);
    return true;
  }

  public boolean a(Intent arg1)
  {
    com.baidu.android.pushservice.h.b.a(b, "PushSDK handleOnStart go", this.m);
    String str = b;
    StringBuilder localStringBuilder = new StringBuilder("handleOnStart intent action = ");
    if (??? != null);
    for (Object localObject = ???.getAction() + "  " + ???.toUri(0); ; localObject = "")
    {
      com.baidu.android.pushservice.h.a.c(str, (String)localObject);
      localObject = ???;
      if (??? == null)
      {
        localObject = new Intent();
        com.baidu.android.pushservice.h.b.c(b, "--- handleOnStart by null intent!", this.m);
      }
      if (((this.k.booleanValue()) || (a())) && ((!this.k.booleanValue()) || (this.j.booleanValue())))
        break;
      return false;
    }
    boolean bool;
    synchronized (l)
    {
      this.n.removeCallbacks(this.o);
      com.baidu.android.pushservice.h.a.b(b, "-- handleOnStart -- " + localObject);
      if (h != null)
        break label234;
      if ("com.baidu.android.pushservice.action.METHOD".equals(((Intent)localObject).getAction()))
      {
        bool = this.i.a((Intent)localObject);
        return bool;
      }
    }
    return true;
    label234: if (localIntent.getStringExtra("AlarmAlert") != null)
    {
      bool = n();
      return bool;
    }
    if (localIntent != null)
    {
      if ("pushservice_restart_v2".equals(localIntent.getStringExtra("method")))
      {
        if (!m.c(this.m))
        {
          if (localIntent.getLongExtra("priority2", 0L) <= m.k(this.m))
          {
            if ((a != null) && (!a.a()))
              l();
            return true;
          }
          m.a(this.m, 3000L);
          return false;
        }
        return false;
      }
      if (this.i.a(localIntent))
      {
        com.baidu.android.pushservice.h.b.c(b, "-- handleOnStart -- intent handled  by mRegistrationService ", this.m);
        return true;
      }
    }
    l();
    return true;
  }

  public i c()
  {
    return this.i;
  }

  void d()
  {
    com.baidu.android.pushservice.h.b.a(b, ">> sendRequestTokenIntent", this.m);
    Intent localIntent = new Intent("com.baidu.pushservice.action.TOKEN");
    l.b(this.m, localIntent);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.g
 * JD-Core Version:    0.6.2
 */