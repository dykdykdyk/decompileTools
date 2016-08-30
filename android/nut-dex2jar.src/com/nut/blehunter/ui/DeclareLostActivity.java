package com.nut.blehunter.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.google.gson.Gson;
import com.nut.blehunter.d.g;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.MapRegion;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.rxApi.model.DeclareLosingRequestBody;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.widget.CircleImageView;
import retrofit2.Call;

public class DeclareLostActivity extends b
  implements View.OnClickListener
{
  private final int m = 1;
  private final int n = 2;
  private Menu o;
  private Nut p;
  private String q;
  private String r;
  private MapRegion s;

  private void a(Menu paramMenu)
  {
    if (paramMenu == null)
      return;
    try
    {
      paramMenu = paramMenu.getItem(0);
      if (g())
      {
        paramMenu.setEnabled(true);
        return;
      }
    }
    catch (Exception paramMenu)
    {
      b.a.a.b(paramMenu, "setMenuEnable exception", new Object[0]);
      return;
    }
    paramMenu.setEnabled(false);
  }

  private void a(TextView paramTextView, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      paramTextView.setText(2131099807);
      paramTextView.setTextColor(getResources().getColor(2131427349));
      return;
    }
    paramTextView.setText(paramString);
    paramTextView.setTextColor(getResources().getColor(2131427351));
  }

  private boolean g()
  {
    return (this.s != null) && (this.s.a());
  }

  private void h()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("need_finish", true);
    setResult(-1, localIntent);
    finish();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      a(this.o);
      do
      {
        return;
        if ((paramInt2 != -1) || (paramIntent == null))
          break;
        this.s = ((MapRegion)paramIntent.getParcelableExtra("mapregion"));
      }
      while ((this.s == null) || (TextUtils.isEmpty(this.s.a)));
      a((TextView)findViewById(2131558557), this.s.a);
      continue;
      if ((paramInt2 == -1) && (paramIntent != null))
      {
        this.q = paramIntent.getStringExtra("country");
        this.r = paramIntent.getStringExtra("phone");
        a((TextView)findViewById(2131558564), this.r);
      }
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131558555:
      paramView = new Intent(this, SetFindRegionActivity.class);
      paramView.putExtra("nut", this.p);
      if ((this.s != null) && (this.s.a()))
        paramView.putExtra("mapregion", this.s);
      startActivityForResult(paramView, 1);
      return;
    case 2131558562:
    }
    paramView = new Intent(this, InputPhoneNumberActivity.class);
    String str = ((TextView)findViewById(2131558564)).getText().toString();
    if ((!TextUtils.isEmpty(str)) && (!str.equals(getString(2131099807))))
      paramView.putExtra("phone", str);
    startActivityForResult(paramView, 2);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903079);
    b(2131100077);
    this.p = ((Nut)getIntent().getParcelableExtra("nut"));
    if (this.p != null)
    {
      com.nut.blehunter.n.a((CircleImageView)findViewById(2131558533), this.p);
      ((TextView)findViewById(2131558551)).setText(this.p.c);
    }
    paramBundle = m.a().b();
    if (paramBundle != null)
    {
      a((TextView)findViewById(2131558564), paramBundle.b());
      this.q = paramBundle.a();
      this.r = paramBundle.b();
    }
    findViewById(2131558555).setOnClickListener(this);
    findViewById(2131558562).setOnClickListener(this);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.o = paramMenu;
    getMenuInflater().inflate(2131623948, paramMenu);
    a(this.o);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    String str;
    Nut localNut;
    if (paramMenuItem.getItemId() == 2131558925)
    {
      if (i.b().d(this.p.k).K == 1)
        h();
      do
      {
        return false;
        str = e.a().toJson(this.s);
      }
      while ((this.p == null) || (!g()));
      localNut = this.p;
      if (localNut != null)
      {
        if (g.b(this))
          break label92;
        com.nut.blehunter.d.n.b(this, 2131099885);
      }
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      label92: k.a(this);
      com.nut.blehunter.rxApi.a.c().declareLosing("create", new DeclareLosingRequestBody(this.p.k, str)).enqueue(new w(this, localNut));
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.DeclareLostActivity
 * JD-Core Version:    0.6.2
 */