package com.google.android.gms.common.a;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.internal.ac;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class a
{
  private static final Object a = new Object();
  private static a b;
  private static Integer h;
  private final List<String> c;
  private final List<String> d;
  private final List<String> e;
  private final List<String> f;
  private e g;
  private e i;

  private a()
  {
    if (b() == d.b)
    {
      this.c = Collections.EMPTY_LIST;
      this.d = Collections.EMPTY_LIST;
      this.e = Collections.EMPTY_LIST;
      this.f = Collections.EMPTY_LIST;
      return;
    }
    Object localObject = (String)c.b.b();
    if (localObject == null)
    {
      localObject = Collections.EMPTY_LIST;
      this.c = ((List)localObject);
      localObject = (String)c.c.b();
      if (localObject != null)
        break label194;
      localObject = Collections.EMPTY_LIST;
      label83: this.d = ((List)localObject);
      localObject = (String)c.d.b();
      if (localObject != null)
        break label207;
      localObject = Collections.EMPTY_LIST;
      label106: this.e = ((List)localObject);
      localObject = (String)c.e.b();
      if (localObject != null)
        break label220;
    }
    label194: label207: label220: for (localObject = Collections.EMPTY_LIST; ; localObject = Arrays.asList(((String)localObject).split(",")))
    {
      this.f = ((List)localObject);
      this.g = new e(((Long)c.f.b()).longValue());
      this.i = new e(((Long)c.f.b()).longValue());
      return;
      localObject = Arrays.asList(((String)localObject).split(","));
      break;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label83;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label106;
    }
  }

  public static a a()
  {
    synchronized (a)
    {
      if (b == null)
        b = new a();
      return b;
    }
  }

  public static String a(ServiceConnection paramServiceConnection)
  {
    return String.valueOf(Process.myPid() << 32 | System.identityHashCode(paramServiceConnection));
  }

  @SuppressLint({"UntrackedBindService"})
  public static void a(Context paramContext, ServiceConnection paramServiceConnection)
  {
    paramContext.unbindService(paramServiceConnection);
    a(paramServiceConnection);
  }

  @SuppressLint({"UntrackedBindService"})
  public static boolean a(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    boolean bool2 = false;
    ComponentName localComponentName = paramIntent.getComponent();
    boolean bool1;
    if (localComponentName == null)
    {
      bool1 = false;
      if (!bool1)
        break label51;
      Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
      bool1 = bool2;
    }
    label51: 
    do
    {
      return bool1;
      bool1 = com.google.android.gms.common.b.a.a(paramContext, localComponentName.getPackageName());
      break;
      bool2 = paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
      bool1 = bool2;
    }
    while (!bool2);
    a(paramServiceConnection);
    return bool2;
  }

  private static int b()
  {
    if (h == null);
    try
    {
      h = Integer.valueOf(d.b);
      return h.intValue();
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        h = Integer.valueOf(d.b);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.a.a
 * JD-Core Version:    0.6.2
 */