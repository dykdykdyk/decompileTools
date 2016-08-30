package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.google.gson.Gson;
import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.RepeatTime;
import com.nut.blehunter.entity.Silence;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.entity.x;
import com.nut.blehunter.provider.k;
import com.nut.blehunter.u;
import java.util.ArrayList;
import java.util.List;

public class SilencesActivity extends b
  implements View.OnClickListener
{
  private LinearLayout m;
  private User n;
  private boolean o = false;

  private void a(Silence paramSilence)
  {
    View localView = getLayoutInflater().inflate(2130903167, null);
    a(paramSilence, localView);
    paramSilence = new LinearLayout.LayoutParams(-1, -2);
    paramSilence.topMargin = getResources().getDimensionPixelSize(2131165301);
    this.m.addView(localView, paramSilence);
  }

  private void a(Silence paramSilence, View paramView)
  {
    Object localObject = (TextView)paramView.findViewById(2131558566);
    TextView localTextView2 = (TextView)paramView.findViewById(2131558711);
    TextView localTextView1 = (TextView)paramView.findViewById(2131558713);
    ((TextView)localObject).setText(paramSilence.a);
    localTextView2.setText(com.nut.blehunter.d.e.b(paramSilence.b, paramSilence.c));
    if (paramSilence.d.isEmpty())
      localObject = "";
    while (true)
    {
      localTextView1.setText((CharSequence)localObject);
      paramView.setOnClickListener(null);
      paramView.setOnClickListener(new ew(this, paramSilence));
      return;
      localObject = (RepeatTime)paramSilence.d.get(0);
      if (((RepeatTime)localObject).b == 127)
        localObject = getString(2131100035);
      else
        localObject = com.nut.blehunter.d.e.a(getResources().getStringArray(2131493106), ((RepeatTime)localObject).b);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    do
    {
      do
        return;
      while (paramInt2 != -1);
      this.o = true;
      if (this.n.r.b == null)
        this.n.r.b = new ArrayList();
      paramIntent = (Silence)paramIntent.getParcelableExtra("silence");
      this.n.r.b.add(paramIntent);
      this.n.r.a = 1;
      CheckBox localCheckBox = (CheckBox)findViewById(2131558716);
      if (!localCheckBox.isChecked())
      {
        localCheckBox.setChecked(true);
        n.a(this, 0, getString(2131100061));
      }
      a(paramIntent);
      return;
      this.o = true;
      paramInt1 = paramIntent.getIntExtra("index", -1);
      paramIntent = (Silence)paramIntent.getParcelableExtra("silence");
    }
    while (paramInt1 == -1);
    this.n.r.b.remove(paramInt1);
    if (paramIntent == null)
    {
      this.m.removeViewAt(paramInt1);
      return;
    }
    this.n.r.b.add(paramInt1, paramIntent);
    a(paramIntent, this.m.getChildAt(paramInt1));
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558718:
    }
    startActivityForResult(new Intent(this, SilenceAddOrEditActivity.class), 1);
    u.a("NTSilentPeriodEvent", "PERIOD_ADDED");
  }

  protected void onCreate(Bundle paramBundle)
  {
    boolean bool = true;
    int i = 0;
    super.onCreate(paramBundle);
    setContentView(2130903107);
    b(2131099993);
    this.n = k.b().c();
    if (this.n == null)
      return;
    if (this.n.r == null)
      this.n.r = new x();
    findViewById(2131558718).setOnClickListener(this);
    this.m = ((LinearLayout)findViewById(2131558717));
    paramBundle = (CheckBox)findViewById(2131558716);
    paramBundle.setOnCheckedChangeListener(new ev(this));
    if (this.n.r.a == 1);
    while (true)
    {
      paramBundle.setChecked(bool);
      if ((this.n.r.b == null) || (this.n.r.b.isEmpty()))
        break;
      int j = this.n.r.b.size();
      while (i < j)
      {
        a((Silence)this.n.r.b.get(i));
        i += 1;
      }
      break;
      bool = false;
    }
  }

  protected void onPause()
  {
    x localx;
    if (this.o)
    {
      localx = this.n.r;
      if (!((CheckBox)findViewById(2131558716)).isChecked())
        break label73;
    }
    label73: for (int i = 1; ; i = 0)
    {
      localx.a = i;
      this.n.o = com.nut.blehunter.e.a().toJson(this.n.r);
      m.a().a(this, this.n);
      super.onPause();
      return;
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SilencesActivity
 * JD-Core Version:    0.6.2
 */