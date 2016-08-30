package com.nut.blehunter.ui;

import android.widget.EditText;
import com.nut.blehunter.rxApi.e;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;

final class aq extends i
{
  aq(InputPhoneNumberActivity paramInputPhoneNumberActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.a);
    if (this.a.isFinishing())
      return;
    e.a(this.a, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    k.b(this.a);
    if (InputPhoneNumberActivity.a(this.a) != null)
      InputPhoneNumberActivity.a(this.a).requestFocus();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.aq
 * JD-Core Version:    0.6.2
 */