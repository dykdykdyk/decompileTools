package com.tencent.wxop.stat.b;

import android.util.Log;
import com.tencent.wxop.stat.t;

public final class b
{
  boolean a = true;
  private String b = "default";
  private int c = 2;

  public b()
  {
  }

  public b(String paramString)
  {
    this.b = paramString;
  }

  private String a()
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    if (arrayOfStackTraceElement == null);
    while (true)
    {
      return null;
      int j = arrayOfStackTraceElement.length;
      int i = 0;
      while (i < j)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        if ((!localStackTraceElement.isNativeMethod()) && (!localStackTraceElement.getClassName().equals(Thread.class.getName())) && (!localStackTraceElement.getClassName().equals(getClass().getName())))
          return "[" + Thread.currentThread().getName() + "(" + Thread.currentThread().getId() + "): " + localStackTraceElement.getFileName() + ":" + localStackTraceElement.getLineNumber() + "]";
        i += 1;
      }
    }
  }

  public final void a(Object paramObject)
  {
    String str;
    if ((this.a) && (this.c <= 4))
    {
      str = a();
      if (str != null)
        break label43;
    }
    label43: for (paramObject = paramObject.toString(); ; paramObject = str + " - " + paramObject)
    {
      Log.i(this.b, paramObject);
      t.u();
      return;
    }
  }

  public final void a(Throwable paramThrowable)
  {
    if (this.c <= 6)
    {
      Log.e(this.b, "", paramThrowable);
      t.u();
    }
  }

  public final void b(Object paramObject)
  {
    String str;
    if (this.c <= 5)
    {
      str = a();
      if (str != null)
        break label36;
    }
    label36: for (paramObject = paramObject.toString(); ; paramObject = str + " - " + paramObject)
    {
      Log.w(this.b, paramObject);
      t.u();
      return;
    }
  }

  public final void b(Throwable paramThrowable)
  {
    if (this.a)
      a(paramThrowable);
  }

  public final void c(Object paramObject)
  {
    if (this.a)
      b(paramObject);
  }

  public final void d(Object paramObject)
  {
    String str;
    if (this.c <= 6)
    {
      str = a();
      if (str != null)
        break label37;
    }
    label37: for (paramObject = paramObject.toString(); ; paramObject = str + " - " + paramObject)
    {
      Log.e(this.b, paramObject);
      t.u();
      return;
    }
  }

  public final void e(Object paramObject)
  {
    if (this.a)
      d(paramObject);
  }

  public final void f(Object paramObject)
  {
    String str;
    if (this.c <= 3)
    {
      str = a();
      if (str != null)
        break label36;
    }
    label36: for (paramObject = paramObject.toString(); ; paramObject = str + " - " + paramObject)
    {
      Log.d(this.b, paramObject);
      t.u();
      return;
    }
  }

  public final void g(Object paramObject)
  {
    if (this.a)
      f(paramObject);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.wxop.stat.b.b
 * JD-Core Version:    0.6.2
 */