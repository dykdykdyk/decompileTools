package com.nut.blehunter.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.b.j;
import android.text.TextUtils;
import com.nut.blehunter.d.o;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.ThirdAccount;
import com.tencent.mm.sdk.modelmsg.SendAuth.Req;
import com.tencent.mm.sdk.modelmsg.SendMessageToWX.Req;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXWebpageObject;
import com.tencent.mm.sdk.openapi.IWXAPI;
import com.tencent.mm.sdk.openapi.WXAPIFactory;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;

public final class c
  implements g
{
  Context a;
  a b;
  final BroadcastReceiver c = new d(this);
  private IWXAPI d;
  private String e;
  private String f;

  private c()
  {
  }

  public c(Context paramContext)
  {
    this.a = paramContext;
    this.e = this.a.getString(2131100174);
    this.f = this.a.getString(2131100180);
    this.d = WXAPIFactory.createWXAPI(this.a, this.e);
    this.d.registerApp(this.a.getString(2131100174));
  }

  private boolean b()
  {
    try
    {
      if (this.d.isWXAppInstalled())
        return true;
      Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("http://weixin.qq.com"));
      this.a.startActivity(localIntent);
      return false;
    }
    catch (Exception localException)
    {
      b.a.a.b(localException, "weChat send auth exception", new Object[0]);
    }
    return false;
  }

  public final String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      Object localObject1 = this.e;
      Object localObject3 = this.f;
      paramString = (HttpURLConnection)new URL("https://api.weixin.qq.com/sns/oauth2/access_token" + "?appid=" + (String)localObject1 + "&secret=" + (String)localObject3 + "&code=" + paramString + "&grant_type=authorization_code").openConnection();
      try
      {
        paramString.setConnectTimeout(10000);
        paramString.setReadTimeout(10000);
        if (paramString.getResponseCode() != 200)
          break label190;
        localObject1 = new BufferedInputStream(paramString.getInputStream());
        localObject3 = new BufferedReader(new InputStreamReader((InputStream)localObject1, "UTF-8"));
        while (true)
        {
          String str2 = ((BufferedReader)localObject3).readLine();
          if (str2 == null)
            break;
          localStringBuilder.append(str2);
        }
      }
      finally
      {
        paramString.disconnect();
      }
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      return localStringBuilder.toString();
    }
    localObject2.close();
    while (true)
    {
      String str1 = localStringBuilder.toString();
      paramString.disconnect();
      return str1;
      label190: a();
    }
  }

  public final String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      try
      {
        if (Locale.getDefault().getLanguage().contains("zh"))
        {
          localObject = "zh_CN";
          paramString1 = (HttpURLConnection)new URL("https://api.weixin.qq.com/sns/userinfo" + "?access_token=" + paramString1 + "&openid=" + paramString2 + "&lang=" + (String)localObject).openConnection();
          try
          {
            paramString1.setConnectTimeout(10000);
            paramString1.setReadTimeout(10000);
            if (paramString1.getResponseCode() != 200)
              break label198;
            paramString2 = new BufferedInputStream(paramString1.getInputStream());
            localObject = new BufferedReader(new InputStreamReader(paramString2, "UTF-8"));
            String str = ((BufferedReader)localObject).readLine();
            if (str == null)
              break;
            localStringBuilder.append(str);
            continue;
          }
          finally
          {
            paramString1.disconnect();
          }
        }
      }
      catch (Exception paramString1)
      {
        paramString1.printStackTrace();
        return localStringBuilder.toString();
      }
      Object localObject = "en";
    }
    paramString2.close();
    while (true)
    {
      paramString2 = localStringBuilder.toString();
      paramString1.disconnect();
      return paramString2;
      label198: a();
    }
  }

  final void a()
  {
    if (this.b != null)
      this.b.a();
  }

  public final void a(ThirdAccount paramThirdAccount, Nut paramNut, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (!b())
      return;
    if ((paramThirdAccount == null) || (paramNut == null))
    {
      a();
      return;
    }
    String str = h.a(paramThirdAccount.f, paramNut);
    Context localContext = this.a;
    paramThirdAccount = paramThirdAccount.f;
    if ((TextUtils.isEmpty(paramThirdAccount)) || (paramNut == null));
    for (paramThirdAccount = ""; ; paramThirdAccount = localContext.getString(2131100054, new Object[] { paramThirdAccount, paramNut.c }))
    {
      a(str, paramThirdAccount, h.a(this.a, paramNut), paramBitmap, paramBoolean);
      return;
    }
  }

  public final void a(String paramString1, String paramString2, String paramString3, Bitmap paramBitmap, boolean paramBoolean)
  {
    int i = 1;
    try
    {
      if (!b())
        return;
      if (TextUtils.isEmpty(paramString1))
      {
        a();
        return;
      }
    }
    catch (Exception paramString1)
    {
      b.a.a.b(paramString1, "send weChat webPage exception", new Object[0]);
      return;
    }
    WXWebpageObject localWXWebpageObject = new WXWebpageObject();
    localWXWebpageObject.webpageUrl = paramString1;
    paramString1 = new WXMediaMessage(localWXWebpageObject);
    if (!TextUtils.isEmpty(paramString2))
      paramString1.title = paramString2;
    if (!TextUtils.isEmpty(paramString3))
      paramString1.description = paramString3;
    if ((paramBitmap != null) && (!paramBitmap.isRecycled()))
    {
      paramString2 = Bitmap.createScaledBitmap(paramBitmap, 80, 80, true);
      paramBitmap.recycle();
      paramString1.thumbData = o.a(paramString2);
    }
    paramString2 = new SendMessageToWX.Req();
    paramString2.transaction = ("webpage" + System.currentTimeMillis());
    paramString2.message = paramString1;
    if (paramBoolean);
    while (true)
    {
      paramString2.scene = i;
      this.d.sendReq(paramString2);
      return;
      i = 0;
    }
  }

  public final boolean a(a parama)
  {
    this.b = parama;
    if (!b())
      return false;
    parama = this.a;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.nutspace.action.share_auth");
    j.a(parama).a(this.c, localIntentFilter);
    parama = new SendAuth.Req();
    parama.state = "nut_wx_share";
    parama.scope = "snsapi_userinfo";
    return this.d.sendReq(parama);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.c.c
 * JD-Core Version:    0.6.2
 */