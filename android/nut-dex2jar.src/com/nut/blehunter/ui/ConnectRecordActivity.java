package com.nut.blehunter.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.dt;
import android.support.v7.widget.du;
import android.support.v7.widget.ec;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.TextView;
import b.a.a;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.ui.a.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.List;

public class ConnectRecordActivity extends b
{
  protected e m;
  private RecyclerView n;
  private ec o;
  private Nut p;

  private byte[] b(String paramString)
  {
    try
    {
      paramString = openFileInput(paramString);
      byte[] arrayOfByte = new byte[paramString.available()];
      paramString.read(arrayOfByte);
      paramString.close();
      return arrayOfByte;
    }
    catch (IOException paramString)
    {
      a.d(paramString.getMessage(), new Object[0]);
    }
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.p = ((Nut)getIntent().getParcelableExtra("nut"));
    setContentView(2130903077);
    b(2131100182);
    this.n = ((RecyclerView)findViewById(2131558548));
    this.n.a(new com.nut.blehunter.ui.widget.b(this));
    this.o = new LinearLayoutManager(this);
    this.n.setLayoutManager(this.o);
    this.m = new e(b(this.p.j + "_connect_record"));
    this.n.setAdapter(this.m);
    new v(this).execute(new Void[0]);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623938, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558916)
    {
      paramMenuItem = this.m;
      if (paramMenuItem.c != null)
      {
        paramMenuItem.c.clear();
        paramMenuItem.a.b();
      }
      paramMenuItem = new StringBuilder();
      paramMenuItem.append(getString(2131100187)).append(":0\r\n").append(getString(2131100184)).append(":0\r\n").append(getString(2131100186)).append(":0\r\n").append(getString(2131100183)).append(":0\r\n");
      ((TextView)findViewById(2131558547)).setText(paramMenuItem.toString());
      paramMenuItem = this.p.j + "_connect_record";
      paramMenuItem = new File(getFilesDir() + "/" + paramMenuItem);
      if (paramMenuItem.exists())
        paramMenuItem.delete();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.ConnectRecordActivity
 * JD-Core Version:    0.6.2
 */