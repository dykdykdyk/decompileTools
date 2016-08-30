package com.nut.blehunter.ui;

import android.view.LayoutInflater;
import com.nut.blehunter.entity.Email;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.a;
import com.nut.blehunter.ui.b.a.b;
import com.nut.blehunter.ui.b.a.f;
import com.nut.blehunter.ui.b.a.k;

final class l extends i
{
  l(BindEmailActivity paramBindEmailActivity, String paramString)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.b);
    if (paramApiError.errorCode == 207)
    {
      paramApiError = com.nut.blehunter.entity.m.a().b();
      paramApiError.c.b = 1;
      com.nut.blehunter.entity.m.a().a(paramApiError);
      this.b.setResult(-1);
      this.b.finish();
      return;
    }
    e.a(this.b, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    k.b(this.b);
    paramString = com.nut.blehunter.entity.m.a().b();
    paramString.c = new Email(this.a);
    com.nut.blehunter.entity.m.a().a(paramString);
    paramString = this.b;
    b localb = new b(paramString);
    localb.a(paramString.getLayoutInflater().inflate(2130903127, null));
    localb.a(2131099790, new m(paramString));
    f.a(paramString.getString(2131099871), paramString.getString(2131099830), localb).a(paramString, "baseDialog");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.l
 * JD-Core Version:    0.6.2
 */