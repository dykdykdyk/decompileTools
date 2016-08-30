package com.nut.blehunter.ui;

import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class cd extends i
{
  cd(MeEditActivity paramMeEditActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.a);
    n.b(this.a, 2131100104);
  }

  public final void a(String paramString)
  {
    k.b(this.a);
    paramString = m.a().b();
    paramString.f = null;
    m.a().a(this.a, paramString);
    this.a.g();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cd
 * JD-Core Version:    0.6.2
 */