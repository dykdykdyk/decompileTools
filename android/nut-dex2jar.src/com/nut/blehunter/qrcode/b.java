package com.nut.blehunter.qrcode;

import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.aa;
import com.nut.blehunter.ui.b.a.k;
import rx.p;

final class b
  implements p<String>
{
  b(CaptureActivity paramCaptureActivity)
  {
  }

  public final void a()
  {
    if (this.a.isFinishing())
      return;
    aa.b(this.a);
  }

  public final void a(Throwable paramThrowable)
  {
    if (this.a.isFinishing())
      return;
    paramThrowable = e.a(paramThrowable);
    e.a(this.a, paramThrowable.errorCode, paramThrowable.errorMsg);
    k.b(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.qrcode.b
 * JD-Core Version:    0.6.2
 */