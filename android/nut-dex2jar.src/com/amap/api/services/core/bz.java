package com.amap.api.services.core;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class bz
  implements Closeable
{
  static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
  private static final OutputStream q = new cb();
  final ThreadPoolExecutor b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File c;
  private final File d;
  private final File e;
  private final File f;
  private final int g;
  private long h;
  private final int i;
  private long j = 0L;
  private Writer k;
  private final LinkedHashMap<String, bz.c> l = new LinkedHashMap(0, 0.75F, true);
  private int m;
  private cc n;
  private long o = 0L;
  private final Callable<Void> p = new ca(this);

  private bz(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    this.c = paramFile;
    this.g = paramInt1;
    this.d = new File(paramFile, "journal");
    this.e = new File(paramFile, "journal.tmp");
    this.f = new File(paramFile, "journal.bkp");
    this.i = paramInt2;
    this.h = paramLong;
  }

  private bz.a a(String paramString, long paramLong)
    throws IOException
  {
    while (true)
    {
      bz.c localc;
      try
      {
        i();
        e(paramString);
        localc = (bz.c)this.l.get(paramString);
        if (paramLong != -1L)
          if (localc != null)
          {
            long l1 = bz.c.e(localc);
            if (l1 == paramLong);
          }
          else
          {
            paramString = null;
            return paramString;
          }
        if (localc == null)
        {
          localc = new bz.c(this, paramString, null);
          this.l.put(paramString, localc);
          locala = new bz.a(this, localc, null);
          bz.c.a(localc, locala);
          this.k.write("DIRTY " + paramString + '\n');
          this.k.flush();
          paramString = locala;
          continue;
        }
      }
      finally
      {
      }
      bz.a locala = bz.c.a(localc);
      if (locala != null)
        paramString = null;
    }
  }

  public static bz a(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
  {
    if (paramLong <= 0L)
      throw new IllegalArgumentException("maxSize <= 0");
    if (paramInt2 <= 0)
      throw new IllegalArgumentException("valueCount <= 0");
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists())
        break label148;
      ((File)localObject).delete();
    }
    while (true)
    {
      localObject = new bz(paramFile, paramInt1, paramInt2, paramLong);
      if (((bz)localObject).d.exists())
        try
        {
          ((bz)localObject).e();
          ((bz)localObject).f();
          ((bz)localObject).k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(((bz)localObject).d, true), ce.a));
          return localObject;
          label148: a((File)localObject, localFile, false);
        }
        catch (IOException localIOException)
        {
          ((bz)localObject).c();
        }
    }
    paramFile.mkdirs();
    paramFile = new bz(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.g();
    return paramFile;
  }

  private void a(bz.a parama, boolean paramBoolean)
    throws IOException
  {
    int i3 = 0;
    bz.c localc;
    try
    {
      localc = bz.a.a(parama);
      if (bz.c.a(localc) != parama)
        throw new IllegalStateException();
    }
    finally
    {
    }
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!bz.c.d(localc))
      {
        int i1 = 0;
        while (true)
        {
          i2 = i3;
          if (i1 >= this.i)
            break;
          if (bz.a.b(parama)[i1] == 0)
          {
            parama.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!localc.b(i1).exists())
          {
            parama.b();
            return;
          }
          i1 += 1;
        }
      }
    }
    while (true)
    {
      long l1;
      if (i2 < this.i)
      {
        parama = localc.b(i2);
        if (paramBoolean)
        {
          if (parama.exists())
          {
            File localFile = localc.a(i2);
            parama.renameTo(localFile);
            l1 = bz.c.b(localc)[i2];
            long l2 = localFile.length();
            bz.c.b(localc)[i2] = l2;
            this.j = (this.j - l1 + l2);
          }
        }
        else
          a(parama);
      }
      else
      {
        this.m += 1;
        bz.c.a(localc, null);
        if ((bz.c.d(localc) | paramBoolean))
        {
          bz.c.a(localc, true);
          this.k.write("CLEAN " + bz.c.c(localc) + localc.a() + '\n');
          if (paramBoolean)
          {
            l1 = this.o;
            this.o = (1L + l1);
            bz.c.a(localc, l1);
          }
        }
        while (true)
        {
          this.k.flush();
          if ((this.j <= this.h) && (!h()))
            break;
          this.b.submit(this.p);
          break;
          this.l.remove(bz.c.c(localc));
          this.k.write("REMOVE " + bz.c.c(localc) + '\n');
        }
      }
      i2 += 1;
    }
  }

  private static void a(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete()))
      throw new IOException();
  }

  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean)
      a(paramFile2);
    if (!paramFile1.renameTo(paramFile2))
      throw new IOException();
  }

  private void d(String paramString)
    throws IOException
  {
    int i1 = paramString.indexOf(' ');
    if (i1 == -1)
      throw new IOException("unexpected journal line: " + paramString);
    int i2 = i1 + 1;
    int i3 = paramString.indexOf(' ', i2);
    String str;
    if (i3 == -1)
    {
      str = paramString.substring(i2);
      if ((i1 == 6) && (paramString.startsWith("REMOVE")))
        this.l.remove(str);
    }
    else
    {
      str = paramString.substring(i2, i3);
    }
    while (true)
    {
      bz.c localc2 = (bz.c)this.l.get(str);
      bz.c localc1 = localc2;
      if (localc2 == null)
      {
        localc1 = new bz.c(this, str, null);
        this.l.put(str, localc1);
      }
      if ((i3 != -1) && (i1 == 5) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        bz.c.a(localc1, true);
        bz.c.a(localc1, null);
        bz.c.a(localc1, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == 5) && (paramString.startsWith("DIRTY")))
      {
        bz.c.a(localc1, new bz.a(this, localc1, null));
        return;
      }
      if ((i3 == -1) && (i1 == 4) && (paramString.startsWith("READ")))
        break;
      throw new IOException("unexpected journal line: " + paramString);
    }
  }

  // ERROR //
  private void e()
    throws IOException
  {
    // Byte code:
    //   0: new 356	com/amap/api/services/core/cd
    //   3: dup
    //   4: new 358	java/io/FileInputStream
    //   7: dup
    //   8: aload_0
    //   9: getfield 107	com/amap/api/services/core/bz:d	Ljava/io/File;
    //   12: invokespecial 360	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: getstatic 222	com/amap/api/services/core/ce:a	Ljava/nio/charset/Charset;
    //   18: invokespecial 363	com/amap/api/services/core/cd:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   21: astore_2
    //   22: aload_2
    //   23: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   26: astore_3
    //   27: aload_2
    //   28: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   31: astore 4
    //   33: aload_2
    //   34: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload_2
    //   40: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   43: astore 6
    //   45: aload_2
    //   46: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   49: astore 7
    //   51: ldc_w 366
    //   54: aload_3
    //   55: invokevirtual 370	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   58: ifeq +55 -> 113
    //   61: ldc_w 372
    //   64: aload 4
    //   66: invokevirtual 370	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   69: ifeq +44 -> 113
    //   72: aload_0
    //   73: getfield 98	com/amap/api/services/core/bz:g	I
    //   76: invokestatic 376	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   79: aload 5
    //   81: invokevirtual 370	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   84: ifeq +29 -> 113
    //   87: aload_0
    //   88: getfield 117	com/amap/api/services/core/bz:i	I
    //   91: invokestatic 376	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   94: aload 6
    //   96: invokevirtual 370	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   99: ifeq +14 -> 113
    //   102: ldc_w 378
    //   105: aload 7
    //   107: invokevirtual 370	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   110: ifne +74 -> 184
    //   113: new 125	java/io/IOException
    //   116: dup
    //   117: new 160	java/lang/StringBuilder
    //   120: dup
    //   121: ldc_w 380
    //   124: invokespecial 164	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_3
    //   128: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: ldc_w 382
    //   134: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload 4
    //   139: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc_w 382
    //   145: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: aload 6
    //   150: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc_w 382
    //   156: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload 7
    //   161: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc_w 384
    //   167: invokevirtual 168	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 175	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 320	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   176: athrow
    //   177: astore_3
    //   178: aload_2
    //   179: invokestatic 387	com/amap/api/services/core/ce:a	(Ljava/io/Closeable;)V
    //   182: aload_3
    //   183: athrow
    //   184: iconst_0
    //   185: istore_1
    //   186: aload_0
    //   187: aload_2
    //   188: invokevirtual 364	com/amap/api/services/core/cd:a	()Ljava/lang/String;
    //   191: invokespecial 389	com/amap/api/services/core/bz:d	(Ljava/lang/String;)V
    //   194: iload_1
    //   195: iconst_1
    //   196: iadd
    //   197: istore_1
    //   198: goto -12 -> 186
    //   201: astore_3
    //   202: aload_0
    //   203: iload_1
    //   204: aload_0
    //   205: getfield 67	com/amap/api/services/core/bz:l	Ljava/util/LinkedHashMap;
    //   208: invokevirtual 393	java/util/LinkedHashMap:size	()I
    //   211: isub
    //   212: putfield 122	com/amap/api/services/core/bz:m	I
    //   215: aload_2
    //   216: invokestatic 387	com/amap/api/services/core/ce:a	(Ljava/io/Closeable;)V
    //   219: return
    //
    // Exception table:
    //   from	to	target	type
    //   22	113	177	finally
    //   113	177	177	finally
    //   186	194	177	finally
    //   202	215	177	finally
    //   186	194	201	java/io/EOFException
  }

  private void e(String paramString)
  {
    if (!a.matcher(paramString).matches())
      throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + paramString + "\"");
  }

  private void f()
    throws IOException
  {
    a(this.e);
    Iterator localIterator = this.l.values().iterator();
    while (localIterator.hasNext())
    {
      bz.c localc = (bz.c)localIterator.next();
      int i1;
      if (bz.c.a(localc) == null)
      {
        i1 = 0;
        while (i1 < this.i)
        {
          this.j += bz.c.b(localc)[i1];
          i1 += 1;
        }
      }
      else
      {
        bz.c.a(localc, null);
        i1 = 0;
        while (i1 < this.i)
        {
          a(localc.a(i1));
          a(localc.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }

  private void g()
    throws IOException
  {
    while (true)
    {
      bz.c localc;
      try
      {
        if (this.k != null)
          this.k.close();
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.e), ce.a));
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.g));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(this.i));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = this.l.values().iterator();
          if (!localIterator.hasNext())
            break;
          localc = (bz.c)localIterator.next();
          if (bz.c.a(localc) != null)
          {
            localBufferedWriter.write("DIRTY " + bz.c.c(localc) + '\n');
            continue;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
      }
      finally
      {
      }
      localObject1.write("CLEAN " + bz.c.c(localc) + localc.a() + '\n');
    }
    localObject1.close();
    if (this.d.exists())
      a(this.d, this.f, true);
    a(this.e, this.d, false);
    this.f.delete();
    this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d, true), ce.a));
  }

  private boolean h()
  {
    return (this.m >= 2000) && (this.m >= this.l.size());
  }

  private void i()
  {
    if (this.k == null)
      throw new IllegalStateException("cache is closed");
  }

  private void j()
    throws IOException
  {
    while (this.j > this.h)
    {
      String str = (String)((Map.Entry)this.l.entrySet().iterator().next()).getKey();
      c(str);
      if (this.n != null)
        this.n.a(str);
    }
  }

  public final bz.b a(String paramString)
    throws IOException
  {
    Object localObject2 = null;
    try
    {
      i();
      e(paramString);
      bz.c localc = (bz.c)this.l.get(paramString);
      Object localObject1;
      if (localc == null)
        localObject1 = localObject2;
      while (true)
      {
        return localObject1;
        localObject1 = localObject2;
        if (bz.c.d(localc))
        {
          InputStream[] arrayOfInputStream = new InputStream[this.i];
          int i1 = 0;
          while (true)
          {
            try
            {
              if (i1 >= this.i)
                break label131;
              arrayOfInputStream[i1] = new FileInputStream(localc.a(i1));
              i1 += 1;
              continue;
            }
            catch (FileNotFoundException paramString)
            {
              i1 = 0;
              localObject1 = localObject2;
            }
            if (i1 >= this.i)
              break;
            localObject1 = localObject2;
            if (arrayOfInputStream[i1] == null)
              break;
            ce.a(arrayOfInputStream[i1]);
            i1 += 1;
          }
          label131: this.m += 1;
          this.k.append("READ " + paramString + '\n');
          if (h())
            this.b.submit(this.p);
          localObject1 = new bz.b(this, paramString, bz.c.e(localc), arrayOfInputStream, bz.c.b(localc), null);
        }
      }
    }
    finally
    {
    }
    throw paramString;
  }

  public final void a(cc paramcc)
  {
    this.n = paramcc;
  }

  public final boolean a()
  {
    try
    {
      Writer localWriter = this.k;
      if (localWriter == null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final bz.a b(String paramString)
    throws IOException
  {
    return a(paramString, -1L);
  }

  public final void b()
    throws IOException
  {
    try
    {
      i();
      j();
      this.k.flush();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void c()
    throws IOException
  {
    close();
    ce.a(this.c);
  }

  public final boolean c(String paramString)
    throws IOException
  {
    int i1 = 0;
    while (true)
    {
      try
      {
        i();
        e(paramString);
        bz.c localc = (bz.c)this.l.get(paramString);
        Object localObject;
        if (localc != null)
        {
          localObject = bz.c.a(localc);
          if (localObject == null);
        }
        else
        {
          bool = false;
          return bool;
          this.j -= bz.c.b(localc)[i1];
          bz.c.b(localc)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < this.i)
        {
          localObject = localc.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete()))
            continue;
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally
      {
      }
      this.m += 1;
      this.k.append("REMOVE " + paramString + '\n');
      this.l.remove(paramString);
      if (h())
        this.b.submit(this.p);
      boolean bool = true;
    }
  }

  public final void close()
    throws IOException
  {
    while (true)
    {
      try
      {
        Object localObject1 = this.k;
        if (localObject1 == null)
          return;
        localObject1 = new ArrayList(this.l.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          bz.c localc = (bz.c)((Iterator)localObject1).next();
          if (bz.c.a(localc) == null)
            continue;
          bz.c.a(localc).b();
          continue;
        }
      }
      finally
      {
      }
      j();
      this.k.close();
      this.k = null;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.bz
 * JD-Core Version:    0.6.2
 */