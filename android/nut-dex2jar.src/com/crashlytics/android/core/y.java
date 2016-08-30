package com.crashlytics.android.core;

import io.fabric.sdk.android.f;
import io.fabric.sdk.android.r;
import io.fabric.sdk.android.services.d.a;
import java.io.File;
import java.io.IOException;

final class y
{
  private final String a;
  private final a b;

  public y(String paramString, a parama)
  {
    this.a = paramString;
    this.b = parama;
  }

  public final boolean a()
  {
    try
    {
      boolean bool = b().createNewFile();
      return bool;
    }
    catch (IOException localIOException)
    {
      f.b().c("CrashlyticsCore", "Error creating marker: " + this.a, localIOException);
    }
    return false;
  }

  final File b()
  {
    return new File(this.b.a(), this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.crashlytics.android.core.y
 * JD-Core Version:    0.6.2
 */