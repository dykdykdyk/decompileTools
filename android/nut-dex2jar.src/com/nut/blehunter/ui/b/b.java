package com.nut.blehunter.ui.b;

import com.amap.api.services.help.Inputtips.InputtipsListener;
import com.amap.api.services.help.Tip;
import java.util.ArrayList;
import java.util.List;

final class b
  implements Inputtips.InputtipsListener
{
  b(a parama)
  {
  }

  public final void onGetInputtips(List<Tip> paramList, int paramInt)
  {
    if (paramInt == 1000)
    {
      ArrayList localArrayList = new ArrayList();
      paramInt = 0;
      while (paramInt < paramList.size())
      {
        localArrayList.add(((Tip)paramList.get(paramInt)).getName());
        paramInt += 1;
      }
      if (this.a.j != null)
        this.a.j.a(localArrayList);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.b
 * JD-Core Version:    0.6.2
 */