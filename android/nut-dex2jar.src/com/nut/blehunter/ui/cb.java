package com.nut.blehunter.ui;

import android.graphics.Bitmap;
import com.nut.blehunter.c.g;
import com.nut.blehunter.d.n;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.ThirdAccount;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.Wechat;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import org.json.JSONException;
import org.json.JSONObject;

final class cb extends i
{
  cb(MapLocationActivity paramMapLocationActivity, g paramg, Nut paramNut, Bitmap paramBitmap, boolean paramBoolean)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.e);
    n.b(this.e, 2131099732);
  }

  public final void a(String paramString)
  {
    try
    {
      k.b(this.e);
      paramString = (ThirdAccount)e.a(new JSONObject(paramString).getString("data"), ThirdAccount.class);
      User localUser = m.a().b();
      Wechat localWechat = new Wechat();
      localWechat.a = paramString.e;
      localWechat.b = paramString.f;
      localUser.f = localWechat;
      m.a().a(this.e, localUser);
      if (this.a != null)
        this.a.a(paramString, this.b, this.c, this.d);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cb
 * JD-Core Version:    0.6.2
 */