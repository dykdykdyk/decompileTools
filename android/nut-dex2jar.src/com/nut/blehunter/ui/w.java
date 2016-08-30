package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.LosingRecord;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.provider.h;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import com.umeng.analytics.b;
import org.json.JSONObject;

final class w extends com.nut.blehunter.rxApi.i
{
  w(DeclareLostActivity paramDeclareLostActivity, Nut paramNut)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.b);
    n.a(this.b, 2131100097);
  }

  public final void a(String paramString)
  {
    k.b(this.b);
    n.a(this.b, 2131100098);
    paramString = a.b(paramString);
    if (paramString != null)
    {
      paramString = (LosingRecord)e.a(paramString.optString("losingRecord"), LosingRecord.class);
      if (paramString != null)
      {
        this.a.o = paramString;
        this.a.K = 2;
        com.nut.blehunter.provider.i.b().a(this.a, false);
        b.a(this.b, "item_lost_declare_succeeded");
        h.b().d(this.a.k);
        DeclareLostActivity.a(this.b);
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.w
 * JD-Core Version:    0.6.2
 */