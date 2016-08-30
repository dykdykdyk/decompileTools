package com.loc;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.List;

public final class i extends Thread
  implements ab
{
  private j a;
  private aa b;
  private eo c;
  private String d;
  private RandomAccessFile e;
  private String f;
  private Context g;
  private String h;
  private String i;
  private String j;
  private String k;
  private int l;
  private int m;

  public i(Context paramContext, j paramj, eo parameo)
  {
    try
    {
      this.g = paramContext.getApplicationContext();
      this.c = parameo;
      if (paramj == null)
        return;
      this.a = paramj;
      this.b = new aa(new m(this.a));
      parameo = this.a.a.split("/");
      this.f = parameo[(parameo.length - 1)];
      parameo = this.f.split("_");
      this.h = parameo[0];
      this.i = paramj.c;
      this.j = parameo[1];
      this.l = Integer.parseInt(parameo[3]);
      this.m = Integer.parseInt(parameo[4].split("\\.")[0]);
      this.k = paramj.b;
      this.d = n.a(paramContext, this.f);
      return;
    }
    catch (Throwable paramContext)
    {
      paramContext.printStackTrace();
    }
  }

  private boolean a(f paramf, v paramv, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ("errorstatus".equals(paramv.f))
    {
      if (!new File(n.a(this.g, this.c.c, this.c.a)).exists())
      {
        n.a(this.g, paramf, this.c);
        q.b(this.g, this.c, n.a(this.g, this.h, this.c.a), n.a(this.g), this.g.getClassLoader());
      }
      return true;
    }
    if (!new File(this.d).exists())
      return false;
    if (paramf.a(u.a(n.b(paramString1, paramString2), paramString1, paramString2, paramString3), new u()).size() > 0)
      return true;
    try
    {
      paramv = new w(n.b(paramString1, this.c.a), paramString4, paramString1, paramString2, paramString3);
      paramv.f = "usedex";
      paramv = paramv.a();
      n.a(this.g, paramf, this.c, paramv, this.d);
      q.b(this.g, this.c, n.a(this.g, this.h, this.c.a), n.a(this.g), this.g.getClassLoader());
      return true;
    }
    catch (FileNotFoundException paramf)
    {
      while (true)
        paramf.printStackTrace();
    }
    catch (IOException paramf)
    {
      while (true)
        paramf.printStackTrace();
    }
    catch (Throwable paramf)
    {
      while (true)
        paramf.printStackTrace();
    }
  }

  private boolean a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    f localf = new f(this.g, t.a());
    try
    {
      List localList = localf.a(u.a(paramString3, "usedex"), new u());
      if (localList.size() > 0)
      {
        int n = x.a(((v)localList.get(0)).e, this.j);
        if (n > 0)
          return true;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      paramString1 = p.a(localf, paramString1);
      if (paramString1 != null)
        return a(localf, paramString1, paramString3, paramString4, paramString2, paramString5);
    }
    return false;
  }

  private boolean e()
  {
    try
    {
      Object localObject1 = this.h;
      localObject2 = this.i;
      int n;
      if ((this.c != null) && (this.c.c.equals(localObject1)) && (this.c.a.equals(localObject2)))
      {
        n = 1;
        if ((n == 0) || (a(this.f, this.j, this.h, this.i, this.k)))
          break label248;
        if (eh.h(this.g) != 1)
          break label236;
        n = 1;
        label93: if (n == 0)
          break label248;
        if ((Build.VERSION.SDK_INT < this.m) || (Build.VERSION.SDK_INT > this.l))
          break label241;
        n = 1;
      }
      label236: label241: 
      while (true)
        label119: if (n != 0)
        {
          localObject2 = this.c.c;
          localObject1 = new f(this.g, t.a());
          localObject2 = ((f)localObject1).a(u.a((String)localObject2, "copy"), new u());
          n.a((List)localObject2);
          if (((List)localObject2).size() > 1)
          {
            int i1 = ((List)localObject2).size();
            n = 1;
            while (true)
              if (n < i1)
              {
                v localv = (v)((List)localObject2).get(n);
                n.a(this.g, (f)localObject1, localv.a);
                n += 1;
                continue;
                n = 0;
                break;
                n = 0;
                break label93;
                n = 0;
                break label119;
              }
          }
          return true;
        }
      label248: return false;
    }
    catch (Throwable localThrowable)
    {
      Object localObject2 = new StringBuilder();
      if (y.a == null)
        y.a = Environment.getExternalStorageDirectory().getAbsolutePath();
      y.a(y.a + File.separator + "dynamiclog.txt", eq.a(localThrowable));
      localThrowable.printStackTrace();
    }
    return false;
  }

  public final void a()
  {
    try
    {
      start();
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  // ERROR //
  public final void a(byte[] paramArrayOfByte, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   4: ifnonnull +53 -> 57
    //   7: new 124	java/io/File
    //   10: dup
    //   11: aload_0
    //   12: getfield 104	com/loc/i:d	Ljava/lang/String;
    //   15: invokespecial 134	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: astore 4
    //   20: aload 4
    //   22: invokevirtual 284	java/io/File:getParentFile	()Ljava/io/File;
    //   25: astore 5
    //   27: aload 5
    //   29: invokevirtual 138	java/io/File:exists	()Z
    //   32: ifne +9 -> 41
    //   35: aload 5
    //   37: invokevirtual 287	java/io/File:mkdirs	()Z
    //   40: pop
    //   41: aload_0
    //   42: new 289	java/io/RandomAccessFile
    //   45: dup
    //   46: aload 4
    //   48: ldc_w 291
    //   51: invokespecial 294	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   54: putfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   57: aload_0
    //   58: getfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   61: lload_2
    //   62: invokevirtual 298	java/io/RandomAccessFile:seek	(J)V
    //   65: aload_0
    //   66: getfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   69: aload_1
    //   70: invokevirtual 302	java/io/RandomAccessFile:write	([B)V
    //   73: return
    //   74: astore 4
    //   76: aload 4
    //   78: invokevirtual 188	java/io/FileNotFoundException:printStackTrace	()V
    //   81: goto -24 -> 57
    //   84: astore_1
    //   85: aload_1
    //   86: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   89: return
    //   90: astore_1
    //   91: aload_1
    //   92: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   95: return
    //
    // Exception table:
    //   from	to	target	type
    //   41	57	74	java/io/FileNotFoundException
    //   0	41	84	java/lang/Throwable
    //   41	57	84	java/lang/Throwable
    //   57	73	84	java/lang/Throwable
    //   76	81	84	java/lang/Throwable
    //   91	95	84	java/lang/Throwable
    //   57	73	90	java/io/IOException
  }

  public final void b()
  {
    try
    {
      RandomAccessFile localRandomAccessFile = this.e;
      if (localRandomAccessFile == null)
        return;
      try
      {
        this.e.close();
        return;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }

  // ERROR //
  public final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +4 -> 10
    //   9: return
    //   10: aload_0
    //   11: getfield 281	com/loc/i:e	Ljava/io/RandomAccessFile;
    //   14: invokevirtual 305	java/io/RandomAccessFile:close	()V
    //   17: aload_0
    //   18: getfield 45	com/loc/i:a	Lcom/loc/j;
    //   21: getfield 95	com/loc/j:b	Ljava/lang/String;
    //   24: astore_2
    //   25: aload_0
    //   26: getfield 104	com/loc/i:d	Ljava/lang/String;
    //   29: aload_2
    //   30: invokestatic 308	com/loc/n:a	(Ljava/lang/String;Ljava/lang/String;)Z
    //   33: ifeq +217 -> 250
    //   36: aload_0
    //   37: getfield 45	com/loc/i:a	Lcom/loc/j;
    //   40: getfield 77	com/loc/j:c	Ljava/lang/String;
    //   43: astore_3
    //   44: new 164	com/loc/f
    //   47: dup
    //   48: aload_0
    //   49: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   52: invokestatic 195	com/loc/t:a	()Lcom/loc/t;
    //   55: invokespecial 198	com/loc/f:<init>	(Landroid/content/Context;Lcom/loc/es;)V
    //   58: astore_1
    //   59: new 175	com/loc/w
    //   62: dup
    //   63: aload_0
    //   64: getfield 71	com/loc/i:f	Ljava/lang/String;
    //   67: aload_2
    //   68: aload_0
    //   69: getfield 75	com/loc/i:h	Ljava/lang/String;
    //   72: aload_3
    //   73: aload_0
    //   74: getfield 81	com/loc/i:j	Ljava/lang/String;
    //   77: invokespecial 178	com/loc/w:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   80: astore 4
    //   82: aload 4
    //   84: ldc 232
    //   86: putfield 181	com/loc/w:f	Ljava/lang/String;
    //   89: aload_1
    //   90: aload 4
    //   92: invokevirtual 184	com/loc/w:a	()Lcom/loc/v;
    //   95: aload_0
    //   96: getfield 71	com/loc/i:f	Ljava/lang/String;
    //   99: aload_0
    //   100: getfield 75	com/loc/i:h	Ljava/lang/String;
    //   103: aload_3
    //   104: aload_0
    //   105: getfield 81	com/loc/i:j	Ljava/lang/String;
    //   108: invokestatic 161	com/loc/u:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   111: invokestatic 311	com/loc/p:a	(Lcom/loc/f;Lcom/loc/v;Ljava/lang/String;)V
    //   114: new 175	com/loc/w
    //   117: dup
    //   118: aload_0
    //   119: getfield 75	com/loc/i:h	Ljava/lang/String;
    //   122: aload_0
    //   123: getfield 43	com/loc/i:c	Lcom/loc/eo;
    //   126: getfield 128	com/loc/eo:a	Ljava/lang/String;
    //   129: invokestatic 156	com/loc/n:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   132: aload_2
    //   133: aload_0
    //   134: getfield 75	com/loc/i:h	Ljava/lang/String;
    //   137: aload_3
    //   138: aload_0
    //   139: getfield 81	com/loc/i:j	Ljava/lang/String;
    //   142: invokespecial 178	com/loc/w:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   145: astore_2
    //   146: aload_2
    //   147: ldc 180
    //   149: putfield 181	com/loc/w:f	Ljava/lang/String;
    //   152: aload_2
    //   153: invokevirtual 184	com/loc/w:a	()Lcom/loc/v;
    //   156: astore_2
    //   157: aload_0
    //   158: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   161: aload_1
    //   162: aload_0
    //   163: getfield 43	com/loc/i:c	Lcom/loc/eo;
    //   166: aload_2
    //   167: aload_0
    //   168: getfield 104	com/loc/i:d	Ljava/lang/String;
    //   171: invokestatic 187	com/loc/n:a	(Landroid/content/Context;Lcom/loc/f;Lcom/loc/eo;Lcom/loc/v;Ljava/lang/String;)V
    //   174: aload_0
    //   175: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   178: aload_0
    //   179: getfield 43	com/loc/i:c	Lcom/loc/eo;
    //   182: aload_0
    //   183: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   186: aload_0
    //   187: getfield 75	com/loc/i:h	Ljava/lang/String;
    //   190: aload_0
    //   191: getfield 43	com/loc/i:c	Lcom/loc/eo;
    //   194: getfield 128	com/loc/eo:a	Ljava/lang/String;
    //   197: invokestatic 131	com/loc/n:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   200: aload_0
    //   201: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   204: invokestatic 144	com/loc/n:a	(Landroid/content/Context;)Ljava/lang/String;
    //   207: aload_0
    //   208: getfield 41	com/loc/i:g	Landroid/content/Context;
    //   211: invokevirtual 148	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   214: invokestatic 153	com/loc/q:b	(Landroid/content/Context;Lcom/loc/eo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   217: return
    //   218: astore_1
    //   219: aload_1
    //   220: invokevirtual 188	java/io/FileNotFoundException:printStackTrace	()V
    //   223: return
    //   224: astore_1
    //   225: aload_1
    //   226: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   229: return
    //   230: astore_1
    //   231: aload_1
    //   232: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   235: goto -218 -> 17
    //   238: astore_1
    //   239: aload_1
    //   240: invokevirtual 189	java/io/IOException:printStackTrace	()V
    //   243: return
    //   244: astore_1
    //   245: aload_1
    //   246: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   249: return
    //   250: new 124	java/io/File
    //   253: dup
    //   254: aload_0
    //   255: getfield 104	com/loc/i:d	Ljava/lang/String;
    //   258: invokespecial 134	java/io/File:<init>	(Ljava/lang/String;)V
    //   261: invokevirtual 314	java/io/File:delete	()Z
    //   264: pop
    //   265: return
    //   266: astore_1
    //   267: aload_1
    //   268: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   271: return
    //
    // Exception table:
    //   from	to	target	type
    //   114	217	218	java/io/FileNotFoundException
    //   0	5	224	java/lang/Throwable
    //   10	17	224	java/lang/Throwable
    //   17	114	224	java/lang/Throwable
    //   219	223	224	java/lang/Throwable
    //   231	235	224	java/lang/Throwable
    //   239	243	224	java/lang/Throwable
    //   245	249	224	java/lang/Throwable
    //   267	271	224	java/lang/Throwable
    //   10	17	230	java/io/IOException
    //   114	217	238	java/io/IOException
    //   114	217	244	java/lang/Throwable
    //   250	265	266	java/lang/Throwable
  }

  public final void d()
  {
  }

  public final void run()
  {
    try
    {
      if (e())
        this.b.a(this);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.i
 * JD-Core Version:    0.6.2
 */