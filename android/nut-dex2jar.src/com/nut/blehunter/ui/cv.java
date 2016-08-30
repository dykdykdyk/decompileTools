package com.nut.blehunter.ui;

import android.os.Bundle;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.aa;

final class cv extends com.nut.blehunter.rxApi.i
{
  cv(NutDetailActivity paramNutDetailActivity, Nut paramNut)
  {
  }

  public final void a(ApiError paramApiError)
  {
    aa.b(this.b);
    if ((paramApiError.errorCode == 318) || (paramApiError.errorCode == 316))
    {
      com.nut.blehunter.provider.i.b().i(NutDetailActivity.j(this.b).j);
      this.b.finish();
      return;
    }
    e.a(this.b, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    aa.b(this.b);
    com.nut.blehunter.provider.i.b().i(this.a.j);
    paramString = new Bundle();
    paramString.putString("device_id", this.a.j);
    paramString.putBoolean("is_reset", false);
    this.b.a(17, paramString);
    this.b.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cv
 * JD-Core Version:    0.6.2
 */