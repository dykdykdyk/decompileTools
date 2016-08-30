package com.nut.blehunter.ui;

import android.os.CountDownTimer;
import android.widget.Button;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class da extends i
{
  da(RegisterActivity paramRegisterActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    if (this.a.isFinishing())
      return;
    k.b(this.a);
    RegisterActivity.a(this.a, paramApiError);
  }

  public final void a(String paramString)
  {
    if (this.a.isFinishing())
      return;
    RegisterActivity.a(this.a);
    k.b(this.a);
    this.a.n.start();
    RegisterActivity.b(this.a).setEnabled(false);
  }

  public final boolean a()
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.da
 * JD-Core Version:    0.6.2
 */