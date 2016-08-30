package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class dl extends i
{
  dl(ResetPasswordActivity paramResetPasswordActivity)
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
    n.b(this.a, 2131100024);
    this.a.setResult(-1);
    this.a.finish();
  }

  public final boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dl
 * JD-Core Version:    0.6.2
 */