package com.nut.blehunter.ui;

import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import rx.p;

final class db
  implements p<String>
{
  db(RegisterActivity paramRegisterActivity)
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
    if (this.a.isFinishing())
      return;
    paramThrowable = e.a(paramThrowable);
    e.a(this.a, paramThrowable.errorCode, paramThrowable.errorMsg);
    k.b(this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.db
 * JD-Core Version:    0.6.2
 */