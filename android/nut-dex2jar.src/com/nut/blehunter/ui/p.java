package com.nut.blehunter.ui;

import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class p extends i
{
  p(BindPhoneActivity paramBindPhoneActivity, boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
  }

  public final void a(ApiError paramApiError)
  {
    BindPhoneActivity.a(this.e, paramApiError);
  }

  public final void a(String paramString)
  {
    k.b(this.e);
    if (this.a)
    {
      BindPhoneActivity.a(this.e, this.b, this.c, this.d);
      return;
    }
    BindPhoneActivity.a(this.e, BindPhoneActivity.e(this.e), BindPhoneActivity.f(this.e), BindPhoneActivity.g(this.e), this.b, this.c, this.d);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.p
 * JD-Core Version:    0.6.2
 */