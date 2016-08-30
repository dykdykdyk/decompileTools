package android.support.v7.view;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.support.v7.b.c;

public final class a
{
  public Context a;

  private a(Context paramContext)
  {
    this.a = paramContext;
  }

  public static a a(Context paramContext)
  {
    return new a(paramContext);
  }

  public final boolean a()
  {
    if (this.a.getApplicationInfo().targetSdkVersion >= 16)
      return this.a.getResources().getBoolean(c.abc_action_bar_embed_tabs);
    return this.a.getResources().getBoolean(c.abc_action_bar_embed_tabs_pre_jb);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v7.view.a
 * JD-Core Version:    0.6.2
 */