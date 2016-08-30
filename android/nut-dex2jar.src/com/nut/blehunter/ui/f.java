package com.nut.blehunter.ui;

import android.content.Context;
import android.support.v4.app.s;
import b.a.a;
import com.nut.blehunter.c;
import com.nut.blehunter.d.k;
import com.nut.blehunter.ui.b.a.d;
import org.json.JSONException;
import org.json.JSONObject;

final class f
  implements d
{
  f(b paramb, Context paramContext)
  {
  }

  public final void a(s params, int paramInt)
  {
    try
    {
      params = new JSONObject(k.b(this.a, "version_info", ""));
      new c(this.a).execute(new String[] { params.getString("donwloadUrl") });
      return;
    }
    catch (JSONException params)
    {
      a.b(params, "dialog download new version", new Object[0]);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.f
 * JD-Core Version:    0.6.2
 */