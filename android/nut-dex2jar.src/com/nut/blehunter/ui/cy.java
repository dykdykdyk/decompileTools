package com.nut.blehunter.ui;

import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import rx.p;

final class cy
  implements p<String>
{
  cy(NutSettingActivity paramNutSettingActivity)
  {
  }

  public final void a()
  {
    if (this.a.isFinishing())
      return;
    k.b(this.a);
  }

  public final void a(Throwable paramThrowable)
  {
    paramThrowable = e.a(paramThrowable);
    e.a(this.a, paramThrowable.errorCode, paramThrowable.errorMsg);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cy
 * JD-Core Version:    0.6.2
 */