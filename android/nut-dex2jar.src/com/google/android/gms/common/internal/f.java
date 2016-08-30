package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.c;

public final class f
{
  private final Resources a;
  private final String b;

  public f(Context paramContext)
  {
    b.a(paramContext);
    this.a = paramContext.getResources();
    this.b = this.a.getResourcePackageName(c.common_google_play_services_unknown_issue);
  }

  public final String a(String paramString)
  {
    int i = this.a.getIdentifier(paramString, "string", this.b);
    if (i == 0)
      return null;
    return this.a.getString(i);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.common.internal.f
 * JD-Core Version:    0.6.2
 */