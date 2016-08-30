package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.nut.blehunter.d.e;
import com.nut.blehunter.d.n;
import com.nut.blehunter.entity.RepeatTime;
import com.nut.blehunter.entity.Silence;
import com.nut.blehunter.ui.b.a.ae;
import com.nut.blehunter.ui.b.a.d;
import com.nut.blehunter.ui.b.a.j;
import java.util.List;
import java.util.UUID;

public class SilenceAddOrEditActivity extends b
  implements View.OnClickListener, d
{
  private boolean m;
  private Silence n;
  private int o;
  private int p;

  private String g()
  {
    if (this.p == 0)
      return "";
    if (this.p == 127)
      return getString(2131100035);
    return e.a(getResources().getStringArray(2131493106), this.p);
  }

  private boolean h()
  {
    if (TextUtils.isEmpty(this.n.a))
    {
      n.b(this, 2131100060);
      return false;
    }
    if ((this.n.b == 0) && (this.n.c == 0))
    {
      n.b(this, 2131100065);
      return false;
    }
    if (this.p == 0)
    {
      n.b(this, 2131100063);
      return false;
    }
    return true;
  }

  public final void a(s params, int paramInt)
  {
    String str = params.getTag();
    paramInt = -1;
    switch (str.hashCode())
    {
    default:
    case 1386490336:
    case 1415560330:
    }
    while (true)
      switch (paramInt)
      {
      default:
        return;
        if (str.equals("input_name"))
        {
          paramInt = 0;
          continue;
          if (str.equals("set_time"))
            paramInt = 1;
        }
        break;
      case 0:
      case 1:
      }
    this.n.a = ((j)params).o;
    ((TextView)findViewById(2131558566)).setText(this.n.a);
    return;
    str = ((ae)params).o;
    params = ((ae)params).p;
    int[] arrayOfInt = e.a(str, params);
    this.n.b = arrayOfInt[0];
    this.n.c = arrayOfInt[1];
    ((TextView)findViewById(2131558711)).setText(str + "--" + params);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1) && (paramIntent != null))
    {
      this.p = paramIntent.getIntExtra("repeat_time", 0);
      if (!this.n.d.isEmpty())
        this.n.d.remove(0);
      if (this.p != 0)
      {
        paramIntent = new RepeatTime();
        paramIntent.b = this.p;
        this.n.d.add(0, paramIntent);
      }
      ((TextView)findViewById(2131558713)).setText(g());
    }
  }

  public void onBackPressed()
  {
    if (this.m)
    {
      if (h())
      {
        Intent localIntent = new Intent();
        localIntent.putExtra("silence", this.n);
        localIntent.putExtra("index", this.o);
        setResult(-1, localIntent);
      }
    }
    else
      finish();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    case 2131558711:
    default:
      return;
    case 2131558709:
      j.a(this, this.n.a, this, 16).a(this, "input_name");
      return;
    case 2131558710:
      String[] arrayOfString = e.a(this.n.b, this.n.c);
      paramView = arrayOfString;
      if (arrayOfString == null)
        paramView = new String[2];
      ae.a(this, paramView[0], paramView[1], this).a(this, "set_time");
      return;
    case 2131558712:
    }
    paramView = new Intent(this, SilenceRepeatActivity.class);
    paramView.putExtra("repeat_time", this.p);
    startActivityForResult(paramView, 1);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903105);
    this.m = getIntent().getBooleanExtra("edit", false);
    this.o = getIntent().getIntExtra("index", -1);
    TextView localTextView2;
    if (this.m)
    {
      this.n = ((Silence)getIntent().getParcelableExtra("silence"));
      b(2131100058);
      paramBundle = (Button)findViewById(2131558714);
      paramBundle.setVisibility(0);
      paramBundle.setOnClickListener(new et(this));
      findViewById(2131558709).setOnClickListener(this);
      findViewById(2131558710).setOnClickListener(this);
      findViewById(2131558712).setOnClickListener(this);
      paramBundle = (TextView)findViewById(2131558566);
      TextView localTextView1 = (TextView)findViewById(2131558711);
      localTextView2 = (TextView)findViewById(2131558713);
      if (!TextUtils.isEmpty(this.n.a))
        paramBundle.setText(this.n.a);
      if ((this.n.b != 0) && (this.n.c != 0))
        localTextView1.setText(e.b(this.n.b, this.n.c));
      if (!this.n.d.isEmpty())
        break label334;
    }
    label334: for (int i = 0; ; i = ((RepeatTime)this.n.d.get(0)).b)
    {
      this.p = i;
      localTextView2.setText(g());
      return;
      this.n = new Silence();
      this.n.a = getString(2131099993);
      this.n.e = UUID.randomUUID();
      this.n.b = 79200;
      this.n.c = 111600;
      b(2131100057);
      break;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (!this.m)
      getMenuInflater().inflate(2131623942, paramMenu);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558915)
    {
      if (h())
      {
        paramMenuItem = new Intent();
        paramMenuItem.putExtra("silence", this.n);
        setResult(-1, paramMenuItem);
        finish();
        com.umeng.analytics.b.a(this, "silent_periods_add");
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.SilenceAddOrEditActivity
 * JD-Core Version:    0.6.2
 */