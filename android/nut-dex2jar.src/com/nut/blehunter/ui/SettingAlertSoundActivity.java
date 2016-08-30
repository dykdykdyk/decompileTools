package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

public class SettingAlertSoundActivity extends b
{
  private com.nut.blehunter.ble.a m;
  private int n;

  public void onBackPressed()
  {
    this.m.b();
    Intent localIntent = new Intent();
    localIntent.putExtra("selected_sound", this.n);
    setResult(-1, localIntent);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903102);
    b(2131099729);
    paramBundle = (RecyclerView)findViewById(2131558705);
    paramBundle.setHasFixedSize(true);
    paramBundle.a(new com.nut.blehunter.ui.widget.b(getResources().getDrawable(2130837732), false));
    LinearLayoutManager localLinearLayoutManager = new LinearLayoutManager(this);
    localLinearLayoutManager.a(1);
    paramBundle.setLayoutManager(localLinearLayoutManager);
    int i = getIntent().getIntExtra("selected_sound", 0);
    paramBundle.setAdapter(new com.nut.blehunter.ui.a.a(getResources().getStringArray(2131493107), i, new em(this, paramBundle)));
    this.n = i;
    this.m = new com.nut.blehunter.ble.a(this);
  }

  protected void onPause()
  {
    this.m.e();
    super.onPause();
  }

  protected void onResume()
  {
    super.onResume();
    this.m.d();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SettingAlertSoundActivity
 * JD-Core Version:    0.6.2
 */