package com.nut.blehunter.ui;

import android.widget.EditText;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class n extends i
{
  n(BindPhoneActivity paramBindPhoneActivity, String paramString)
  {
  }

  public final void a(ApiError paramApiError)
  {
    BindPhoneActivity.a(this.b, paramApiError);
  }

  public final void a(String paramString)
  {
    k.b(this.b);
    if (!this.a.equals("MODIFY_MOBILE_OLD"))
    {
      BindPhoneActivity.a(this.b);
      BindPhoneActivity.a(this.b, BindPhoneActivity.b(this.b));
      BindPhoneActivity.c(this.b).requestFocus();
      return;
    }
    BindPhoneActivity.d(this.b).requestFocus();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.n
 * JD-Core Version:    0.6.2
 */