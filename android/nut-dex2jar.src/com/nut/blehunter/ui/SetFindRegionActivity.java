package com.nut.blehunter.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.database.MatrixCursor;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.widget.SearchView;
import android.widget.SearchView.OnQueryTextListener;
import android.widget.SearchView.OnSuggestionListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.SimpleCursorAdapter;
import android.widget.TextView;
import com.nut.blehunter.d.e;
import com.nut.blehunter.d.g;
import com.nut.blehunter.entity.MapRegion;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.PositionRecord;
import com.nut.blehunter.ui.b.d;
import com.nut.blehunter.ui.b.i;
import com.nut.blehunter.ui.b.k;
import com.nut.blehunter.ui.b.l;
import com.nut.blehunter.ui.b.m;
import java.util.ArrayList;
import java.util.List;

public class SetFindRegionActivity extends b
  implements SearchView.OnQueryTextListener, SearchView.OnSuggestionListener, SeekBar.OnSeekBarChangeListener, k, l, m, com.nut.blehunter.ui.b.n
{
  private String A;
  private Runnable B = new ej(this);
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
  private ArrayList<el> w = new ArrayList();
  private boolean x;
  private Handler y;
  private Menu z;

  private void a(MapRegion paramMapRegion)
  {
    if (this.r == null)
      return;
    if (!TextUtils.isEmpty(this.A))
      this.r.a(this.A);
    this.r.e();
    this.r.a(paramMapRegion.b(), this.u.d);
    this.A = this.r.a(paramMapRegion.a, paramMapRegion.b(), 4);
  }

  private void b(boolean paramBoolean)
  {
    if ((this.z == null) || (this.z.findItem(2131558917) == null))
      return;
    this.z.findItem(2131558917).setEnabled(paramBoolean);
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
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
    if (this.x)
    {
      this.x = false;
      return;
    }
    this.u.b = paramb.a;
    this.u.c = paramb.b;
    a(this.u);
    if (this.y != null);
    try
    {
      this.y.removeCallbacks(this.B);
      label61: if (this.y != null)
        this.y.postDelayed(this.B, 1500L);
      b(false);
      return;
    }
    catch (Exception paramb)
    {
      break label61;
    }
  }

  public final void b(String paramString)
  {
    MapRegion localMapRegion = this.u;
    String str;
    if (TextUtils.isEmpty(paramString))
    {
      str = " ";
      localMapRegion.a = str;
      ((TextView)findViewById(2131558610)).setText(this.u.a);
      b(true);
      if (TextUtils.isEmpty(paramString))
        if (!g.b(this))
          break label74;
    }
    label74: for (int i = 2131099806; ; i = 2131099885)
    {
      com.nut.blehunter.d.n.b(this, i);
      return;
      str = paramString;
      break;
    }
  }

  public final void g()
  {
    this.q.setOnSeekBarChangeListener(this);
    if ((this.r == null) || (this.v == null) || (this.v.r == null))
      return;
    Object localObject3 = this.v;
    label59: Object localObject1;
    Object localObject2;
    int i;
    if ((this.r == null) || (localObject3 == null) || (((Nut)localObject3).r == null))
    {
      localObject1 = this.v.r;
      localObject2 = new ArrayList();
      ((ArrayList)localObject2).add(new com.nut.blehunter.entity.b(((PositionRecord)localObject1).e, ((PositionRecord)localObject1).d));
      ((ArrayList)localObject2).add(new com.nut.blehunter.entity.b(((PositionRecord)localObject1).e - 0.0005D, ((PositionRecord)localObject1).d + 0.0005D));
      ((ArrayList)localObject2).add(new com.nut.blehunter.entity.b(((PositionRecord)localObject1).e - 0.002D, ((PositionRecord)localObject1).d));
      ((ArrayList)localObject2).add(new com.nut.blehunter.entity.b(((PositionRecord)localObject1).e + 0.002D, ((PositionRecord)localObject1).d));
      this.r.a((ArrayList)localObject2);
      if ((this.u == null) || (!this.u.a()))
        break label397;
      i = 1;
      label213: localObject1 = this.y;
      localObject2 = new ek(this);
      if (i == 0)
        break label402;
    }
    label397: label402: for (long l = 2000L; ; l = 0L)
    {
      ((Handler)localObject1).postDelayed((Runnable)localObject2, l);
      if (i == 0)
        break;
      a(this.u);
      return;
      localObject1 = getString(2131099966, new Object[] { e.a(((Nut)localObject3).b) });
      localObject2 = ((Nut)localObject3).r;
      localObject3 = this.r.a((String)localObject1, new com.nut.blehunter.entity.b(((PositionRecord)localObject2).e, ((PositionRecord)localObject2).d), 1, (Nut)localObject3);
      if (this.w == null)
        break label59;
      el localel = new el(this);
      localel.b = ((String)localObject3);
      localel.a = 1;
      localel.d = ((PositionRecord)localObject2).e;
      localel.e = ((PositionRecord)localObject2).d;
      localel.c = ((String)localObject1);
      localel.f = 0;
      this.w.add(localel);
      break label59;
      i = 0;
      break label213;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903087);
    b(2131100079);
    paramBundle = getIntent();
    this.v = ((Nut)paramBundle.getParcelableExtra("nut"));
    paramBundle = (MapRegion)paramBundle.getParcelableExtra("mapregion");
    if ((paramBundle != null) && (paramBundle.a()))
      this.u = paramBundle;
    this.q = ((SeekBar)findViewById(2131558613));
    this.q.setMax(4800);
    this.q.setProgress(0);
    this.u.d = 200;
    this.p = ((TextView)findViewById(2131558611));
    this.p.setText(getString(2131099804, new Object[] { this.u.d }));
    this.s = new SimpleCursorAdapter(this, 17367043, null, new String[] { "cityName" }, new int[] { 16908308 }, 2);
    this.o = ((SearchView)findViewById(2131558608));
    this.o.setOnQueryTextListener(this);
    this.o.setOnSuggestionListener(this);
    this.o.setSuggestionsAdapter(this.s);
    this.r = i.a(this);
    if (this.r != null)
    {
      this.r.a(this);
      this.r.a(this);
      this.r.a(this);
      getFragmentManager().beginTransaction().add(2131558592, this.r, this.r.a()).commit();
    }
    this.y = new Handler();
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(2131623939, paramMenu);
    this.z = paramMenu;
    return true;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.y != null)
      this.y.removeCallbacks(this.B);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131558917)
    {
      if ((this.u == null) || (!this.u.a()))
        return false;
      Intent localIntent = new Intent();
      localIntent.putExtra("mapregion", this.u);
      setResult(-1, localIntent);
      finish();
    }
    return super.onOptionsItemSelected(paramMenuItem);
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
      this.r.a(this.r.b(this.u.d));
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
    {
      this.r.b(paramString, 5);
      this.x = true;
    }
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
 * Qualified Name:     com.nut.blehunter.ui.SetFindRegionActivity
 * JD-Core Version:    0.6.2
 */