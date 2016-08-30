package com.loc;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class em extends Thread
  implements ab
{
  private static String h = "sodownload";
  private static String i = "sofail";
  en a;
  String b;
  private aa c;
  private RandomAccessFile d;
  private String e;
  private String f;
  private Context g;

  public em(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.g = paramContext;
    this.f = paramString3;
    this.e = a(paramContext, paramString1 + "temp.so");
    this.b = a(paramContext, "libwgs2gcj.so");
    this.a = new en(paramString2);
    this.c = new aa(this.a);
  }

  public static String a(Context paramContext, String paramString)
  {
    return paramContext.getFilesDir().getAbsolutePath() + File.separator + "libso" + File.separator + paramString;
  }

  private void a()
  {
    File localFile = new File(this.e);
    if (localFile.exists())
      localFile.delete();
  }

  // ERROR //
  public final void a(byte[] paramArrayOfByte, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 108	com/loc/em:d	Ljava/io/RandomAccessFile;
    //   4: ifnonnull +52 -> 56
    //   7: new 83	java/io/File
    //   10: dup
    //   11: aload_0
    //   12: getfield 57	com/loc/em:e	Ljava/lang/String;
    //   15: invokespecial 92	java/io/File:<init>	(Ljava/lang/String;)V
    //   18: astore 4
    //   20: aload 4
    //   22: invokevirtual 111	java/io/File:getParentFile	()Ljava/io/File;
    //   25: astore 5
    //   27: aload 5
    //   29: invokevirtual 96	java/io/File:exists	()Z
    //   32: ifne +9 -> 41
    //   35: aload 5
    //   37: invokevirtual 114	java/io/File:mkdirs	()Z
    //   40: pop
    //   41: aload_0
    //   42: new 116	java/io/RandomAccessFile
    //   45: dup
    //   46: aload 4
    //   48: ldc 118
    //   50: invokespecial 121	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   53: putfield 108	com/loc/em:d	Ljava/io/RandomAccessFile;
    //   56: aload_0
    //   57: getfield 108	com/loc/em:d	Ljava/io/RandomAccessFile;
    //   60: lload_2
    //   61: invokevirtual 125	java/io/RandomAccessFile:seek	(J)V
    //   64: aload_0
    //   65: getfield 108	com/loc/em:d	Ljava/io/RandomAccessFile;
    //   68: aload_1
    //   69: invokevirtual 129	java/io/RandomAccessFile:write	([B)V
    //   72: return
    //   73: astore 4
    //   75: aload 4
    //   77: invokevirtual 132	java/lang/Throwable:printStackTrace	()V
    //   80: aload_0
    //   81: invokespecial 134	com/loc/em:a	()V
    //   84: goto -28 -> 56
    //   87: astore_1
    //   88: aload_0
    //   89: invokespecial 134	com/loc/em:a	()V
    //   92: aload_1
    //   93: invokevirtual 132	java/lang/Throwable:printStackTrace	()V
    //   96: return
    //   97: astore_1
    //   98: aload_0
    //   99: invokespecial 134	com/loc/em:a	()V
    //   102: aload_1
    //   103: invokevirtual 132	java/lang/Throwable:printStackTrace	()V
    //   106: return
    //
    // Exception table:
    //   from	to	target	type
    //   41	56	73	java/io/FileNotFoundException
    //   0	41	87	java/lang/Throwable
    //   41	56	87	java/lang/Throwable
    //   56	72	87	java/lang/Throwable
    //   75	84	87	java/lang/Throwable
    //   98	106	87	java/lang/Throwable
    //   56	72	97	java/io/IOException
  }

  public final void b()
  {
    try
    {
      if (this.d != null)
        this.d.close();
      a();
      File localFile1 = new File(a(this.g, "tempfile"));
      boolean bool = localFile1.exists();
      if (!bool);
      try
      {
        File localFile2 = localFile1.getParentFile();
        if (!localFile2.exists())
          localFile2.mkdir();
        localFile1.createNewFile();
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

  public final void c()
  {
    Object localObject;
    try
    {
      if (this.d != null)
        this.d.close();
      if (ek.a(this.e).equalsIgnoreCase(this.f))
      {
        if (new File(this.b).exists())
        {
          a();
          return;
        }
        new File(this.e).renameTo(new File(this.b));
        eo localeo1 = new ep(h, "1.0.0", "sodownload_1.0.0").a(new String[0]).a();
        dz.a(this.g, localeo1);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      a();
      localObject = new File(this.b);
      if (((File)localObject).exists())
        ((File)localObject).delete();
    }
    try
    {
      localObject = new ep(i, "1.0.0", "sodownload_1.0.0").a(new String[0]).a();
      dz.a(this.g, (eo)localObject);
      localThrowable.printStackTrace();
      return;
      a();
      eo localeo2 = new ep(i, "1.0.0", "sodownload_1.0.0").a(new String[0]).a();
      dz.a(this.g, localeo2);
      return;
    }
    catch (l locall)
    {
      while (true)
        locall.printStackTrace();
    }
  }

  public final void d()
  {
    a();
  }

  public final void run()
  {
    try
    {
      File localFile = new File(a(this.g, "tempfile"));
      if (localFile.exists())
      {
        eo localeo = new ep(i, "1.0.0", "sodownload_1.0.0").a(new String[0]).a();
        dz.a(this.g, localeo);
        localFile.delete();
      }
      this.c.a(this);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
      a();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.loc.em
 * JD-Core Version:    0.6.2
 */