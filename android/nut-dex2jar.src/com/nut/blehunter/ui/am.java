package com.nut.blehunter.ui;

import android.support.v4.view.cr;
import android.view.View;
import java.util.List;

final class am
  implements cr
{
  am(GuidePagerActivity paramGuidePagerActivity)
  {
  }

  public final void a(int paramInt)
  {
    int i = 0;
    GuidePagerActivity.b(this.a, paramInt);
    GuidePagerActivity.c(this.a, paramInt);
    View localView;
    if (paramInt == GuidePagerActivity.b(this.a).size() - 1)
    {
      paramInt = 1;
      localView = this.a.findViewById(2131558571);
      if (paramInt == 0)
        break label66;
    }
    label66: for (paramInt = i; ; paramInt = 4)
    {
      localView.setVisibility(paramInt);
      return;
      paramInt = 0;
      break;
    }
  }

  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public final void b(int paramInt)
  {
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.am
 * JD-Core Version:    0.6.2
 */