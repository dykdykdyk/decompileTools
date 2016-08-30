package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.s;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.u;
import com.nut.blehunter.ui.b.a.d;
import com.nut.blehunter.ui.b.a.v;

public class PhoneAlertSettingActivity extends b
  implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, d
{
  private TextView m;
  private Nut n;

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
    this.m.setText(params + "s");
    this.n.u = Integer.parseInt(params);
    u.a("NTNutEvent", "NUT_SETTINGS_CHANGED", "PHONE_ALERT_DISCONNECTED_RING_TIME", this.n.u);
    switch (this.n.u)
    {
    default:
      return;
    case 3:
      com.umeng.analytics.b.a(this, "item_settings_phone_alert_3s");
      return;
    case 5:
      com.umeng.analytics.b.a(this, "item_settings_phone_alert_5s");
      return;
    case 10:
      com.umeng.analytics.b.a(this, "item_settings_phone_alert_10s");
      return;
    case 15:
    }
    com.umeng.analytics.b.a(this, "item_settings_phone_alert_15s");
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1000)
    {
      this.n.D = paramIntent.getIntExtra("selected_sound", 0);
      paramIntent = getResources().getStringArray(2131493107);
      ((TextView)findViewById(2131558679)).setText(paramIntent[this.n.D]);
    }
  }

  public void onBackPressed()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("nut", this.n);
    setResult(-1, localIntent);
    finish();
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    switch (paramCompoundButton.getId())
    {
    default:
      return;
    case 2131558683:
    }
    paramCompoundButton = this.n;
    int i;
    if (paramBoolean)
    {
      i = 1;
      paramCompoundButton.t = i;
      u.a("NTNutEvent", "NUT_SETTINGS_CHANGED", "PHONE_ALERT_RECONNECTED", this.n.t);
      if (!paramBoolean)
        break label88;
    }
    label88: for (paramCompoundButton = "item_settings_phone_alert_reconnect_on"; ; paramCompoundButton = "item_settings_phone_alert_reconnect_off")
    {
      com.umeng.analytics.b.a(this, paramCompoundButton);
      return;
      i = 0;
      break;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131558679:
    default:
      return;
    case 2131558680:
      v.a(this, 2131099731, this.n.u, this).a(d(), "picker_number");
      return;
    case 2131558678:
    }
    paramView = new Intent(this, SettingAlertSoundActivity.class);
    paramView.putExtra("selected_sound", this.n.D);
    paramView.putExtra("device_id", this.n.j);
    startActivityForResult(paramView, 1000);
    com.umeng.analytics.b.a(this, "item_settings_phone_alert_change_disconnect_ringtone");
  }

  protected void onCreate(Bundle paramBundle)
  {
    int j = 0;
    super.onCreate(paramBundle);
    setContentView(2130903095);
    b(2131100040);
    this.n = ((Nut)getIntent().getParcelableExtra("nut"));
    findViewById(2131558680).setOnClickListener(this);
    findViewById(2131558678).setOnClickListener(this);
    this.m = ((TextView)findViewById(2131558681));
    paramBundle = (CheckBox)findViewById(2131558683);
    boolean bool;
    if (this.n.t == 1)
    {
      bool = true;
      paramBundle.setChecked(bool);
      paramBundle.setOnCheckedChangeListener(this);
      if (this.n.u == 0)
        break label280;
      this.m.setText(this.n.u + "s");
    }
    while (true)
    {
      paramBundle = getString(2131100041, new Object[] { this.n.c });
      ((TextView)findViewById(2131558682)).setText(paramBundle);
      paramBundle = getString(2131100042, new Object[] { this.n.c });
      ((TextView)findViewById(2131558684)).setText(paramBundle);
      paramBundle = getResources().getStringArray(2131493107);
      int i = j;
      if (paramBundle.length > this.n.D)
      {
        i = j;
        if (this.n.D >= 0)
          i = this.n.D;
      }
      ((TextView)findViewById(2131558679)).setText(paramBundle[i]);
      return;
      bool = false;
      break;
      label280: this.n.u = 5;
      this.m.setText("5s");
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.PhoneAlertSettingActivity
 * JD-Core Version:    0.6.2
 */