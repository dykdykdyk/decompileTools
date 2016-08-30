package com.nut.blehunter.ui;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import com.nut.blehunter.dfu.e;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.h;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.provider.j;
import com.nut.blehunter.ui.widget.g;
import java.io.File;
import java.util.ArrayList;

final class bm
  implements g
{
  bm(MainActivity paramMainActivity)
  {
  }

  public final void a(View paramView, int paramInt)
  {
    if (paramInt < 0);
    do
    {
      return;
      MainActivity.a(this.a, paramInt);
      paramView = (Nut)MainActivity.b(this.a).get(paramInt);
      MainActivity.a(this.a, paramView);
      if (paramView.K != 7)
      {
        Intent localIntent = new Intent(this.a, NutDetailActivity.class);
        localIntent.putExtra("nut", paramView);
        this.a.startActivityForResult(localIntent, 102);
        return;
      }
      paramView = j.b().a(paramView.p);
    }
    while ((paramView == null) || (paramView.c == null));
    if ((!TextUtils.isEmpty(paramView.c.d)) && (new File(paramView.c.d).exists()))
    {
      e.a(this.a, paramView.c.c, this.a);
      return;
    }
    e.a(this.a, paramView.a, paramView.c, this.a);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.bm
 * JD-Core Version:    0.6.2
 */