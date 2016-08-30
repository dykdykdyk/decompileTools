package com.tencent.connect.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.webkit.CookieSyncManager;
import com.tencent.open.a.h;
import com.tencent.tauth.b;
import com.tencent.tauth.d;
import org.json.JSONException;
import org.json.JSONObject;

final class i
  implements b
{
  private final b b;
  private final boolean c;
  private final Context d;

  public i(a parama, Context paramContext, b paramb)
  {
    this.d = paramContext;
    this.b = paramb;
    this.c = true;
    h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener()");
  }

  public final void a()
  {
    h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onCancel");
    this.b.a();
    h.a();
  }

  public final void a(d paramd)
  {
    h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onError");
    this.b.a(paramd);
    h.a();
  }

  public final void a(Object paramObject)
  {
    h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete");
    paramObject = (JSONObject)paramObject;
    try
    {
      String str1 = paramObject.getString("access_token");
      String str2 = paramObject.getString("expires_in");
      String str3 = paramObject.getString("openid");
      if ((str1 != null) && (a.a(this.a) != null) && (str3 != null))
      {
        a.b(this.a).a(str1, str2);
        a.c(this.a).c = str3;
        com.tencent.connect.a.a.b(this.d, a.d(this.a));
      }
      str1 = paramObject.getString("pf");
      if (str1 != null);
      try
      {
        this.d.getSharedPreferences("pfStore", 0).edit().putString("pf", str1).commit();
        if (this.c)
          CookieSyncManager.getInstance().sync();
        this.b.a(paramObject);
        paramObject = this.a;
        paramObject.d = null;
        paramObject.c = null;
        h.a();
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete error", localException);
        }
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        localJSONException.printStackTrace();
        h.b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete error", localJSONException);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.tencent.connect.b.i
 * JD-Core Version:    0.6.2
 */