package com.nut.blehunter.ui;

import android.support.v7.widget.dt;
import android.support.v7.widget.du;
import android.support.v7.widget.er;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.entity.u;
import java.util.ArrayList;

final class ec
  implements View.OnClickListener
{
  ec(eb parameb, ea paramea)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = this.b.o.c;
    Object localObject1 = this.b;
    if (((er)localObject1).f == -1);
    for (int i = ((er)localObject1).b; ; i = ((er)localObject1).f)
    {
      paramView = (u)paramView.get(i);
      paramView.a = true;
      this.b.o.a.b();
      ScanDeviceActivity.a(this.b.o.d, paramView);
      localObject1 = this.b.o.d;
      Object localObject2 = this.b.o;
      localObject2 = ea.c(paramView.c);
      ea localea = this.b.o;
      ScanDeviceActivity.a((ScanDeviceActivity)localObject1, (String)localObject2, ea.d(paramView.c));
      ScanDeviceActivity.a(this.b.o.d, 2);
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ec
 * JD-Core Version:    0.6.2
 */