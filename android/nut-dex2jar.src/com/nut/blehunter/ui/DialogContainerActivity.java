package com.nut.blehunter.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.a.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.d;
import com.nut.blehunter.entity.r;
import com.nut.blehunter.ui.b.a.b;
import com.nut.blehunter.ui.b.a.e;
import com.nut.blehunter.ui.b.a.x;

public class DialogContainerActivity extends s
  implements e
{
  private boolean m;

  private void a(Nut paramNut, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = getString(2131099828, new Object[] { paramNut.c }); ; str = getString(2131099829, new Object[] { paramNut.c }))
    {
      str = b(paramNut.p) + str;
      b localb = new b(this);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.a(2131099785, new ab(this, paramNut));
      localb.b(2131099790, new ac(this));
      x.b(paramNut, str, localb).a(d(), paramNut.k);
      return;
    }
  }

  private String b(int paramInt)
  {
    Object localObject = com.nut.blehunter.provider.j.b().a(paramInt);
    try
    {
      if ((((r)localObject).b.b != 1) && (!TextUtils.isEmpty(((r)localObject).b.c)))
      {
        localObject = getString(2131100018, new Object[] { ((r)localObject).b.c });
        return localObject;
      }
    }
    catch (Exception localException)
    {
      return "";
    }
    return "";
  }

  public final void d_()
  {
    if (this.m)
      android.support.v4.b.j.a(this).a(new Intent("com.nutspace.action.stop.play.sound"));
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = getIntent().getIntExtra("type", 0);
    paramBundle = (Nut)getIntent().getParcelableExtra("nut");
    if ((i == 0) || (paramBundle == null))
    {
      finish();
      return;
    }
    this.m = false;
    switch (i)
    {
    default:
      return;
    case 1:
      str = getString(2131099846, new Object[] { paramBundle.c });
      str = b(paramBundle.p) + str;
      localb = new b(this);
      localb.a(2131099879);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.a(2131099790, new z(this));
      x.b(paramBundle, str, localb).a(d(), paramBundle.k);
      return;
    case 2:
      a(paramBundle, false);
      return;
    case 7:
      a(paramBundle, true);
      return;
    case 3:
      str = getString(2131099840, new Object[] { paramBundle.c });
      localb = new b(this);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.a(2131099790, new ad(this));
      x.b(paramBundle, str, localb).a(d(), paramBundle.k);
      return;
    case 4:
      str = getString(2131099834, new Object[] { paramBundle.c });
      str = b(paramBundle.p) + str;
      localb = new b(this);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.b(2131099790, new ae(this));
      x.b(paramBundle, str, localb).a(d(), paramBundle.k);
      return;
    case 6:
      str = getString(2131099813, new Object[] { paramBundle.c });
      str = b(paramBundle.p) + str;
      localb = new b(this);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.a(2131099790, new af(this));
      x.b(paramBundle, str, localb).a(d(), paramBundle.k);
      return;
    case 5:
      str = getString(2131099842, new Object[] { paramBundle.c });
      str = b(paramBundle.p) + str;
      localb = new b(this);
      localb.a(getLayoutInflater().inflate(2130903127, null));
      localb.a(this);
      localb.b(false);
      localb.a(true);
      localb.a(2131099794, new ag(this));
      localb.b(2131099790, new ah(this));
      x.b(paramBundle, str, localb).a(d(), paramBundle.k);
      return;
    case 8:
    }
    String str = getString(2131099843, new Object[] { paramBundle.c });
    b localb = new b(this);
    localb.a(getLayoutInflater().inflate(2130903127, null));
    localb.a(this);
    localb.b(false);
    localb.a(true);
    localb.b(2131099790, new ai(this));
    localb.a(2131099787, new aa(this, paramBundle));
    x.b(paramBundle, str, localb).a(d(), paramBundle.k);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.DialogContainerActivity
 * JD-Core Version:    0.6.2
 */