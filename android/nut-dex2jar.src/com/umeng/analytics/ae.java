package com.umeng.analytics;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;

public final class ae
{
  public File a;
  public FilenameFilter b = new ag(this);
  private final int c = 10;

  public ae(Context paramContext)
  {
    this(paramContext, ".um");
  }

  private ae(Context paramContext, String paramString)
  {
    this.a = new File(paramContext.getFilesDir(), paramString);
    if ((!this.a.exists()) || (!this.a.isDirectory()))
      this.a.mkdir();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.umeng.analytics.ae
 * JD-Core Version:    0.6.2
 */