package com.sina.weibo.sdk.api.a;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.sina.weibo.sdk.a;
import com.sina.weibo.sdk.c;
import com.sina.weibo.sdk.d.p;
import com.sina.weibo.sdk.exception.WeiboShareException;
import java.util.HashMap;

public class n
  implements g
{
  private static final String a = n.class.getName();
  private Context b;
  private String c;
  private c d = null;
  private boolean e = true;
  private d f;
  private Dialog g = null;

  public n(Context paramContext, String paramString)
  {
    this.b = paramContext;
    this.c = paramString;
    this.e = false;
    this.d = com.sina.weibo.sdk.b.a(paramContext).a();
    if (this.d != null)
      com.sina.weibo.sdk.d.i.a(a, this.d.toString());
    while (true)
    {
      com.sina.weibo.sdk.d.b.a(paramContext).a(paramString);
      return;
      com.sina.weibo.sdk.d.i.a(a, "WeiboInfo is null");
    }
  }

  private static boolean a(Activity paramActivity, String paramString1, String paramString2, String paramString3, Bundle paramBundle, String paramString4)
  {
    if ((paramActivity == null) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString3)))
    {
      com.sina.weibo.sdk.d.i.c(a, "launchWeiboActivity fail, invalid arguments");
      return false;
    }
    Intent localIntent = new Intent();
    localIntent.setPackage(paramString2);
    localIntent.setAction(paramString1);
    paramString1 = paramActivity.getPackageName();
    localIntent.putExtra("_weibo_sdkVersion", "0031405000");
    localIntent.putExtra("_weibo_appPackage", paramString1);
    localIntent.putExtra("_weibo_appKey", paramString3);
    localIntent.putExtra("_weibo_flag", 538116905);
    localIntent.putExtra("_weibo_sign", com.sina.weibo.sdk.d.j.a(p.a(paramActivity, paramString1)));
    paramString1 = String.valueOf(System.currentTimeMillis());
    localIntent.putExtra("_weibo_transaction", paramString1);
    paramString2 = new HashMap();
    paramString2.put("other_app_action_start_time", paramString1);
    try
    {
      com.sina.weibo.sdk.c.g.a(paramActivity, paramString4, paramString2);
      localIntent.putExtras(paramBundle);
    }
    catch (Exception paramString1)
    {
      try
      {
        com.sina.weibo.sdk.d.i.a(a, "launchWeiboActivity intent=" + localIntent + ", extra=" + localIntent.getExtras());
        paramActivity.startActivityForResult(localIntent, 765);
        return true;
        paramString1 = paramString1;
        paramString1.printStackTrace();
      }
      catch (ActivityNotFoundException paramActivity)
      {
        com.sina.weibo.sdk.d.i.c(a, paramActivity.getMessage());
      }
    }
    return false;
  }

  public final boolean a()
  {
    return (this.d != null) && (this.d.a());
  }

  public final boolean a(Activity paramActivity, b paramb)
  {
    int j = 1;
    Object localObject;
    try
    {
      boolean bool = this.e;
      if (a())
        break label191;
      if (bool)
        if (this.g == null)
        {
          Context localContext = this.b;
          d locald = this.f;
          String str3 = "提示";
          String str2 = "未安装微博客户端，是否现在去下载？";
          String str1 = "现在下载";
          localObject = "以后再说";
          if (!p.a(localContext.getApplicationContext()))
          {
            str3 = "Notice";
            str2 = "Sina Weibo client is not installed, download now?";
            str1 = "Download Now";
            localObject = "Download Later";
          }
          this.g = new AlertDialog.Builder(localContext).setMessage(str2).setTitle(str3).setPositiveButton(str1, new l(localContext)).setNegativeButton((CharSequence)localObject, new m(locald)).create();
          this.g.show();
        }
        else if (!this.g.isShowing())
        {
          this.g.show();
        }
    }
    catch (Exception paramActivity)
    {
      com.sina.weibo.sdk.d.i.c(a, paramActivity.getMessage());
      return false;
    }
    throw new WeiboShareException("Weibo is not installed!");
    label191: if (this.d != null)
      if (!this.d.a())
        break label363;
    while (true)
    {
      int i;
      if (i == 0)
      {
        throw new WeiboShareException("Weibo do not support share api!");
        i = this.d.b;
      }
      else
      {
        i = j;
        if (!a.a(this.b, this.d.a))
          throw new WeiboShareException("Weibo signature is incorrect!");
        while (i != 0)
        {
          localObject = this.d;
          new j();
          if (!paramb.a((c)localObject))
          {
            com.sina.weibo.sdk.d.i.c(a, "sendRequest faild request check faild");
            return false;
          }
          com.sina.weibo.sdk.b.i.a(this.b, this.c).a();
          localObject = new Bundle();
          paramb.a((Bundle)localObject);
          return a(paramActivity, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY", this.d.a, this.c, (Bundle)localObject, "share");
          i = 0;
        }
        return false;
        label363: i = -1;
      }
      if (i >= 10350)
        i = 1;
      else
        i = 0;
    }
  }

  public final boolean a(Intent paramIntent, f paramf)
  {
    String str1 = paramIntent.getStringExtra("_weibo_appPackage");
    String str2 = paramIntent.getStringExtra("_weibo_transaction");
    if (TextUtils.isEmpty(str1))
    {
      com.sina.weibo.sdk.d.i.c(a, "handleWeiboResponse faild appPackage is null");
      return false;
    }
    if (!(paramf instanceof Activity))
    {
      com.sina.weibo.sdk.d.i.c(a, "handleWeiboResponse faild handler is not Activity");
      return false;
    }
    Activity localActivity = (Activity)paramf;
    String str3 = localActivity.getCallingPackage();
    com.sina.weibo.sdk.d.i.a(a, "handleWeiboResponse getCallingPackage : " + str3);
    if (TextUtils.isEmpty(str2))
    {
      com.sina.weibo.sdk.d.i.c(a, "handleWeiboResponse faild intent _weibo_transaction is null");
      return false;
    }
    if ((!a.a(this.b, str1)) && (!str1.equals(localActivity.getPackageName())))
    {
      com.sina.weibo.sdk.d.i.c(a, "handleWeiboResponse faild appPackage validateSign faild");
      return false;
    }
    paramf.a(new h(paramIntent.getExtras()));
    return true;
  }

  public final boolean b()
  {
    Context localContext = this.b;
    String str1 = this.c;
    Intent localIntent = new Intent("com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER");
    String str2 = localContext.getPackageName();
    localIntent.putExtra("_weibo_sdkVersion", "0031405000");
    localIntent.putExtra("_weibo_appPackage", str2);
    localIntent.putExtra("_weibo_appKey", str1);
    localIntent.putExtra("_weibo_flag", 538116905);
    localIntent.putExtra("_weibo_sign", com.sina.weibo.sdk.d.j.a(p.a(localContext, str2)));
    if (!TextUtils.isEmpty(null))
      localIntent.setPackage(null);
    com.sina.weibo.sdk.d.i.a(a, "intent=" + localIntent + ", extra=" + localIntent.getExtras());
    localContext.sendBroadcast(localIntent, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION");
    return true;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.sina.weibo.sdk.api.a.n
 * JD-Core Version:    0.6.2
 */