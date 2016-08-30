package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.model.LoginRequestBody;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.tencent.tauth.b;
import com.tencent.tauth.d;
import org.json.JSONObject;

final class be
  implements b
{
  private be(LoginActivity paramLoginActivity)
  {
  }

  public final void a()
  {
  }

  public final void a(d paramd)
  {
    n.a(this.a, 0, "QQ login failed: " + paramd.b);
  }

  public final void a(Object paramObject)
  {
    b.a.a.b("qq auth result is %s", new Object[] { paramObject.toString() });
    Object localObject = (JSONObject)paramObject;
    paramObject = ((JSONObject)localObject).optString("openid");
    localObject = ((JSONObject)localObject).optString("access_token");
    LoginActivity.a(this.a, com.nut.blehunter.rxApi.a.a().login("qq", LoginRequestBody.createWithQQ(paramObject, (String)localObject)));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.be
 * JD-Core Version:    0.6.2
 */