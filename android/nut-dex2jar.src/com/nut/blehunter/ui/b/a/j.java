package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.s;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import com.nut.blehunter.d.n;
import com.nut.blehunter.d.p;
import com.nut.blehunter.ui.SilenceAddOrEditActivity;

public final class j extends a
{
  public String o;
  private int p = 20;
  private EditText q;

  public static j a(Context paramContext, String paramString, d paramd)
  {
    return a(paramContext, paramString, paramd, 20);
  }

  public static j a(Context paramContext, String paramString, d paramd, int paramInt)
  {
    j localj = new j();
    b localb1 = new b(paramContext);
    b localb2 = localb1.a(true).b(true);
    if ((paramd instanceof SilenceAddOrEditActivity));
    for (int i = 2131099875; ; i = 2131099976)
    {
      localb2.a(i).a(LayoutInflater.from(paramContext).inflate(2130903128, null)).a(2131099783, paramd).b(2131099781, null);
      localj.a(localb1);
      paramContext = new Bundle();
      paramContext.putString("name", paramString);
      paramContext.putInt("limit", paramInt);
      localj.setArguments(paramContext);
      return localj;
    }
  }

  protected final void a(View paramView)
  {
    this.q = ((EditText)paramView);
    this.o = getArguments().getString("name");
    if (!TextUtils.isEmpty(this.o))
      this.q.append(this.o);
    this.q.requestFocus();
    this.f.getWindow().setSoftInputMode(4);
  }

  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131558756:
    }
    while (true)
    {
      a();
      return;
      this.o = this.q.getText().toString().trim();
      if (TextUtils.isEmpty(this.o))
      {
        n.c(getActivity(), 2131099941);
        return;
      }
      if (p.a(this.o) > this.p)
      {
        paramView = getString(2131100106, new Object[] { this.p });
        n.a(getActivity(), 2130838104, paramView);
        return;
      }
      if (this.j.i != null)
        this.j.i.a(this, -1);
    }
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.p = getArguments().getInt("limit", 20);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.j
 * JD-Core Version:    0.6.2
 */