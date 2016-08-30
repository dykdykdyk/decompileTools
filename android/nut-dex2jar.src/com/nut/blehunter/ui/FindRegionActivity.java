package com.nut.blehunter.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.SearchView.OnSuggestionListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.google.gson.Gson;
import com.nut.blehunter.d.g;
import com.nut.blehunter.entity.LosingRecord;
import com.nut.blehunter.entity.MapRegion;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.PositionRecord;
import com.nut.blehunter.rxApi.a;
import com.nut.blehunter.rxApi.model.DeclareLosingRequestBody;
import com.nut.blehunter.rxApi.service.NutService;
import com.nut.blehunter.ui.b.d;
import com.nut.blehunter.ui.b.i;
import com.nut.blehunter.ui.b.l;
import com.nut.blehunter.ui.b.m;
import java.util.ArrayList;
import java.util.List;
import retrofit2.Call;

public class FindRegionActivity extends b
  implements SearchView.OnQueryTextListener, SearchView.OnSuggestionListener, SeekBar.OnSeekBarChangeListener, com.nut.blehunter.ui.b.k, l, m, com.nut.blehunter.ui.b.n
{
  private final int m = 4800;
  private final int n = 200;
  private SearchView o;
  private TextView p;
  private SeekBar q;
  private d r;
  private SimpleCursorAdapter s;
  private ArrayList<String> t = new ArrayList();
  private MapRegion u = new MapRegion();
  private Nut v;
  private ArrayList<ak> w = new ArrayList();
  private boolean x = false;
  private Menu y;
  private String z;

  private void a(MapRegion paramMapRegion)
  {
    if (this.r == null)
      return;
    if (!TextUtils.isEmpty(this.z))
      this.r.a(this.z);
    this.r.e();
    this.r.a(paramMapRegion.b(), this.u.d);
    this.z = this.r.a(paramMapRegion.a, paramMapRegion.b(), 4);
  }

  private void b(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      findViewById(2131558608).setVisibility(i);
      findViewById(2131558609).setVisibility(i);
      findViewById(2131558612).setVisibility(i);
      return;
    }
  }

  private void c(boolean paramBoolean)
  {
    MenuItem localMenuItem;
    if (this.y != null)
    {
      localMenuItem = this.y.findItem(2131558919);
      if (paramBoolean)
        break label52;
    }
    label52: for (boolean bool = true; ; bool = false)
    {
      localMenuItem.setVisible(bool);
      this.y.findItem(2131558917).setVisible(paramBoolean);
      return;
    }
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    if (!this.x)
      return;
    this.u.b = paramb.a;
    this.u.c = paramb.b;
    a(this.u);
  }

  public final void a(List<String> paramList)
  {
    if (paramList.size() <= 0)
      return;
    this.t.clear();
    this.t.addAll(paramList);
    MatrixCursor localMatrixCursor = new MatrixCursor(new String[] { "_id", "cityName" });
    int i = 0;
    while (i < paramList.size())
    {
      localMatrixCursor.addRow(new Object[] { Integer.valueOf(i), paramList.get(i) });
      i += 1;
    }
    this.s.changeCursor(localMatrixCursor);
  }

  public final void b(com.nut.blehunter.entity.b paramb)
  {
    if (!this.x);
    do
    {
      return;
      this.u.b = paramb.a;
      this.u.c = paramb.b;
      a(this.u);
    }
    while (this.r == null);
    this.r.a(paramb);
  }

  public final void b(String paramString)
  {
    this.u.a = paramString;
    if (this.x)
    {
      ((TextView)findViewById(2131558610)).setText(paramString);
      if (TextUtils.isEmpty(paramString))
        if (!g.b(this))
          break label62;
    }
    label62: for (int i = 2131099806; ; i = 2131099885)
    {
      com.nut.blehunter.d.n.b(this, i);
      return;
      a(this.u);
      break;
    }
  }

  public final void g()
  {
    this.q.setOnSeekBarChangeListener(this);
    if ((this.r == null) || (this.v == null) || (this.v.r == null) || (this.v.o == null) || (TextUtils.isEmpty(this.v.o.d)))
      return;
    Object localObject1 = this.v;
    if ((this.r == null) || (localObject1 == null) || (((Nut)localObject1).r == null));
    while (true)
    {
      localObject1 = new ArrayList();
      a(this.u);
      if ((TextUtils.isEmpty(this.u.a)) || (this.u.a.equals(" ")))
        this.r.a(this.u.b());
      this.r.a(this);
      ((ArrayList)localObject1).add(new com.nut.blehunter.entity.b(this.v.r.e, this.v.r.d));
      ((ArrayList)localObject1).add(this.u.b());
      this.r.a((ArrayList)localObject1);
      return;
      localObject1 = ((Nut)localObject1).r;
      String str = getString(2131099966, new Object[] { com.nut.blehunter.d.e.a(((PositionRecord)localObject1).b) });
      Object localObject2 = new com.nut.blehunter.entity.b(((PositionRecord)localObject1).e, ((PositionRecord)localObject1).d);
      localObject2 = this.r.a(str, (com.nut.blehunter.entity.b)localObject2, 1, this.v);
      if (this.w != null)
      {
        ak localak = new ak(this);
        localak.b = ((String)localObject2);
        localak.a = 1;
        localak.d = ((PositionRecord)localObject1).e;
        localak.e = ((PositionRecord)localObject1).d;
        localak.c = str;
        localak.f = 0;
        this.w.add(localak);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903087);
    b(2131100079);
    this.v = ((Nut)getIntent().getParcelableExtra("nut"));
    if ((this.v == null) || (this.v.o == null) || (TextUtils.isEmpty(this.v.o.d)))
      return;
    this.u = ((MapRegion)com.nut.blehunter.e.a(this.v.o.d, MapRegion.class));
    int i = this.u.d - 200;
    this.q = ((SeekBar)findViewById(2131558613));
    this.q.setMax(4800);
    paramBundle = this.q;
    if (i >= 0);
    while (true)
    {
      paramBundle.setProgress(i);
      if (this.u.d < 200)
        this.u.d = 200;
      this.p = ((TextView)findViewById(2131558611));
      this.p.setText(getString(2131099804, new Object[] { this.u.d }));
      this.s = new SimpleCursorAdapter(this, 17367043, null, new String[] { "cityName" }, new int[] { 16908308 }, 2);
      this.o = ((SearchView)findViewById(2131558608));
      this.o.setOnQueryTextListener(this);
      this.o.setOnSuggestionListener(this);
      this.o.setSuggestionsAdapter(this.s);
      b(this.x);
      this.r = i.a(this);
      if (this.r == null)
        break;
      this.r.a(this);
      this.r.a(this);
      this.r.a(this);
      getFragmentManager().beginTransaction().add(2131558592, this.r, this.r.a()).commit();
      return;
      i = 0;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    this.y = paramMenu;
    getMenuInflater().inflate(2131623941, paramMenu);
    getMenuInflater().inflate(2131623939, paramMenu);
    c(this.x);
    return true;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    case 2131558918:
    default:
    case 2131558917:
    case 2131558919:
    }
    while (true)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      this.x = false;
      c(this.x);
      b(this.x);
      String str = com.nut.blehunter.e.a().toJson(this.u);
      this.v.o.d = str;
      Nut localNut = this.v;
      if (localNut != null)
        if (!g.b(this))
        {
          com.nut.blehunter.d.n.b(this, 2131099885);
        }
        else
        {
          com.nut.blehunter.ui.b.a.k.a(this);
          if (localNut.o == null);
          for (str = null; ; str = localNut.o.d)
          {
            a.c().declareLosing("update", new DeclareLosingRequestBody(localNut.k, str)).enqueue(new aj(this, localNut));
            break;
          }
          this.x = true;
          c(this.x);
          b(this.x);
        }
    }
  }

  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramSeekBar == this.q)
    {
      paramInt += 200;
      if (this.r != null)
        this.r.a(paramInt);
      this.u.d = paramInt;
      this.p.setText(getString(2131099804, new Object[] { this.u.d }));
    }
  }

  public boolean onQueryTextChange(String paramString)
  {
    if (this.r != null)
      this.r.b(paramString);
    return true;
  }

  public boolean onQueryTextSubmit(String paramString)
  {
    if (this.r != null)
      this.r.b(paramString, 0);
    return true;
  }

  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public boolean onSuggestionClick(int paramInt)
  {
    if ((this.t == null) || (this.t.size() <= 0))
      return false;
    String str = (String)this.t.get(paramInt);
    this.o.setQuery(str, true);
    return false;
  }

  public boolean onSuggestionSelect(int paramInt)
  {
    return false;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.FindRegionActivity
 * JD-Core Version:    0.6.2
 */