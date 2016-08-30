package u.aly;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public final class fg
{
  public static fg b;
  bf a = null;
  private final String c = "umeng_it.cache";
  private File d;
  private long e;
  private long f;
  private Set<fc> g = new HashSet();
  private fh h = null;

  private fg(Context paramContext)
  {
    this.d = new File(paramContext.getFilesDir(), "umeng_it.cache");
    this.f = 86400000L;
    this.h = new fh(paramContext);
    this.h.b();
  }

  public static fg a(Context paramContext)
  {
    Object localObject3;
    try
    {
      if (b != null)
        break label288;
      Object localObject1 = new fg(paramContext);
      b = (fg)localObject1;
      ((fg)localObject1).a(new fi(paramContext));
      b.a(new fd(paramContext));
      b.a(new c(paramContext));
      b.a(new b(paramContext));
      b.a(new ff(paramContext));
      b.a(new fl(paramContext));
      b.a(new fm());
      b.a(new d(paramContext));
      paramContext = b;
      localObject3 = paramContext.e();
      if (localObject3 == null)
        break label288;
      localObject1 = new ArrayList(paramContext.g.size());
      try
      {
        paramContext.a = ((bf)localObject3);
        localObject3 = paramContext.g.iterator();
        while (((Iterator)localObject3).hasNext())
        {
          fc localfc = (fc)((Iterator)localObject3).next();
          localfc.a(paramContext.a);
          if (!localfc.b())
            ((List)localObject1).add(localfc);
        }
      }
      finally
      {
      }
    }
    finally
    {
    }
    Iterator localIterator = localObject2.iterator();
    while (localIterator.hasNext())
    {
      localObject3 = (fc)localIterator.next();
      paramContext.g.remove(localObject3);
    }
    paramContext.c();
    label288: paramContext = b;
    return paramContext;
  }

  private boolean a(fc paramfc)
  {
    boolean bool = false;
    fh localfh = this.h;
    String str = paramfc.a;
    if (!localfh.a.contains(str));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
        bool = this.g.add(paramfc);
      return bool;
    }
  }

  private void c()
  {
    bf localbf = new bf();
    HashMap localHashMap = new HashMap();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
    {
      fc localfc = (fc)localIterator.next();
      if (localfc.b())
      {
        if (localfc.c != null)
          localHashMap.put(localfc.a, localfc.c);
        if ((localfc.b != null) && (!localfc.b.isEmpty()))
          localArrayList.addAll(localfc.b);
      }
    }
    localbf.b = localArrayList;
    localbf.a = localHashMap;
    try
    {
      this.a = localbf;
      return;
    }
    finally
    {
    }
  }

  private void d()
  {
    Object localObject1;
    if (this.a != null)
    {
      localObject1 = this.a;
      if (localObject1 == null);
    }
    try
    {
      try
      {
        localObject1 = new da().a((cw)localObject1);
        if (localObject1 != null)
          cs.a(this.d, (byte[])localObject1);
        return;
      }
      finally
      {
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  // ERROR //
  private bf e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 51	u/aly/fg:d	Ljava/io/File;
    //   4: invokevirtual 197	java/io/File:exists	()Z
    //   7: ifne +5 -> 12
    //   10: aconst_null
    //   11: areturn
    //   12: new 199	java/io/FileInputStream
    //   15: dup
    //   16: aload_0
    //   17: getfield 51	u/aly/fg:d	Ljava/io/File;
    //   20: invokespecial 202	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   23: astore_2
    //   24: aload_2
    //   25: astore_1
    //   26: aload_2
    //   27: invokestatic 205	u/aly/cs:b	(Ljava/io/InputStream;)[B
    //   30: astore_3
    //   31: aload_2
    //   32: astore_1
    //   33: new 150	u/aly/bf
    //   36: dup
    //   37: invokespecial 151	u/aly/bf:<init>	()V
    //   40: astore 4
    //   42: aload_2
    //   43: astore_1
    //   44: new 207	u/aly/cz
    //   47: dup
    //   48: invokespecial 208	u/aly/cz:<init>	()V
    //   51: aload 4
    //   53: aload_3
    //   54: invokevirtual 211	u/aly/cz:a	(Lu/aly/cw;[B)V
    //   57: aload_2
    //   58: invokestatic 214	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   61: aload 4
    //   63: areturn
    //   64: astore_3
    //   65: aconst_null
    //   66: astore_2
    //   67: aload_2
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 194	java/lang/Exception:printStackTrace	()V
    //   73: aload_2
    //   74: invokestatic 214	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   77: aconst_null
    //   78: areturn
    //   79: astore_1
    //   80: aconst_null
    //   81: astore_3
    //   82: aload_1
    //   83: astore_2
    //   84: aload_3
    //   85: invokestatic 214	u/aly/cs:c	(Ljava/io/InputStream;)V
    //   88: aload_2
    //   89: athrow
    //   90: astore_2
    //   91: aload_1
    //   92: astore_3
    //   93: goto -9 -> 84
    //   96: astore_3
    //   97: goto -30 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   12	24	64	java/lang/Exception
    //   12	24	79	finally
    //   26	31	90	finally
    //   33	42	90	finally
    //   44	57	90	finally
    //   69	73	90	finally
    //   26	31	96	java/lang/Exception
    //   33	42	96	java/lang/Exception
    //   44	57	96	java/lang/Exception
  }

  public final void a()
  {
    long l = System.currentTimeMillis();
    int i;
    Object localObject4;
    Object localObject2;
    label76: int j;
    label83: Object localObject1;
    label98: Object localObject3;
    if (l - this.e >= this.f)
    {
      Iterator localIterator = this.g.iterator();
      i = 0;
      while (true)
        if (localIterator.hasNext())
        {
          fc localfc = (fc)localIterator.next();
          if (localfc.b())
          {
            localObject4 = localfc.c;
            if (localObject4 == null)
            {
              localObject2 = null;
              if (localObject4 != null)
                break label335;
              j = 0;
              localObject1 = localfc.a();
              if (localObject1 != null)
                break label344;
              localObject1 = null;
              if ((localObject1 == null) || (((String)localObject1).equals(localObject2)))
                break label409;
              localObject3 = localObject4;
              if (localObject4 == null)
                localObject3 = new az();
              ((az)localObject3).a = ((String)localObject1);
              ((az)localObject3).b = System.currentTimeMillis();
              ((az)localObject3).a();
              ((az)localObject3).c = (j + 1);
              ((az)localObject3).b();
              localObject4 = new at();
              ((at)localObject4).a = localfc.a;
              ((at)localObject4).c = ((String)localObject1);
              ((at)localObject4).b = ((String)localObject2);
              ((at)localObject4).d = ((az)localObject3).b;
              ((at)localObject4).b();
              if (localfc.b == null)
                localfc.b = new ArrayList(2);
              localfc.b.add(localObject4);
              if (localfc.b.size() > 10)
                localfc.b.remove(0);
              localfc.c = ((az)localObject3);
              j = 1;
              label282: if (j == 0)
                break label439;
              if (!localfc.b())
              {
                localObject1 = this.h;
                localObject2 = localfc.a;
                ((fh)localObject1).a.add(localObject2);
              }
              i = 1;
            }
          }
        }
    }
    label409: label439: 
    while (true)
    {
      break;
      localObject2 = ((az)localObject4).a;
      break label76;
      label335: j = ((az)localObject4).c;
      break label83;
      label344: localObject3 = ((String)localObject1).trim();
      if (((String)localObject3).length() == 0)
      {
        localObject1 = null;
        break label98;
      }
      if ("0".equals(localObject3))
      {
        localObject1 = null;
        break label98;
      }
      localObject1 = localObject3;
      if (!"unknown".equals(((String)localObject3).toLowerCase(Locale.US)))
        break label98;
      localObject1 = null;
      break label98;
      j = 0;
      break label282;
      if (i != 0)
      {
        c();
        this.h.a();
        d();
      }
      this.e = l;
      return;
    }
  }

  public final void b()
  {
    Iterator localIterator = this.g.iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      fc localfc = (fc)localIterator.next();
      if (localfc.b())
      {
        if ((localfc.b == null) || (localfc.b.isEmpty()))
          break label84;
        localfc.b = null;
        i = 1;
      }
    }
    label84: 
    while (true)
    {
      break;
      if (i != 0)
      {
        this.a.a(false);
        d();
      }
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     u.aly.fg
 * JD-Core Version:    0.6.2
 */