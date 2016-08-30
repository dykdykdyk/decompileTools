package com.nut.blehunter.broadcast;

import android.text.TextUtils;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.rxApi.model.ApiError;
import org.json.JSONObject;

final class a extends com.nut.blehunter.rxApi.i
{
  a(PushMsgReceiver paramPushMsgReceiver, String paramString)
  {
  }

  public final void a(ApiError paramApiError)
  {
  }

  public final void a(String paramString)
  {
    paramString = com.nut.blehunter.rxApi.a.b(paramString);
    if (paramString != null)
    {
      paramString = paramString.optString("shareRecords");
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = e.b(paramString);
        Nut localNut = com.nut.blehunter.provider.i.b().e(this.a);
        if (localNut != null)
          com.nut.blehunter.provider.i.b().a(localNut.j, paramString);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.a
 * JD-Core Version:    0.6.2
 */