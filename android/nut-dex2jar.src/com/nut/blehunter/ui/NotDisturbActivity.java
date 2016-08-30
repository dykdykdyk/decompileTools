package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.TextView;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.service.NutTrackerService;
import java.util.ArrayList;

public class NotDisturbActivity extends b
  implements View.OnClickListener
{
  private final int m = 1;
  private final int n = 2;
  private final int o = 3;
  private CheckBox p;
  private User q;

  private static boolean b(String paramString)
  {
    User localUser = m.a().b();
    if (localUser == null);
    do
    {
      return false;
      paramString = localUser.a(paramString);
    }
    while ((paramString == null) || (paramString.isEmpty()));
    return true;
  }

  private void d(int paramInt)
  {
    Intent localIntent = new Intent();
    switch (paramInt)
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      startActivity(localIntent);
      return;
      localIntent.setClass(this, SelectWiFiActivity.class);
      localIntent.putExtra("WIFIConf", "home");
      continue;
      localIntent.setClass(this, SelectWiFiActivity.class);
      localIntent.putExtra("WIFIConf", "company");
      continue;
      localIntent.setClass(this, SelectWiFiActivity.class);
      localIntent.putExtra("WIFIConf", "other");
    }
  }

  private void g()
  {
    if (b("home"))
    {
      ((TextView)findViewById(2131558661)).setText(2131099996);
      if (!b("company"))
        break label84;
      ((TextView)findViewById(2131558663)).setText(2131099996);
    }
    while (true)
    {
      if (!b("other"))
        break label101;
      ((TextView)findViewById(2131558665)).setText(2131099996);
      return;
      ((TextView)findViewById(2131558661)).setText(2131099995);
      break;
      label84: ((TextView)findViewById(2131558663)).setText(2131099995);
    }
    label101: ((TextView)findViewById(2131558665)).setText(2131099995);
  }

  private void h()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this, NutTrackerService.class);
    localIntent.setAction("com.nutspace.action.region.change");
    startService(localIntent);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131558661:
    case 2131558663:
    default:
      return;
    case 2131558660:
      d(1);
      return;
    case 2131558662:
      d(2);
      return;
    case 2131558664:
    }
    d(3);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903091);
    b(2131099997);
    this.q = m.a().b();
    findViewById(2131558660).setOnClickListener(this);
    findViewById(2131558662).setOnClickListener(this);
    findViewById(2131558664).setOnClickListener(this);
    this.p = ((CheckBox)findViewById(2131558659));
    if (this.q != null)
      this.p.setChecked(this.q.g());
    this.p.setOnCheckedChangeListener(new cj(this));
    g();
  }

  protected void onResume()
  {
    super.onResume();
    g();
    h();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.NotDisturbActivity
 * JD-Core Version:    0.6.2
 */