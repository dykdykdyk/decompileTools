package io.fabric.sdk.android.services.c;

import android.content.Context;
import io.fabric.sdk.android.services.b.ab;
import io.fabric.sdk.android.services.b.l;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class q
  implements k
{
  private final Context a;
  private final File b;
  private final String c;
  private final File d;
  private ab e;
  private File f;

  public q(Context paramContext, File paramFile, String paramString1, String paramString2)
    throws IOException
  {
    this.a = paramContext;
    this.b = paramFile;
    this.c = paramString2;
    this.d = new File(this.b, paramString1);
    this.e = new ab(this.d);
    this.f = new File(this.b, this.c);
    if (!this.f.exists())
      this.f.mkdirs();
  }

  public final int a()
  {
    return this.e.a();
  }

  public OutputStream a(File paramFile)
    throws IOException
  {
    return new FileOutputStream(paramFile);
  }

  // ERROR //
  public final void a(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 43	io/fabric/sdk/android/services/c/q:e	Lio/fabric/sdk/android/services/b/ab;
    //   9: invokevirtual 65	io/fabric/sdk/android/services/b/ab:close	()V
    //   12: aload_0
    //   13: getfield 36	io/fabric/sdk/android/services/c/q:d	Ljava/io/File;
    //   16: astore 5
    //   18: new 31	java/io/File
    //   21: dup
    //   22: aload_0
    //   23: getfield 45	io/fabric/sdk/android/services/c/q:f	Ljava/io/File;
    //   26: aload_1
    //   27: invokespecial 34	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   30: astore 6
    //   32: new 67	java/io/FileInputStream
    //   35: dup
    //   36: aload 5
    //   38: invokespecial 68	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   41: astore_3
    //   42: aload 4
    //   44: astore_1
    //   45: aload_0
    //   46: aload 6
    //   48: invokevirtual 70	io/fabric/sdk/android/services/c/q:a	(Ljava/io/File;)Ljava/io/OutputStream;
    //   51: astore_2
    //   52: aload_2
    //   53: astore_1
    //   54: aload_3
    //   55: aload_2
    //   56: sipush 1024
    //   59: newarray byte
    //   61: invokestatic 75	io/fabric/sdk/android/services/b/l:a	(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    //   64: aload_3
    //   65: ldc 77
    //   67: invokestatic 80	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   70: aload_2
    //   71: ldc 82
    //   73: invokestatic 80	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   76: aload 5
    //   78: invokevirtual 85	java/io/File:delete	()Z
    //   81: pop
    //   82: aload_0
    //   83: new 38	io/fabric/sdk/android/services/b/ab
    //   86: dup
    //   87: aload_0
    //   88: getfield 36	io/fabric/sdk/android/services/c/q:d	Ljava/io/File;
    //   91: invokespecial 41	io/fabric/sdk/android/services/b/ab:<init>	(Ljava/io/File;)V
    //   94: putfield 43	io/fabric/sdk/android/services/c/q:e	Lio/fabric/sdk/android/services/b/ab;
    //   97: return
    //   98: astore 4
    //   100: aconst_null
    //   101: astore_3
    //   102: aload_2
    //   103: astore_1
    //   104: aload 4
    //   106: astore_2
    //   107: aload_3
    //   108: ldc 77
    //   110: invokestatic 80	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   113: aload_1
    //   114: ldc 82
    //   116: invokestatic 80	io/fabric/sdk/android/services/b/l:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   119: aload 5
    //   121: invokevirtual 85	java/io/File:delete	()Z
    //   124: pop
    //   125: aload_2
    //   126: athrow
    //   127: astore_2
    //   128: goto -21 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   32	42	98	finally
    //   45	52	127	finally
    //   54	64	127	finally
  }

  public final void a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      l.a(this.a, String.format("deleting sent analytics file %s", new Object[] { localFile.getName() }));
      localFile.delete();
    }
  }

  public final void a(byte[] paramArrayOfByte)
    throws IOException
  {
    this.e.a(paramArrayOfByte, paramArrayOfByte.length);
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    return this.e.a() + 4 + paramInt1 <= paramInt2;
  }

  public final boolean b()
  {
    return this.e.b();
  }

  public final List<File> c()
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = this.f.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(arrayOfFile[i]);
      if (localArrayList.size() > 0)
        break;
      i += 1;
    }
    return localArrayList;
  }

  public final List<File> d()
  {
    return Arrays.asList(this.f.listFiles());
  }

  public final void e()
  {
    try
    {
      this.e.close();
      label7: this.d.delete();
      return;
    }
    catch (IOException localIOException)
    {
      break label7;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.q
 * JD-Core Version:    0.6.2
 */