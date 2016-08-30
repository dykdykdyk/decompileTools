package com.crashlytics.android.core;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Build.VERSION;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.y;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class by
{
  private static final b a = b.a("0");
  private static final b b = b.a("Unity");

  private static int a()
  {
    return f.b(1, a) + 0 + f.b(2, a) + f.b(3, 0L);
  }

  private static int a(int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    return f.a() + 0 + f.c(paramInt1) + f.b(3) + f.c(4, paramInt2) + f.b(5, paramLong1) + f.b(6, paramLong2);
  }

  private static int a(b paramb1, b paramb2)
  {
    int j = f.b(1, 0L) + 0 + f.b(2, 0L) + f.b(3, paramb1);
    int i = j;
    if (paramb2 != null)
      i = j + f.b(4, paramb2);
    return i;
  }

  private static int a(y paramy, String paramString)
  {
    return f.d(1, paramy.h) + f.b(2, b.a(paramString));
  }

  private static int a(StackTraceElement paramStackTraceElement, boolean paramBoolean)
  {
    int i;
    int j;
    if (paramStackTraceElement.isNativeMethod())
    {
      i = f.b(1, Math.max(paramStackTraceElement.getLineNumber(), 0)) + 0;
      j = i + f.b(2, b.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      i = j;
      if (paramStackTraceElement.getFileName() != null)
        i = j + f.b(3, b.a(paramStackTraceElement.getFileName()));
      if ((paramStackTraceElement.isNativeMethod()) || (paramStackTraceElement.getLineNumber() <= 0))
        break label141;
      i += f.b(4, paramStackTraceElement.getLineNumber());
    }
    label141: 
    while (true)
    {
      if (paramBoolean);
      for (j = 2; ; j = 0)
      {
        return f.c(5, j) + i;
        i = f.b(1, 0L) + 0;
        break;
      }
    }
  }

  private static int a(String paramString1, String paramString2)
  {
    int i = f.b(1, b.a(paramString1));
    paramString1 = paramString2;
    if (paramString2 == null)
      paramString1 = "";
    return i + f.b(2, b.a(paramString1));
  }

  private static int a(Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
  {
    int i = f.b(1, b.a(paramThread.getName()));
    i = f.c(2, paramInt) + i;
    int j = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < j)
    {
      int k = a(paramArrayOfStackTraceElement[paramInt], paramBoolean);
      i += k + (f.d(3) + f.f(k));
      paramInt += 1;
    }
    return i;
  }

  private static int a(Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    int k = 0;
    int j = f.b(1, b.a(paramThrowable.getClass().getName())) + 0;
    Object localObject = paramThrowable.getLocalizedMessage();
    int i = j;
    if (localObject != null)
      i = j + f.b(3, b.a((String)localObject));
    localObject = paramThrowable.getStackTrace();
    int m = localObject.length;
    j = 0;
    while (j < m)
    {
      int n = a(localObject[j], true);
      int i1 = f.d(4);
      int i2 = f.f(n);
      j += 1;
      i = n + (i1 + i2) + i;
    }
    localObject = paramThrowable.getCause();
    j = i;
    if (localObject != null)
    {
      j = k;
      paramThrowable = (Throwable)localObject;
      if (paramInt1 < paramInt2)
      {
        paramInt1 = a((Throwable)localObject, paramInt1 + 1, paramInt2);
        j = i + (paramInt1 + (f.d(6) + f.f(paramInt1)));
      }
    }
    else
    {
      return j;
    }
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      j += 1;
    }
    return i + f.c(7, j);
  }

  private static int a(Throwable paramThrowable, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, Thread[] paramArrayOfThread, List<StackTraceElement[]> paramList, b paramb1, b paramb2)
  {
    int i = a(paramThread, paramArrayOfStackTraceElement, 4, true);
    int m = f.d(1);
    int n = f.f(i);
    int k = paramArrayOfThread.length;
    int j = 0;
    i = i + (m + n) + 0;
    while (j < k)
    {
      m = a(paramArrayOfThread[j], (StackTraceElement[])paramList.get(j), 0, false);
      i += m + (f.d(1) + f.f(m));
      j += 1;
    }
    j = a(paramThrowable, 1, 8);
    k = f.d(2);
    m = f.f(j);
    n = a();
    int i1 = f.d(3);
    int i2 = f.f(n);
    int i3 = a(paramb1, paramb2);
    return j + (k + m) + i + (n + (i1 + i2)) + (i3 + (f.d(3) + f.f(i3)));
  }

  private static int a(Throwable paramThrowable, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, Thread[] paramArrayOfThread, List<StackTraceElement[]> paramList, b paramb1, b paramb2, Map<String, String> paramMap, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, int paramInt)
  {
    int i = a(paramThrowable, paramThread, paramArrayOfStackTraceElement, paramArrayOfThread, paramList, paramb1, paramb2);
    int j = i + (f.d(1) + f.f(i)) + 0;
    i = j;
    if (paramMap != null)
    {
      paramThrowable = paramMap.entrySet().iterator();
      for (i = j; paramThrowable.hasNext(); i = j + (f.d(2) + f.f(j)) + i)
      {
        paramThread = (Map.Entry)paramThrowable.next();
        j = a((String)paramThread.getKey(), (String)paramThread.getValue());
      }
    }
    j = i;
    if (paramRunningAppProcessInfo != null)
    {
      j = paramRunningAppProcessInfo.importance;
      j = i + f.b(3);
    }
    return j + f.c(4, paramInt);
  }

  private static b a(String paramString)
  {
    if (paramString == null)
      return null;
    return b.a(paramString);
  }

  private static void a(f paramf, int paramInt, StackTraceElement paramStackTraceElement, boolean paramBoolean)
    throws Exception
  {
    int i = 4;
    paramf.e(paramInt, 2);
    paramf.e(a(paramStackTraceElement, paramBoolean));
    if (paramStackTraceElement.isNativeMethod())
    {
      paramf.a(1, Math.max(paramStackTraceElement.getLineNumber(), 0));
      paramf.a(2, b.a(paramStackTraceElement.getClassName() + "." + paramStackTraceElement.getMethodName()));
      if (paramStackTraceElement.getFileName() != null)
        paramf.a(3, b.a(paramStackTraceElement.getFileName()));
      if ((!paramStackTraceElement.isNativeMethod()) && (paramStackTraceElement.getLineNumber() > 0))
        paramf.a(4, paramStackTraceElement.getLineNumber());
      if (!paramBoolean)
        break label142;
    }
    label142: for (paramInt = i; ; paramInt = 0)
    {
      paramf.a(5, paramInt);
      return;
      paramf.a(1, 0L);
      break;
    }
  }

  public static void a(f paramf, long paramLong1, String paramString1, Throwable paramThrowable, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, Thread[] paramArrayOfThread, List<StackTraceElement[]> paramList, Map<String, String> paramMap, az paramaz, ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo, int paramInt1, String paramString2, String paramString3, float paramFloat, int paramInt2, boolean paramBoolean, long paramLong2, long paramLong3)
    throws Exception
  {
    b localb = b.a(paramString2);
    if (paramString3 == null);
    int k;
    for (paramString2 = null; ; paramString2 = b.a(paramString3.replace("-", "")))
    {
      paramString3 = paramaz.a();
      if (paramString3 == null)
        io.fabric.sdk.android.f.b().a("CrashlyticsCore", "No log data to include with this event.");
      paramaz.b();
      paramf.e(10, 2);
      i = f.b(1, paramLong1);
      j = f.b(2, b.a(paramString1));
      k = a(paramThrowable, paramThread, paramArrayOfStackTraceElement, paramArrayOfThread, paramList, localb, paramString2, paramMap, paramRunningAppProcessInfo, paramInt1);
      int m = f.d(3);
      int n = f.f(k);
      int i1 = a(paramInt2, paramInt1, paramLong2, paramLong3);
      j = k + (m + n) + (i + 0 + j) + (i1 + (f.d(5) + f.f(i1)));
      i = j;
      if (paramString3 != null)
      {
        i = f.b(1, paramString3);
        i = j + (i + (f.d(6) + f.f(i)));
      }
      paramf.e(i);
      paramf.a(1, paramLong1);
      paramf.a(2, b.a(paramString1));
      paramf.e(3, 2);
      paramf.e(a(paramThrowable, paramThread, paramArrayOfStackTraceElement, paramArrayOfThread, paramList, localb, paramString2, paramMap, paramRunningAppProcessInfo, paramInt1));
      paramf.e(1, 2);
      paramf.e(a(paramThrowable, paramThread, paramArrayOfStackTraceElement, paramArrayOfThread, paramList, localb, paramString2));
      a(paramf, paramThread, paramArrayOfStackTraceElement, 4, true);
      j = paramArrayOfThread.length;
      i = 0;
      while (i < j)
      {
        a(paramf, paramArrayOfThread[i], (StackTraceElement[])paramList.get(i), 0, false);
        i += 1;
      }
    }
    int i = 1;
    for (int j = 2; ; j = 6)
    {
      paramf.e(j, 2);
      paramf.e(a(paramThrowable, 1, 8));
      paramf.a(1, b.a(paramThrowable.getClass().getName()));
      paramString1 = paramThrowable.getLocalizedMessage();
      if (paramString1 != null)
        paramf.a(3, b.a(paramString1));
      paramString1 = paramThrowable.getStackTrace();
      k = paramString1.length;
      j = 0;
      while (j < k)
      {
        a(paramf, 4, paramString1[j], true);
        j += 1;
      }
      paramThrowable = paramThrowable.getCause();
      if (paramThrowable == null)
        break label505;
      if (i >= 8)
        break;
      i += 1;
    }
    i = 0;
    while (paramThrowable != null)
    {
      paramThrowable = paramThrowable.getCause();
      i += 1;
    }
    paramf.a(7, i);
    label505: paramf.e(3, 2);
    paramf.e(a());
    paramf.a(1, a);
    paramf.a(2, a);
    paramf.a(3, 0L);
    paramf.e(4, 2);
    paramf.e(a(localb, paramString2));
    paramf.a(1, 0L);
    paramf.a(2, 0L);
    paramf.a(3, localb);
    if (paramString2 != null)
      paramf.a(4, paramString2);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramThread = paramMap.entrySet().iterator();
      while (paramThread.hasNext())
      {
        paramString1 = (Map.Entry)paramThread.next();
        paramf.e(2, 2);
        paramf.e(a((String)paramString1.getKey(), (String)paramString1.getValue()));
        paramf.a(1, b.a((String)paramString1.getKey()));
        paramThrowable = (String)paramString1.getValue();
        paramString1 = paramThrowable;
        if (paramThrowable == null)
          paramString1 = "";
        paramf.a(2, b.a(paramString1));
      }
    }
    if (paramRunningAppProcessInfo != null)
      if (paramRunningAppProcessInfo.importance == 100)
        break label844;
    label844: for (boolean bool = true; ; bool = false)
    {
      paramf.a(3, bool);
      paramf.a(4, paramInt1);
      paramf.e(5, 2);
      paramf.e(a(paramInt2, paramInt1, paramLong2, paramLong3));
      paramf.a(paramFloat);
      paramf.a(paramInt2);
      paramf.a(3, paramBoolean);
      paramf.a(4, paramInt1);
      paramf.a(5, paramLong2);
      paramf.a(6, paramLong3);
      if (paramString3 != null)
      {
        paramf.e(6, 2);
        paramf.e(f.b(1, paramString3));
        paramf.a(1, paramString3);
      }
      return;
    }
  }

  public static void a(f paramf, String paramString1, int paramInt1, String paramString2, int paramInt2, long paramLong1, long paramLong2, boolean paramBoolean, Map<y, String> paramMap, int paramInt3, String paramString3, String paramString4)
    throws Exception
  {
    paramString1 = b.a(paramString1);
    b localb = a(paramString2);
    paramString2 = a(paramString4);
    paramString3 = a(paramString3);
    paramf.e(9, 2);
    int j = f.b(1, paramString1);
    int k = f.d(3, paramInt1);
    if (localb == null);
    for (int i = 0; ; i = f.b(4, localb))
    {
      i = i + (k + (j + 0)) + f.c(5, paramInt2) + f.b(6, paramLong1) + f.b(7, paramLong2) + f.b(10);
      if (paramMap == null)
        break;
      paramString4 = paramMap.entrySet().iterator();
      while (true)
      {
        j = i;
        if (!paramString4.hasNext())
          break;
        Map.Entry localEntry = (Map.Entry)paramString4.next();
        j = a((y)localEntry.getKey(), (String)localEntry.getValue());
        i = j + (f.d(11) + f.f(j)) + i;
      }
    }
    j = i;
    int m = f.c(12, paramInt3);
    if (paramString3 == null)
    {
      i = 0;
      if (paramString2 != null)
        break label408;
    }
    label408: for (k = 0; ; k = f.b(14, paramString2))
    {
      paramf.e(k + (j + m + i));
      paramf.a(1, paramString1);
      paramf.b(3, paramInt1);
      paramf.a(4, localb);
      paramf.a(5, paramInt2);
      paramf.a(6, paramLong1);
      paramf.a(7, paramLong2);
      paramf.a(10, paramBoolean);
      paramString1 = paramMap.entrySet().iterator();
      while (paramString1.hasNext())
      {
        paramMap = (Map.Entry)paramString1.next();
        paramf.e(11, 2);
        paramf.e(a((y)paramMap.getKey(), (String)paramMap.getValue()));
        paramf.b(1, ((y)paramMap.getKey()).h);
        paramf.a(2, b.a((String)paramMap.getValue()));
      }
      i = f.b(13, paramString3);
      break;
    }
    paramf.a(12, paramInt3);
    if (paramString3 != null)
      paramf.a(13, paramString3);
    if (paramString2 != null)
      paramf.a(14, paramString2);
  }

  public static void a(f paramf, String paramString1, String paramString2, long paramLong)
    throws Exception
  {
    paramf.a(1, b.a(paramString2));
    paramf.a(2, b.a(paramString1));
    paramf.a(3, paramLong);
  }

  public static void a(f paramf, String paramString1, String paramString2, String paramString3)
    throws Exception
  {
    Object localObject = paramString1;
    if (paramString1 == null)
      localObject = "";
    paramString1 = b.a((String)localObject);
    localObject = a(paramString2);
    b localb = a(paramString3);
    int j = f.b(1, paramString1) + 0;
    int i = j;
    if (paramString2 != null)
      i = j + f.b(2, (b)localObject);
    j = i;
    if (paramString3 != null)
      j = i + f.b(3, localb);
    paramf.e(6, 2);
    paramf.e(j);
    paramf.a(1, paramString1);
    if (paramString2 != null)
      paramf.a(2, (b)localObject);
    if (paramString3 != null)
      paramf.a(3, localb);
  }

  public static void a(f paramf, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt, String paramString6)
    throws Exception
  {
    b localb = b.a(paramString1);
    paramString2 = b.a(paramString2);
    paramString3 = b.a(paramString3);
    paramString4 = b.a(paramString4);
    paramString5 = b.a(paramString5);
    if (paramString6 != null);
    for (paramString1 = b.a(paramString6); ; paramString1 = null)
    {
      paramf.e(7, 2);
      int i = f.b(1, localb);
      int j = f.b(2, paramString3);
      int k = f.b(3, paramString4);
      int m = f.b(1, paramString2) + 0;
      j = i + 0 + j + k + (m + (f.d(5) + f.f(m))) + f.b(6, paramString5);
      i = j;
      if (paramString1 != null)
        i = j + f.b(8, b) + f.b(9, paramString1);
      paramf.e(i + f.d(10, paramInt));
      paramf.a(1, localb);
      paramf.a(2, paramString3);
      paramf.a(3, paramString4);
      paramf.e(5, 2);
      paramf.e(f.b(1, paramString2) + 0);
      paramf.a(1, paramString2);
      paramf.a(6, paramString5);
      if (paramString1 != null)
      {
        paramf.a(8, b);
        paramf.a(9, paramString1);
      }
      paramf.b(10, paramInt);
      return;
    }
  }

  private static void a(f paramf, Thread paramThread, StackTraceElement[] paramArrayOfStackTraceElement, int paramInt, boolean paramBoolean)
    throws Exception
  {
    paramf.e(1, 2);
    paramf.e(a(paramThread, paramArrayOfStackTraceElement, paramInt, paramBoolean));
    paramf.a(1, b.a(paramThread.getName()));
    paramf.a(2, paramInt);
    int i = paramArrayOfStackTraceElement.length;
    paramInt = 0;
    while (paramInt < i)
    {
      a(paramf, 3, paramArrayOfStackTraceElement[paramInt], paramBoolean);
      paramInt += 1;
    }
  }

  public static void a(f paramf, boolean paramBoolean)
    throws Exception
  {
    b localb1 = b.a(Build.VERSION.RELEASE);
    b localb2 = b.a(Build.VERSION.CODENAME);
    paramf.e(8, 2);
    paramf.e(f.d(1, 3) + 0 + f.b(2, localb1) + f.b(3, localb2) + f.b(4));
    paramf.b(1, 3);
    paramf.a(2, localb1);
    paramf.a(3, localb2);
    paramf.a(4, paramBoolean);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.by
 * JD-Core Version:    0.6.2
 */