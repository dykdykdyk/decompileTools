package com.nut.blehunter.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.entity.Silence;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.x;
import java.util.ArrayList;

final class ew
  implements View.OnClickListener
{
  ew(SilencesActivity paramSilencesActivity, Silence paramSilence)
  {
  }

  public final void onClick(View paramView)
  {
    paramView = new Intent(this.b, SilenceAddOrEditActivity.class);
    paramView.putExtra("silence", this.a);
    paramView.putExtra("index", SilencesActivity.b(this.b).r.b.indexOf(this.a));
    paramView.putExtra("edit", true);
    this.b.startActivityForResult(paramView, 2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ew
 * JD-Core Version:    0.6.2
 */