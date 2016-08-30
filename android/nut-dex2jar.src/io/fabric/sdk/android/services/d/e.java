package io.fabric.sdk.android.services.d;

import android.annotation.SuppressLint;
import android.content.SharedPreferences.Editor;

public final class e<T>
{
  public final c a;
  public final f<T> b;
  public final String c;

  public e(c paramc, f<T> paramf, String paramString)
  {
    this.a = paramc;
    this.b = paramf;
    this.c = paramString;
  }

  @SuppressLint({"CommitPrefEdits"})
  public final void a(T paramT)
  {
    this.a.a(this.a.b().putString(this.c, this.b.a(paramT)));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     io.fabric.sdk.android.services.d.e
 * JD-Core Version:    0.6.2
 */