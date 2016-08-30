package com.sina.weibo.sdk.a.a;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.sina.weibo.sdk.a.c;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.d.p;
import com.sina.weibo.sdk.net.k;

public class d
{
  private static final String b = d.class.getName();
  com.sina.weibo.sdk.a.a a;
  private Context c;

  public d(Context paramContext, com.sina.weibo.sdk.a.a parama)
  {
    this.c = paramContext;
    this.a = parama;
  }

  public final void a(c paramc)
  {
    if (paramc != null)
    {
      localObject1 = new k(this.a.a);
      ((k)localObject1).a("client_id", this.a.a);
      ((k)localObject1).a("redirect_uri", this.a.b);
      ((k)localObject1).a("scope", this.a.c);
      ((k)localObject1).a("response_type", "code");
      ((k)localObject1).a("version", "0031405000");
      localObject2 = p.b(this.c, this.a.a);
      if (!TextUtils.isEmpty((CharSequence)localObject2))
        ((k)localObject1).a("aid", (String)localObject2);
      ((k)localObject1).a("packagename", this.a.d);
      ((k)localObject1).a("key_hash", this.a.e);
      localObject1 = "https://open.weibo.cn/oauth2/authorize?" + ((k)localObject1).a();
      localObject2 = this.c;
      if ((localObject2 == null) || (((Context)localObject2).checkCallingOrSelfPermission("android.permission.INTERNET") == 0))
        break label213;
    }
    label213: for (int i = 0; i == 0; i = 1)
    {
      paramc = this.c;
      if (paramc != null)
        new AlertDialog.Builder(paramc).setTitle("Error").setMessage("Application requires permission to access the Internet").create().show();
      return;
    }
    Object localObject2 = new com.sina.weibo.sdk.component.a(this.c);
    ((com.sina.weibo.sdk.component.a)localObject2).a = this.a;
    ((com.sina.weibo.sdk.component.a)localObject2).b = paramc;
    ((com.sina.weibo.sdk.component.a)localObject2).a((String)localObject1);
    ((com.sina.weibo.sdk.component.a)localObject2).b("微博登录");
    paramc = ((com.sina.weibo.sdk.component.a)localObject2).a();
    Object localObject1 = new Intent(this.c, WeiboSdkBrowser.class);
    ((Intent)localObject1).putExtras(paramc);
    this.c.startActivity((Intent)localObject1);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a.a.d
 * JD-Core Version:    0.6.2
 */