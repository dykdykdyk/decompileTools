package com.nut.blehunter.ui;

import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.a;
import com.nut.blehunter.ui.b.a.b;
import com.nut.blehunter.ui.b.a.k;

final class dm extends i
{
  dm(ResetPasswordActivity paramResetPasswordActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    if (this.a.isFinishing())
      return;
    k.b(this.a);
    ResetPasswordActivity.a(this.a, paramApiError);
  }

  public final void a(String paramString)
  {
    if (this.a.isFinishing())
      return;
    k.b(this.a);
    paramString = this.a;
    b localb = new b(paramString);
    localb.a(2131099871);
    localb.b(2131099848);
    localb.a(2131099790, new dn(paramString));
    localb.a().a(paramString, "baseDialog");
  }

  public final boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dm
 * JD-Core Version:    0.6.2
 */