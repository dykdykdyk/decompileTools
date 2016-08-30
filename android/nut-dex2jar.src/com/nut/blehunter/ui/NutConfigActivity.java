package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.provider.k;

public class NutConfigActivity extends b
  implements View.OnClickListener
{
  private User m;
  private Nut n;

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558666:
    }
    paramView = new Intent(this, ConnectRecordActivity.class);
    paramView.putExtra("nut", this.n);
    startActivity(paramView);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.n = ((Nut)getIntent().getParcelableExtra("nut"));
    setContentView(2130903092);
    b(2131100189);
    this.m = k.b().c();
    if (this.m == null)
      return;
    findViewById(2131558666).setOnClickListener(this);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.NutConfigActivity
 * JD-Core Version:    0.6.2
 */