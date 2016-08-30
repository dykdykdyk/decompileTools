package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.Button;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class dk extends i
{
  dk(ResetPasswordActivity paramResetPasswordActivity)
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
    ResetPasswordActivity.b(this.a);
    k.b(this.a);
    this.a.n.start();
    ResetPasswordActivity.a(this.a).setEnabled(false);
  }

  public final boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.dk
 * JD-Core Version:    0.6.2
 */