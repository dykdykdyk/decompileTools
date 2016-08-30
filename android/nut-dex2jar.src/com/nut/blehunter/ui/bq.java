package com.nut.blehunter.ui;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.google.gson.Gson;
import com.nut.blehunter.b.a;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.PositionRecord;
import java.util.ArrayList;

final class bq
  implements com.nut.blehunter.b.e
{
  bq(bp parambp, Nut paramNut)
  {
  }

  public final void a(a parama, int paramInt)
  {
    if (paramInt == 0)
    {
      parama.a = this.a.r.b;
      this.b.b(this.b.c.indexOf(this.a));
      Object localObject = this.b.d;
      String str = this.a.j;
      localObject = ((Context)localObject).getSharedPreferences("nut_disconnect_address", 0).edit();
      ((SharedPreferences.Editor)localObject).putString(str, com.nut.blehunter.e.a().toJson(parama));
      ((SharedPreferences.Editor)localObject).commit();
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bq
 * JD-Core Version:    0.6.2
 */