package com.nut.blehunter.ui;

import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class eo extends i
{
  eo(ShareManageActivity paramShareManageActivity, String paramString)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.b);
    if (paramApiError.errorCode == 316)
    {
      eq.a(ShareManageActivity.a(this.b), this.a);
      ShareManageActivity.a(this.b, this.a);
    }
  }

  public final void a(String paramString)
  {
    k.b(this.b);
    eq.a(ShareManageActivity.a(this.b), this.a);
    ShareManageActivity.a(this.b, this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.eo
 * JD-Core Version:    0.6.2
 */