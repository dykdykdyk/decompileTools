package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.CheckedTextView;
import com.nut.blehunter.ui.a.i;
import com.nut.blehunter.ui.widget.e;

public class SilenceRepeatActivity extends b
{
  RecyclerView m;

  private int g()
  {
    int k = this.m.getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      if (!((CheckedTextView)this.m.getChildAt(j)).isChecked())
        break label49;
      i = 1 << j | i;
    }
    label49: 
    while (true)
    {
      j += 1;
      break;
      return i;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903106);
    b(2131100043);
    this.m = ((RecyclerView)findViewById(2131558715));
    this.m.setHasFixedSize(true);
    this.m.a(new com.nut.blehunter.ui.widget.b(this, (byte)0));
    paramBundle = new LinearLayoutManager(this);
    paramBundle.a(1);
    this.m.setLayoutManager(paramBundle);
    this.m.a(new e(this, new eu(this)));
    paramBundle = getResources().getStringArray(2131493105);
    int i = getIntent().getIntExtra("repeat_time", 0);
    this.m.setAdapter(new i(paramBundle, i));
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623939, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558917)
    {
      paramMenuItem = new Intent();
      paramMenuItem.putExtra("repeat_time", g());
      setResult(-1, paramMenuItem);
      finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SilenceRepeatActivity
 * JD-Core Version:    0.6.2
 */