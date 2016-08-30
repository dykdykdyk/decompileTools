package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.TextUtils;

public final class f extends e
{
  com.sina.weibo.sdk.a.c a;
  String b;
  private String c;
  private String h;

  public f(Context paramContext)
  {
    super(paramContext);
    this.f = c.c;
  }

  public final void a(Activity paramActivity)
  {
  }

  protected final void a(Bundle paramBundle)
  {
    this.h = paramBundle.getString("source");
    this.c = paramBundle.getString("access_token");
    this.b = paramBundle.getString("key_listener");
    if (!TextUtils.isEmpty(this.b))
      this.a = j.a(this.d).a(this.b);
    paramBundle = Uri.parse(this.e).buildUpon();
    paramBundle.appendQueryParameter("version", "0031405000");
    if (!TextUtils.isEmpty(this.h))
      paramBundle.appendQueryParameter("source", this.h);
    if (!TextUtils.isEmpty(this.c))
      paramBundle.appendQueryParameter("access_token", this.c);
    this.e = paramBundle.build().toString();
  }

  public final void b(Bundle paramBundle)
  {
    paramBundle.putString("access_token", this.c);
    paramBundle.putString("source", this.h);
    j localj = j.a(this.d);
    if (this.a != null)
    {
      this.b = String.valueOf(System.currentTimeMillis());
      localj.a(this.b, this.a);
      paramBundle.putString("key_listener", this.b);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.f
 * JD-Core Version:    0.6.2
 */