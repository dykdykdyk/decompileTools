package com.nut.blehunter.ui.b.a;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RadioGroup;

public final class ab extends a
{
  public ad o;
  private int p = 0;

  public static ab a(Context paramContext, int paramInt)
  {
    ab localab = new ab();
    b localb = new b(paramContext);
    localb.a(true).b(false).a(null, null).b(null, null).a(LayoutInflater.from(paramContext).inflate(2130903135, null));
    localab.a(localb);
    paramContext = new Bundle();
    paramContext.putInt("gender", paramInt);
    localab.setArguments(paramContext);
    return localab;
  }

  protected final void a(View paramView)
  {
    int i = getArguments().getInt("gender");
    paramView = (RadioGroup)paramView;
    if (i == 1)
      paramView.check(2131558779);
    while (true)
    {
      paramView.setOnCheckedChangeListener(new ac(this));
      return;
      if (i == 2)
        paramView.check(2131558780);
    }
  }

  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof ad))
      this.o = ((ad)paramActivity);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.ab
 * JD-Core Version:    0.6.2
 */