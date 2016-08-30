package com.nut.blehunter.ui;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.CheckedTextView;
import com.nut.blehunter.ui.widget.g;

final class eu
  implements g
{
  eu(SilenceRepeatActivity paramSilenceRepeatActivity)
  {
  }

  public final void a(View paramView, int paramInt)
  {
    paramView = (CheckedTextView)paramView;
    boolean bool = paramView.isChecked();
    int i;
    if (bool)
    {
      SilenceRepeatActivity localSilenceRepeatActivity = this.a;
      int j = localSilenceRepeatActivity.m.getChildCount();
      i = 0;
      paramInt = 0;
      if (i < j)
      {
        if (!((CheckedTextView)localSilenceRepeatActivity.m.getChildAt(i)).isChecked())
          break label109;
        paramInt += 1;
      }
    }
    label109: 
    while (true)
    {
      i += 1;
      break;
      if (paramInt == 1);
      for (paramInt = 1; paramInt != 0; paramInt = 0)
        return;
      if (!bool);
      for (bool = true; ; bool = false)
      {
        paramView.setChecked(bool);
        return;
      }
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.eu
 * JD-Core Version:    0.6.2
 */