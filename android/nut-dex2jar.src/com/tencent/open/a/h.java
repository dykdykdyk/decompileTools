package com.tencent.open.a;

import android.content.Context;
import android.os.Environment;
import android.os.HandlerThread;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;

public class h
{
  public static h a;
  protected static final b c;
  private static boolean d;
  protected a b = new a(c);

  static
  {
    int j = 1;
    Object localObject2 = null;
    a = null;
    d = false;
    int k = c.m;
    long l1 = c.n;
    String str = c.d;
    Object localObject1 = Environment.getExternalStorageState();
    if (("mounted".equals(localObject1)) || ("mounted_ro".equals(localObject1)))
    {
      i = 1;
      if (i != 0)
        break label133;
      localObject1 = null;
      label60: if ((localObject1 == null) || (((f)localObject1).c <= c.f))
        break label252;
    }
    label133: label252: for (int i = j; ; i = 0)
    {
      if (i != 0)
      {
        localObject1 = new File(Environment.getExternalStorageDirectory(), str);
        c = new b((File)localObject1, k, c.g, c.h, c.c, c.i, c.e, l1);
        return;
        i = 0;
        break;
        Object localObject3 = Environment.getExternalStorageDirectory();
        localObject1 = new f();
        ((f)localObject1).a = ((File)localObject3);
        localObject3 = new StatFs(((File)localObject3).getAbsolutePath());
        long l2 = ((StatFs)localObject3).getBlockSize();
        long l3 = ((StatFs)localObject3).getBlockCount();
        long l4 = ((StatFs)localObject3).getAvailableBlocks();
        ((f)localObject1).b = (l3 * l2);
        ((f)localObject1).c = (l4 * l2);
        break label60;
      }
      if (com.tencent.open.utils.g.a() == null);
      for (localObject1 = localObject2; ; localObject1 = com.tencent.open.utils.g.a().getFilesDir())
      {
        localObject1 = new File((File)localObject1, str);
        break;
      }
    }
  }

  public static void a()
  {
    try
    {
      h localh = b();
      if (localh.b != null)
      {
        localh.b.a();
        a locala = localh.b;
        locala.b();
        locala.a.quit();
        localh.b = null;
      }
      if (a != null)
        a = null;
      return;
    }
    finally
    {
    }
  }

  private void a(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    String str;
    if (d)
    {
      str = com.tencent.open.utils.g.b();
      if (!TextUtils.isEmpty(str))
      {
        str = str + " SDK_VERSION:2.9.4.lite";
        if (this.b != null);
      }
    }
    do
    {
      return;
      g.a.b(32, Thread.currentThread(), System.currentTimeMillis(), "openSDK_LOG", str, null);
      this.b.b(32, Thread.currentThread(), System.currentTimeMillis(), "openSDK_LOG", str, null);
      d = false;
      g.a.b(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
    }
    while ((!e.a(c.b, paramInt)) || (this.b == null));
    this.b.b(paramInt, Thread.currentThread(), System.currentTimeMillis(), paramString1, paramString2, paramThrowable);
  }

  public static final void a(String paramString1, String paramString2)
  {
    b().a(1, paramString1, paramString2, null);
  }

  public static final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    b().a(2, paramString1, paramString2, paramThrowable);
  }

  private static h b()
  {
    if (a == null);
    try
    {
      if (a == null)
      {
        a = new h();
        d = true;
      }
      return a;
    }
    finally
    {
    }
  }

  public static final void b(String paramString1, String paramString2)
  {
    b().a(2, paramString1, paramString2, null);
  }

  public static final void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    b().a(16, paramString1, paramString2, paramThrowable);
  }

  public static final void c(String paramString1, String paramString2)
  {
    b().a(4, paramString1, paramString2, null);
  }

  public static final void d(String paramString1, String paramString2)
  {
    b().a(8, paramString1, paramString2, null);
  }

  public static final void e(String paramString1, String paramString2)
  {
    b().a(16, paramString1, paramString2, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.open.a.h
 * JD-Core Version:    0.6.2
 */