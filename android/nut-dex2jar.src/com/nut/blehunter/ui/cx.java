package com.nut.blehunter.ui;

import android.text.TextUtils;
import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.i;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import org.json.JSONObject;

final class cx extends i
{
  cx(NutSettingActivity paramNutSettingActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    if (this.a.isFinishing())
      return;
    k.b(this.a);
    com.nut.blehunter.rxApi.e.a(this.a, paramApiError.errorCode, paramApiError.errorMsg);
  }

  public final void a(String paramString)
  {
    if (this.a.isFinishing());
    do
    {
      return;
      k.b(this.a);
      paramString = a.b(paramString);
    }
    while (paramString == null);
    paramString = paramString.optString("firmware");
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = (h)com.nut.blehunter.e.a(paramString, h.class);
      if (paramString != null)
        try
        {
          if (Integer.parseInt(paramString.b) > Integer.parseInt(NutSettingActivity.a(this.a).v))
          {
            j.b().a(NutSettingActivity.a(this.a).p, paramString);
            com.nut.blehunter.dfu.e.a(this.a, NutSettingActivity.a(this.a).p, paramString, this.a);
            return;
          }
        }
        catch (NumberFormatException paramString)
        {
          paramString.printStackTrace();
          n.a(this.a, 0, this.a.getString(2131100038));
          return;
        }
      n.a(this.a, 0, this.a.getString(2131100038));
      return;
    }
    n.a(this.a, 0, this.a.getString(2131100038));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.cx
 * JD-Core Version:    0.6.2
 */