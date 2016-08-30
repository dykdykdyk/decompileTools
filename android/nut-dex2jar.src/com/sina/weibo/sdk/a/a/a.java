package com.sina.weibo.sdk.a.a;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.ServiceConnection;
import android.text.TextUtils;
import com.sina.weibo.sdk.c.g;
import com.sina.weibo.sdk.d.o;
import com.sina.weibo.sdk.d.p;
import java.util.HashMap;

public final class a
{
  public d a;
  public com.sina.weibo.sdk.a.c b;
  public Activity c;
  public int d;
  public com.sina.weibo.sdk.c e;
  public com.sina.weibo.sdk.a.a f;
  public ServiceConnection g = new b(this);

  public a(Activity paramActivity, com.sina.weibo.sdk.a.a parama)
  {
    this.c = paramActivity;
    this.f = parama;
    this.a = new d(paramActivity, parama);
    this.e = com.sina.weibo.sdk.b.a(paramActivity).a();
    com.sina.weibo.sdk.d.b.a(this.c).a(parama.a);
  }

  final boolean a(String paramString1, String paramString2)
  {
    boolean bool = true;
    Intent localIntent = new Intent();
    localIntent.setClassName(paramString1, paramString2);
    localIntent.putExtras(this.a.a.a());
    localIntent.putExtra("_weibo_command_type", 3);
    paramString1 = String.valueOf(System.currentTimeMillis());
    localIntent.putExtra("_weibo_transaction", paramString1);
    paramString2 = this.c;
    HashMap localHashMap = new HashMap();
    localHashMap.put("other_app_action_start_time", paramString1);
    try
    {
      g.a(paramString2, "sso", localHashMap);
      localIntent.putExtra("aid", p.b(this.c, this.f.a));
      if (!o.a(this.c, localIntent))
        return false;
    }
    catch (Exception paramString1)
    {
      while (true)
        paramString1.printStackTrace();
      paramString1 = p.b(this.c, this.f.a);
      if (!TextUtils.isEmpty(paramString1))
        localIntent.putExtra("aid", paramString1);
    }
    try
    {
      this.c.startActivityForResult(localIntent, this.d);
      return bool;
    }
    catch (ActivityNotFoundException paramString1)
    {
      while (true)
        bool = false;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.a.a.a
 * JD-Core Version:    0.6.2
 */