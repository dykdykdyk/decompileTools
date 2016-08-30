package io.fabric.sdk.android.services.d;

import android.content.Context;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.o;
import io.fabric.sdk.android.r;
import java.io.File;

public final class b
  implements a
{
  private final Context a;
  private final String b;
  private final String c;

  public b(o paramo)
  {
    if (paramo.q == null)
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    this.a = paramo.q;
    this.b = paramo.k();
    this.c = ("Android/" + this.a.getPackageName());
  }

  public final File a()
  {
    File localFile = this.a.getFilesDir();
    if (localFile != null)
    {
      if ((localFile.exists()) || (localFile.mkdirs()))
        return localFile;
      f.b().d("Fabric", "Couldn't create file");
    }
    while (true)
    {
      return null;
      f.b().a("Fabric", "Null File");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.d.b
 * JD-Core Version:    0.6.2
 */