package com.crashlytics.android.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

final class d extends FileOutputStream
{
  public static final FilenameFilter a = new e();
  private final String b;
  private File c;
  private File d;
  private boolean e = false;

  public d(File paramFile, String paramString)
    throws FileNotFoundException
  {
    super(new File(paramFile, paramString + ".cls_temp"));
    this.b = (paramFile + File.separator + paramString);
    this.c = new File(this.b + ".cls_temp");
  }

  public final void a()
    throws IOException
  {
    if (this.e)
      return;
    this.e = true;
    super.flush();
    super.close();
  }

  public final void close()
    throws IOException
  {
    File localFile;
    try
    {
      boolean bool = this.e;
      if (bool);
      while (true)
      {
        return;
        this.e = true;
        super.flush();
        super.close();
        localFile = new File(this.b + ".cls");
        if (!this.c.renameTo(localFile))
          break;
        this.c = null;
        this.d = localFile;
      }
    }
    finally
    {
    }
    String str = "";
    if (localFile.exists())
      str = " (target already exists)";
    while (true)
    {
      throw new IOException("Could not rename temp file: " + this.c + " -> " + localFile + str);
      if (!this.c.exists())
        str = " (source does not exist)";
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.d
 * JD-Core Version:    0.6.2
 */