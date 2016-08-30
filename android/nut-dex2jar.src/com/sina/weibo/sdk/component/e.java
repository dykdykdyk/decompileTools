package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;

public abstract class e
{
  protected Context d;
  protected String e;
  protected c f;
  protected String g;

  public e(Context paramContext)
  {
    this.d = paramContext.getApplicationContext();
  }

  public final Bundle a()
  {
    Bundle localBundle = new Bundle();
    if (!TextUtils.isEmpty(this.e))
      localBundle.putString("key_url", this.e);
    if (this.f != null)
      localBundle.putSerializable("key_launcher", this.f);
    if (!TextUtils.isEmpty(this.g))
      localBundle.putString("key_specify_title", this.g);
    b(localBundle);
    return localBundle;
  }

  public abstract void a(Activity paramActivity);

  protected abstract void a(Bundle paramBundle);

  public final void a(String paramString)
  {
    this.e = paramString;
  }

  public final String b()
  {
    return this.e;
  }

  protected abstract void b(Bundle paramBundle);

  public final void b(String paramString)
  {
    this.g = paramString;
  }

  public final c c()
  {
    return this.f;
  }

  public final void c(Bundle paramBundle)
  {
    this.e = paramBundle.getString("key_url");
    this.f = ((c)paramBundle.getSerializable("key_launcher"));
    this.g = paramBundle.getString("key_specify_title");
    a(paramBundle);
  }

  public final String d()
  {
    return this.g;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.e
 * JD-Core Version:    0.6.2
 */