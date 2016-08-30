package com.nut.blehunter.ui;

import android.support.v7.widget.dt;
import android.support.v7.widget.du;
import android.text.TextUtils;
import android.view.View;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.model.ApiError;
import com.nut.blehunter.ui.b.a.k;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

final class en extends com.nut.blehunter.rxApi.i
{
  en(ShareManageActivity paramShareManageActivity)
  {
  }

  public final void a(ApiError paramApiError)
  {
    k.b(this.a);
  }

  public final void a(String paramString)
  {
    k.b(this.a);
    paramString = a.b(paramString);
    if (paramString != null)
    {
      paramString = paramString.optString("shareRecords");
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = e.b(paramString);
        if ((paramString == null) || (paramString.isEmpty()))
          break label117;
        eq localeq = ShareManageActivity.a(this.a);
        ArrayList localArrayList = (ArrayList)paramString;
        if ((localArrayList != null) && (!localArrayList.isEmpty()))
        {
          localeq.c.addAll(localArrayList);
          localeq.a.b();
        }
        ShareManageActivity.b(this.a).A = paramString;
        com.nut.blehunter.provider.i.b().a(ShareManageActivity.b(this.a).j, paramString);
      }
    }
    return;
    label117: this.a.findViewById(2131558706).setVisibility(0);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.en
 * JD-Core Version:    0.6.2
 */