package com.crashlytics.android.core;

import com.crashlytics.android.core.a.a.c;
import com.crashlytics.android.core.a.a.d;
import com.crashlytics.android.core.a.a.e;
import com.crashlytics.android.core.a.a.g;
import io.fabric.sdk.android.r;
import java.io.IOException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

final class bd
{
  private static final e a = new e("", "");
  private static final bn[] b = new bn[0];
  private static final bq[] c = new bq[0];
  private static final bk[] d = new bk[0];
  private static final bf[] e = new bf[0];
  private static final bg[] f = new bg[0];

  private static bo a(com.crashlytics.android.core.a.a.b[] paramArrayOfb)
  {
    bg[] arrayOfbg = new bg[paramArrayOfb.length];
    int i = 0;
    while (i < arrayOfbg.length)
    {
      arrayOfbg[i] = new bg(paramArrayOfb[i]);
      i += 1;
    }
    return new bo(arrayOfbg);
  }

  private static bo a(g[] paramArrayOfg)
  {
    if (paramArrayOfg != null);
    for (bk[] arrayOfbk = new bk[paramArrayOfg.length]; ; arrayOfbk = d)
    {
      int i = 0;
      while (i < arrayOfbk.length)
      {
        arrayOfbk[i] = new bk(paramArrayOfg[i]);
        i += 1;
      }
    }
    return new bo(arrayOfbk);
  }

  public static void a(d paramd, az paramaz, Map<String, String> paramMap, f paramf)
    throws IOException
  {
    if (paramd.b != null)
    {
      localObject1 = paramd.b;
      localObject2 = new bp((e)localObject1);
      localObject3 = paramd.c;
      if (localObject3 == null)
        break label100;
    }
    label100: for (Object localObject1 = new bq[localObject3.length]; ; localObject1 = c)
    {
      i = 0;
      while (i < localObject1.length)
      {
        localObject4 = localObject3[i];
        localObject1[i] = new bq((com.crashlytics.android.core.a.a.f)localObject4, a(((com.crashlytics.android.core.a.a.f)localObject4).c));
        i += 1;
      }
      localObject1 = a;
      break;
    }
    Object localObject3 = new bo((bn[])localObject1);
    Object localObject4 = paramd.d;
    if (localObject4 != null);
    for (localObject1 = new bf[localObject4.length]; ; localObject1 = e)
    {
      i = 0;
      while (i < localObject1.length)
      {
        localObject1[i] = new bf(localObject4[i]);
        i += 1;
      }
    }
    localObject1 = new bj((bp)localObject2, (bo)localObject3, new bo((bn[])localObject1));
    Object localObject2 = paramd.e;
    paramMap = new TreeMap(paramMap);
    if (localObject2 != null)
    {
      int j = localObject2.length;
      i = 0;
      while (i < j)
      {
        localObject3 = localObject2[i];
        paramMap.put(((com.crashlytics.android.core.a.a.b)localObject3).a, ((com.crashlytics.android.core.a.a.b)localObject3).b);
        i += 1;
      }
    }
    paramMap = (Map.Entry[])paramMap.entrySet().toArray(new Map.Entry[paramMap.size()]);
    localObject2 = new com.crashlytics.android.core.a.a.b[paramMap.length];
    int i = 0;
    while (i < localObject2.length)
    {
      localObject2[i] = new com.crashlytics.android.core.a.a.b((String)paramMap[i].getKey(), (String)paramMap[i].getValue());
      i += 1;
    }
    paramMap = new be((bj)localObject1, a((com.crashlytics.android.core.a.a.b[])localObject2));
    localObject1 = paramd.f;
    localObject1 = new bh(((c)localObject1).f / 100.0F, ((c)localObject1).g, ((c)localObject1).h, ((c)localObject1).a, ((c)localObject1).b - ((c)localObject1).d, ((c)localObject1).c - ((c)localObject1).e);
    localObject2 = paramaz.a();
    if (localObject2 == null)
      io.fabric.sdk.android.f.b().a("CrashlyticsCore", "No log data to include with this event.");
    paramaz.b();
    if (localObject2 != null);
    for (paramaz = new bl((b)localObject2); ; paramaz = new bm())
    {
      new bi(paramd.a, "ndk-crash", new bn[] { paramMap, localObject1, paramaz }).b(paramf);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bd
 * JD-Core Version:    0.6.2
 */