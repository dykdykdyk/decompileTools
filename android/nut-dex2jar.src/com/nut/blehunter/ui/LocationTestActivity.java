package com.nut.blehunter.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.d.e;
import com.nut.blehunter.entity.CustomMarker;
import com.nut.blehunter.entity.Position;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.b.d;
import com.nut.blehunter.ui.b.i;
import com.nut.blehunter.ui.b.n;

public class LocationTestActivity extends b
  implements View.OnClickListener, n
{
  private CustomMarker m;
  private d n;

  public final void g()
  {
    k.b(this);
    if (this.n == null)
      return;
    CustomMarker localCustomMarker = this.m;
    if ((this.n == null) || (localCustomMarker == null));
    while (true)
    {
      this.n.a(this.m.a(), true);
      return;
      this.n.a(localCustomMarker.c, localCustomMarker.a(), localCustomMarker.a);
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558621:
    }
    do
      return;
    while (this.n == null);
    this.n.d();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    paramBundle = (Position)getIntent().getParcelableExtra("position");
    if (paramBundle == null)
      finish();
    String str = e.a(paramBundle.e);
    this.m = new CustomMarker(0, str + " 精度" + paramBundle.f, paramBundle);
    a("GPS定位结果");
    findViewById(2131558621).setOnClickListener(this);
    findViewById(2131558622).setOnClickListener(this);
    this.n = i.a(this);
    if (this.n != null)
    {
      this.n.a(this);
      d.a = false;
      getFragmentManager().beginTransaction().add(2131558592, this.n, this.n.a()).commit();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.n != null)
      this.n.a(null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.LocationTestActivity
 * JD-Core Version:    0.6.2
 */