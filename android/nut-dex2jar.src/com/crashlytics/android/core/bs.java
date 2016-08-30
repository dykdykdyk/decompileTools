package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.b.ab;
import io.fabric.sdk.android.services.b.l;
import java.io.File;
import java.io.IOException;
import java.util.Locale;

final class bs
  implements ay
{
  private final File a;
  private final int b;
  private ab c;

  public bs(File paramFile)
  {
    this.a = paramFile;
    this.b = 65536;
  }

  private void d()
  {
    if (this.c == null);
    try
    {
      this.c = new ab(this.a);
      return;
    }
    catch (IOException localIOException)
    {
      f.b().c("CrashlyticsCore", "Could not open log file: " + this.a, localIOException);
    }
  }

  public final b a()
  {
    if (!this.a.exists());
    do
    {
      return null;
      d();
    }
    while (this.c == null);
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 0;
    byte[] arrayOfByte = new byte[this.c.a()];
    try
    {
      this.c.a(new bt(this, arrayOfByte, arrayOfInt));
      return b.a(arrayOfByte, arrayOfInt[0]);
    }
    catch (IOException localIOException)
    {
      while (true)
        f.b().c("CrashlyticsCore", "A problem occurred while reading the Crashlytics log file.", localIOException);
    }
  }

  public final void a(long paramLong, String paramString)
  {
    d();
    if (this.c != null)
    {
      if (paramString != null)
        break label171;
      paramString = "null";
    }
    label171: 
    while (true)
    {
      try
      {
        int i = this.b / 4;
        String str = paramString;
        if (paramString.length() > i)
          str = "..." + paramString.substring(paramString.length() - i);
        paramString = str.replaceAll("\r", " ").replaceAll("\n", " ");
        paramString = String.format(Locale.US, "%d %s%n", new Object[] { Long.valueOf(paramLong), paramString }).getBytes("UTF-8");
        this.c.a(paramString, paramString.length);
        if ((!this.c.b()) && (this.c.a() > this.b))
        {
          this.c.c();
          continue;
        }
      }
      catch (IOException paramString)
      {
        f.b().c("CrashlyticsCore", "There was a problem writing to the Crashlytics log.", paramString);
      }
      return;
    }
  }

  public final void b()
  {
    l.a(this.c, "There was a problem closing the Crashlytics log file.");
    this.c = null;
  }

  public final void c()
  {
    b();
    this.a.delete();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.bs
 * JD-Core Version:    0.6.2
 */