package com.sina.weibo.sdk.component;

import android.view.View;
import android.view.View.OnClickListener;

final class m
  implements View.OnClickListener
{
  m(WeiboSdkBrowser paramWeiboSdkBrowser)
  {
  }

  public final void onClick(View paramView)
  {
    if (WeiboSdkBrowser.f(this.a) != null)
      WeiboSdkBrowser.f(this.a).a(this.a);
    this.a.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.component.m
 * JD-Core Version:    0.6.2
 */