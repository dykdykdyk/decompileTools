package com.baidu.android.pushservice;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.i.g;
import com.baidu.android.pushservice.i.t;
import com.baidu.android.pushservice.util.m;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;

class b
  implements Thread.UncaughtExceptionHandler
{
  private String a = "DefaultExceptionHandler";
  private Context b = null;

  public b(Context paramContext)
  {
    this.b = paramContext;
  }

  private String a()
  {
    int i = Process.myPid();
    Object localObject = (ActivityManager)this.b.getSystemService("activity");
    if (localObject != null)
    {
      localObject = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
      while (((Iterator)localObject).hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
        if (localRunningAppProcessInfo.pid == i)
          return localRunningAppProcessInfo.processName;
      }
    }
    return "";
  }

  private void b(Throwable paramThrowable)
  {
    paramThrowable = a(paramThrowable);
    a.c(this.a, "error :" + paramThrowable);
    m.a("exception " + paramThrowable + " at Time " + System.currentTimeMillis(), this.b.getApplicationContext());
    g localg = new g();
    localg.f = "040101";
    localg.g = System.currentTimeMillis();
    localg.h = com.baidu.android.pushservice.i.a.b.d(this.b);
    localg.a = paramThrowable;
    t.a(this.b, localg);
  }

  public String a(Throwable paramThrowable)
  {
    Object localObject = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter((Writer)localObject);
    while (paramThrowable != null)
    {
      paramThrowable.printStackTrace(localPrintWriter);
      paramThrowable = paramThrowable.getCause();
    }
    localObject = localObject.toString();
    String str = a();
    paramThrowable = (Throwable)localObject;
    if (!TextUtils.isEmpty(str))
      paramThrowable = str + "\n" + (String)localObject;
    localPrintWriter.close();
    return paramThrowable;
  }

  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    b(paramThrowable);
    m.f(this.b, this.b.getPackageName());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.b
 * JD-Core Version:    0.6.2
 */