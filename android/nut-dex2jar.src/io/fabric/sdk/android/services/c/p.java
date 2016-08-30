package io.fabric.sdk.android.services.c;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class p extends q
{
  public p(Context paramContext, File paramFile, String paramString1, String paramString2)
    throws IOException
  {
    super(paramContext, paramFile, paramString1, paramString2);
  }

  public final OutputStream a(File paramFile)
    throws IOException
  {
    return new GZIPOutputStream(new FileOutputStream(paramFile));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.c.p
 * JD-Core Version:    0.6.2
 */