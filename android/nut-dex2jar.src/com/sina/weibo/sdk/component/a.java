package com.sina.weibo.sdk.component;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;

public final class a extends e
{
  public com.sina.weibo.sdk.a.a a;
  public com.sina.weibo.sdk.a.c b;
  String c;

  public a(Context paramContext)
  {
    super(paramContext);
    this.f = c.a;
  }

  public final void a(Activity paramActivity)
  {
    WeiboSdkBrowser.a(paramActivity, this.c, null);
  }

  protected final void a(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle.getBundle("key_authinfo");
    if (localBundle != null)
      this.a = new com.sina.weibo.sdk.a.a(this.d, localBundle.getString("appKey"), localBundle.getString("redirectUri"), localBundle.getString("scope"));
    this.c = paramBundle.getString("key_listener");
    if (!TextUtils.isEmpty(this.c))
      this.b = j.a(this.d).a(this.c);
  }

  public final void b(Bundle paramBundle)
  {
    if (this.a != null)
      paramBundle.putBundle("key_authinfo", this.a.a());
    if (this.b != null)
    {
      j localj = j.a(this.d);
      this.c = String.valueOf(System.currentTimeMillis());
      localj.a(this.c, this.b);
      paramBundle.putString("key_listener", this.c);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.a
 * JD-Core Version:    0.6.2
 */