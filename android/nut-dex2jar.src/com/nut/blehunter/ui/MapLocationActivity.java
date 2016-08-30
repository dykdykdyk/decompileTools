package com.nut.blehunter.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.LoaderManager;
import android.app.LoaderManager.LoaderCallbacks;
import android.content.CursorLoader;
import android.content.Intent;
import android.content.Loader;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.nut.blehunter.c.g;
import com.nut.blehunter.d.e;
import com.nut.blehunter.d.f;
import com.nut.blehunter.entity.CustomMarker;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.ThirdAccount;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.Wechat;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.provider.h;
import com.nut.blehunter.ui.b.a.k;
import com.nut.blehunter.ui.b.l;
import com.nut.blehunter.ui.b.o;
import com.nut.blehunter.ui.b.q;
import com.squareup.picasso.Target;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MapLocationActivity extends b
  implements LoaderManager.LoaderCallbacks<Cursor>, View.OnClickListener, l, com.nut.blehunter.ui.b.n, o, q
{
  Target m = new bs(this);
  CountDownTimer n = new bt(this);
  private boolean o;
  private Nut p;
  private Bitmap q;
  private com.nut.blehunter.ui.b.d r;
  private com.nut.blehunter.ui.widget.c s;
  private ArrayList<CustomMarker> t = new ArrayList();
  private View.OnClickListener u = new bu(this);

  private String a(CustomMarker paramCustomMarker)
  {
    if ((this.r == null) || (paramCustomMarker == null))
      return "";
    return this.r.a(null, paramCustomMarker.a(), paramCustomMarker.a);
  }

  private String a(CustomMarker paramCustomMarker, Nut paramNut)
  {
    if ((this.r == null) || (paramCustomMarker == null))
      return "";
    return this.r.a(null, paramCustomMarker.a(), paramCustomMarker.a, paramNut);
  }

  private void a(Nut paramNut, CustomMarker paramCustomMarker)
  {
    while (true)
    {
      TextView localTextView;
      ImageView localImageView;
      try
      {
        localTextView = (TextView)findViewById(2131558616);
        localImageView = (ImageView)findViewById(2131558615);
        localObject = com.nut.blehunter.b.d.a(this, paramNut.j);
        if (localObject == null)
          localObject = "";
        switch (paramNut.K)
        {
        case 0:
          paramNut = getString(2131099963, new Object[] { localObject });
          localImageView.setImageResource(2130837632);
          ((TextView)findViewById(2131558617)).setText(paramNut);
          ((TextView)findViewById(2131558618)).setText(e.a(paramCustomMarker.f));
          if (!this.p.E)
            break label362;
          i = 0;
          localImageView.setVisibility(i);
          return;
          localObject = ((com.nut.blehunter.b.a)localObject).b();
          continue;
          paramNut = getString(2131099963, new Object[] { localObject });
          localImageView.setImageResource(2130837632);
          break;
        case 2:
          localObject = getString(2131099963, new Object[] { localObject });
          str = getString(2131099962, new Object[] { Integer.valueOf(paramNut.F), Integer.valueOf(paramNut.G) });
          if (paramNut.F > 0)
          {
            localTextView.setText(str);
            localTextView.setVisibility(0);
          }
          localImageView.setImageResource(2130838031);
          paramNut = (Nut)localObject;
          continue;
        case 6:
        }
      }
      catch (Exception paramNut)
      {
        paramNut.printStackTrace();
        return;
      }
      Object localObject = getString(2131099964, new Object[] { paramCustomMarker.c });
      String str = getString(2131099962, new Object[] { Integer.valueOf(paramNut.F), Integer.valueOf(paramNut.G) });
      if (paramNut.G > 0)
      {
        localTextView.setText(str);
        localTextView.setVisibility(0);
      }
      localImageView.setImageResource(2130838031);
      paramNut = (Nut)localObject;
      continue;
      label362: int i = 8;
    }
  }

  private void b(boolean paramBoolean)
  {
    View localView = findViewById(2131558614);
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }

  private void d(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    Iterator localIterator = this.t.iterator();
    label16: CustomMarker localCustomMarker;
    if (localIterator.hasNext())
    {
      localCustomMarker = (CustomMarker)localIterator.next();
      if (!paramString.equals(localCustomMarker.b))
        break label59;
    }
    label59: for (boolean bool = true; ; bool = false)
    {
      localCustomMarker.e = bool;
      break label16;
      break;
    }
  }

  private void h()
  {
    if (this.t == null);
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = new ArrayList();
      Iterator localIterator = this.t.iterator();
      while (localIterator.hasNext())
      {
        CustomMarker localCustomMarker = (CustomMarker)localIterator.next();
        localArrayList.add(localCustomMarker.a());
        switch (localCustomMarker.a)
        {
        case 4:
        default:
          break;
        case 0:
          localCustomMarker.b = a(localCustomMarker);
          localCustomMarker.e = true;
          break;
        case 1:
        case 2:
        case 3:
          localCustomMarker.b = a(localCustomMarker, this.p);
          localCustomMarker.e = true;
          a(this.p, localCustomMarker);
          break;
        case 5:
          a(this.p, localCustomMarker);
          d(localCustomMarker.b);
          localCustomMarker.b = a(localCustomMarker, this.p);
          break;
        case 7:
          a(this.p, localCustomMarker);
          d(localCustomMarker.b);
        case 8:
          localCustomMarker.b = a(localCustomMarker);
          break;
        case 6:
          localCustomMarker.b = a(localCustomMarker, this.p);
        }
      }
    }
    while (this.r == null);
    this.r.a(localArrayList);
  }

  public final void a(Nut paramNut, Bitmap paramBitmap, boolean paramBoolean)
  {
    Object localObject1 = m.a().b();
    if (localObject1 == null);
    Object localObject2;
    do
    {
      return;
      new com.nut.blehunter.c.b();
      localObject2 = getString(2131099973);
      g localg = com.nut.blehunter.c.b.a(this, 1);
      if (((User)localObject1).i())
      {
        localObject2 = new ThirdAccount();
        ((ThirdAccount)localObject2).e = ((User)localObject1).f.a;
        ((ThirdAccount)localObject2).f = ((User)localObject1).f.b;
        localg.a((ThirdAccount)localObject2, paramNut, paramBitmap, paramBoolean);
        return;
      }
    }
    while (isFinishing());
    localObject1 = new com.nut.blehunter.ui.b.a.b(this);
    ((com.nut.blehunter.ui.b.a.b)localObject1).a(2131099730);
    ((com.nut.blehunter.ui.b.a.b)localObject1).a(true);
    ((com.nut.blehunter.ui.b.a.b)localObject1).b(true);
    ((com.nut.blehunter.ui.b.a.b)localObject1).b(getString(2131099917, new Object[] { localObject2 }));
    ((com.nut.blehunter.ui.b.a.b)localObject1).a(2131099783, new by(this, paramNut, paramBitmap, paramBoolean));
    ((com.nut.blehunter.ui.b.a.b)localObject1).b(2131099781, new ca(this));
    ((com.nut.blehunter.ui.b.a.b)localObject1).a().a(this, "baseDialog");
  }

  public final void a(com.nut.blehunter.entity.b paramb)
  {
    if (this.n != null)
    {
      this.n.cancel();
      if (this.r != null)
        this.r.a(paramb, true);
    }
    k.b(this);
    if ((this.p == null) || (this.p.K != 1));
    while (true)
    {
      if ((this.t != null) && (this.t.size() == 1))
      {
        CustomMarker localCustomMarker = (CustomMarker)this.t.get(0);
        if ((localCustomMarker != null) && (localCustomMarker.a == 2))
        {
          localCustomMarker.g = (paramb.a + 1.E-005D);
          localCustomMarker.h = (paramb.b + 1.E-005D);
          if (this.r != null)
          {
            this.r.a(localCustomMarker.b);
            h();
          }
        }
      }
      return;
      this.p.r.e = paramb.a;
      this.p.r.d = paramb.b;
      this.p.r.b = com.nut.blehunter.d.c.a();
      com.nut.blehunter.provider.i.b().a(this.p, true);
    }
  }

  public final void b(String paramString)
  {
  }

  public final void c(String paramString)
  {
    if (this.r == null)
      break label7;
    label7: label142: label271: 
    while (true)
    {
      return;
      if (!TextUtils.isEmpty(paramString))
      {
        Iterator localIterator = this.t.iterator();
        while (true)
        {
          if (!localIterator.hasNext())
            break label271;
          CustomMarker localCustomMarker = (CustomMarker)localIterator.next();
          if (localCustomMarker.a < 5)
            break;
          if (paramString.equals(localCustomMarker.b))
          {
            int i;
            label81: int j;
            if (this.t.indexOf(localCustomMarker) == 0)
            {
              i = 1;
              if (i == 0)
                break label142;
              j = 5;
              label87: localCustomMarker.a = j;
              localCustomMarker.e = true;
              if (i == 0)
                break label148;
              this.r.a(localCustomMarker.b, localCustomMarker.a, this.p);
            }
            while (true)
            {
              a(this.p, localCustomMarker);
              break;
              i = 0;
              break label81;
              j = 7;
              break label87;
              label148: this.r.a(localCustomMarker.b, localCustomMarker.a);
            }
          }
          if ((localCustomMarker.e) && (localCustomMarker.a == 5))
          {
            localCustomMarker.a = 6;
            localCustomMarker.e = false;
            this.r.a(localCustomMarker.b, localCustomMarker.a, this.p);
          }
          else if ((localCustomMarker.e) && (localCustomMarker.a == 7))
          {
            localCustomMarker.a = 8;
            localCustomMarker.e = false;
            this.r.a(localCustomMarker.b, localCustomMarker.a);
          }
        }
      }
    }
  }

  public final void g()
  {
    this.o = true;
    k.b(this);
    if ((this.r == null) || (this.p == null))
      return;
    h();
  }

  public void onBackPressed()
  {
    finish();
    overridePendingTransition(0, 2130968592);
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558621:
    case 2131558622:
      label40: Object localObject1;
      Object localObject2;
      Object localObject3;
      do
      {
        return;
        break label40;
        do
        {
          while (this.r == null);
          this.r.d();
          k.a(this);
          this.n.start();
          return;
          if ((this.t == null) || (this.t.isEmpty()))
            break;
          localObject1 = this.t.iterator();
          if (!((Iterator)localObject1).hasNext())
            break;
          paramView = (CustomMarker)((Iterator)localObject1).next();
          if (!paramView.e)
            break;
          localObject2 = new Bundle();
          ((Bundle)localObject2).putParcelable("marker", paramView);
          ((Bundle)localObject2).putString("formatQuery", "geo:0,0?q=%f,%f(%s)");
          localObject1 = new Intent("android.intent.action.VIEW", Uri.parse(String.format("geo:0,0?q=%f,%f(%s)", new Object[] { Double.valueOf(paramView.g), Double.valueOf(paramView.h), paramView.c })));
          localObject3 = (ArrayList)getPackageManager().queryIntentActivities((Intent)localObject1, 65536);
          ((Bundle)localObject2).putParcelableArrayList("resolveInfos", (ArrayList)localObject3);
          if ((localObject3 == null) || (((ArrayList)localObject3).isEmpty()))
          {
            com.nut.blehunter.d.n.a(this, 2131099961);
            return;
          }
          if (((ArrayList)localObject3).size() != 1)
            break label385;
          localObject2 = (ResolveInfo)((ArrayList)localObject3).get(0);
        }
        while ((localObject2 == null) || (paramView == null));
        localObject3 = ((ResolveInfo)localObject2).activityInfo.packageName;
        localObject2 = getPackageManager().getLaunchIntentForPackage((String)localObject3);
      }
      while (localObject2 == null);
      ((Intent)localObject2).setAction(((Intent)localObject1).getAction());
      if (((String)localObject3).contains("autonavi"))
      {
        localObject1 = f.a(paramView.g, paramView.h);
        ((Intent)localObject2).setData(Uri.parse(String.format("geo:0,0?q=%f,%f(%s)", new Object[] { Double.valueOf(localObject1[0]), Double.valueOf(localObject1[1]), paramView.c })));
      }
      while (true)
      {
        startActivity((Intent)localObject2);
        return;
        ((Intent)localObject2).setData(((Intent)localObject1).getData());
      }
      label385: com.nut.blehunter.ui.b.a.n.a((Bundle)localObject2).show(getFragmentManager(), "map_choose");
      return;
    case 2131558615:
    }
    if (this.p.K == 0)
    {
      if ((this.p.A != null) && (!this.p.A.isEmpty()))
      {
        paramView = new com.nut.blehunter.ui.b.a.b(this);
        paramView.a(2131099876);
        paramView.b(2131099835);
        paramView.a(2131099782, new bv(this));
        paramView.b(2131099792, null);
        paramView.a().a(d(), "baseDialog");
        return;
      }
      paramView = new Intent(this, DeclareLostActivity.class);
      paramView.putExtra("nut", this.p);
      startActivity(paramView);
      return;
    }
    this.s = new com.nut.blehunter.ui.widget.c(this, this.u);
    this.s.showAtLocation(paramView, 81, 0, 0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903088);
    this.p = ((Nut)getIntent().getParcelableExtra("nut"));
    if (this.p == null)
      finish();
    a(getString(2131100090, new Object[] { this.p.c }));
    Toolbar localToolbar = l();
    boolean bool = TextUtils.isEmpty(localToolbar.getNavigationContentDescription());
    ArrayList localArrayList;
    if (!bool)
    {
      paramBundle = localToolbar.getNavigationContentDescription().toString();
      localToolbar.setNavigationContentDescription(paramBundle);
      localArrayList = new ArrayList();
      localToolbar.findViewsWithText(localArrayList, paramBundle, 2);
      if (localArrayList.size() <= 0)
        break label430;
    }
    label299: label430: for (paramBundle = (View)localArrayList.get(0); ; paramBundle = null)
    {
      if (bool)
        localToolbar.setNavigationContentDescription(null);
      paramBundle.setRotation(-90.0F);
      this.o = false;
      findViewById(2131558621).setOnClickListener(this);
      findViewById(2131558622).setOnClickListener(this);
      findViewById(2131558615).setOnClickListener(this);
      this.r = com.nut.blehunter.ui.b.i.a(this);
      if (this.r != null)
      {
        this.r.a(this);
        this.r.a(this);
        this.r.a(this);
        if (this.p.K == 6)
        {
          com.nut.blehunter.ui.b.d.a = false;
          this.r.a(this);
          label248: getFragmentManager().beginTransaction().add(2131558592, this.r, this.r.a()).commit();
        }
      }
      else
      {
        if (this.p.K == 6)
          break label371;
        getLoaderManager().initLoader(1, null, this);
        com.nut.blehunter.n.a(this, this.p, this.m);
        switch (this.p.K)
        {
        default:
        case 1:
        case 0:
        case 6:
        }
      }
      while (true)
      {
        k.a(this);
        return;
        paramBundle = "navigationIcon";
        break;
        com.nut.blehunter.ui.b.d.a = true;
        break label248;
        label371: getLoaderManager().initLoader(2, null, this);
        h.b();
        paramBundle = this.p.k;
        h.c();
        break label299;
        com.umeng.analytics.b.a(this, "check_location_connected");
        continue;
        com.umeng.analytics.b.a(this, "check_location_disconnected");
        continue;
        com.umeng.analytics.b.a(this, "check_location_found");
      }
    }
  }

  public Loader<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1)
      return new CursorLoader(this, com.nut.blehunter.provider.d.a, com.nut.blehunter.provider.i.b, "tag_id = ? ", new String[] { this.p.k }, null);
    if (this.p == null);
    for (paramBundle = ""; ; paramBundle = this.p.k)
      return new CursorLoader(this, com.nut.blehunter.provider.c.a, h.b, "tag_id = ?", new String[] { paramBundle }, "find_time DESC");
  }

  protected void onDestroy()
  {
    if (this.n != null)
      this.n.cancel();
    if ((this.q != null) && (!this.q.isRecycled()))
      this.q.recycle();
    super.onDestroy();
  }

  public void onLoaderReset(Loader<Cursor> paramLoader)
  {
  }

  protected void onStart()
  {
    super.onStart();
    if (this.r != null)
    {
      this.r.a(this);
      this.r.a(this);
      this.r.a(this);
      com.nut.blehunter.ui.b.d.a = false;
      if (this.p.K == 6)
        this.r.a(this);
    }
  }

  protected void onStop()
  {
    if (this.r != null)
    {
      this.r.c();
      this.r.a(null);
      this.r.a(null);
      this.r.a(null);
      if (this.p.K == 6)
        this.r.a(null);
    }
    super.onStop();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.MapLocationActivity
 * JD-Core Version:    0.6.2
 */