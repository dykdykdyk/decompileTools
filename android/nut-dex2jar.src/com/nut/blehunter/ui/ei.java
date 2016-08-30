package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;

final class ei extends i
{
  ei(SendMailActivity paramSendMailActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    e.a(this.a, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    n.b(this.a, 2131100029);
    this.a.finish();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ei
 * JD-Core Version:    0.6.2
 */