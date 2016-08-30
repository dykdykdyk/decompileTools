package com.nut.blehunter.ui;

import com.nut.blehunter.entity.MapRegion;
import com.nut.blehunter.ui.b.d;

final class ej
  implements Runnable
{
  ej(SetFindRegionActivity paramSetFindRegionActivity)
  {
  }

  public final void run()
  {
    if ((SetFindRegionActivity.a(this.a) != null) && (SetFindRegionActivity.b(this.a) != null))
      SetFindRegionActivity.a(this.a).a(SetFindRegionActivity.b(this.a).b());
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ej
 * JD-Core Version:    0.6.2
 */