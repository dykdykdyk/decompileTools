package com.nut.blehunter.ui;

import android.os.Bundle;
import android.support.v4.app.s;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.provider.k;
import com.nut.blehunter.ui.b.a.d;
import com.nut.blehunter.ui.b.a.v;

public class AppConfigActivity extends b
  implements View.OnClickListener, d
{
  private User m;
  private TextView n;

  public final void a(s params, int paramInt)
  {
    String str = params.getTag();
    paramInt = -1;
    switch (str.hashCode())
    {
    default:
    case 1432466458:
    }
    while (true)
      switch (paramInt)
      {
      default:
        return;
        if (str.equals("picker_number"))
          paramInt = 0;
        break;
      case 0:
      }
    params = ((v)params).o;
    this.n.setText(params + "s");
    paramInt = Integer.parseInt(params);
    this.m.p = paramInt;
    k.b().a(this.m);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558528:
    }
    v.a(this, 2131100137, this.m.p, this).a(this, "picker_number");
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903071);
    b(2131100139);
    this.m = k.b().c();
    if (this.m == null)
      return;
    findViewById(2131558528).setOnClickListener(this);
    this.n = ((TextView)findViewById(2131558529));
    this.n.setText(this.m.p + "s");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.AppConfigActivity
 * JD-Core Version:    0.6.2
 */