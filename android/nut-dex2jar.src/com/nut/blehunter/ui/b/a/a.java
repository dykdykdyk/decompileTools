package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.ac;
import android.support.v4.app.an;
import android.support.v4.app.s;
import android.support.v4.app.v;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;

public class a extends s
  implements DialogInterface.OnDismissListener, View.OnClickListener
{
  protected b j;
  protected TextView k;
  protected TextView l;
  protected Button m;
  protected Button n;

  public final Dialog a(Bundle paramBundle)
  {
    paramBundle = super.a(paramBundle);
    paramBundle.requestWindowFeature(1);
    if (this.j != null)
      paramBundle.setCanceledOnTouchOutside(this.j.h);
    paramBundle.getWindow().setBackgroundDrawable(new ColorDrawable(getResources().getColor(17170445)));
    paramBundle.setOnDismissListener(this);
    return paramBundle;
  }

  public final void a(v paramv, String paramString)
  {
    if ((paramv != null) && (!paramv.isFinishing()))
    {
      paramv = paramv.d().a();
      paramv.a(this, paramString);
      paramv.b();
    }
  }

  protected void a(View paramView)
  {
  }

  protected void a(Button paramButton)
  {
  }

  public final void a(b paramb)
  {
    this.j = paramb;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    if (this.f == null)
      this.d = false;
    super.onActivityCreated(paramBundle);
  }

  public void onClick(View paramView)
  {
    a();
    if (this.j.k != null)
      this.j.k.d_();
    switch (paramView.getId())
    {
    default:
    case 2131558756:
    case 2131558755:
    }
    do
    {
      do
        return;
      while (this.j.i == null);
      this.j.i.a(this, -1);
      return;
    }
    while (this.j.j == null);
    this.j.j.a(this, -2);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903126, paramViewGroup, false);
    this.k = ((TextView)paramLayoutInflater.findViewById(2131558514));
    this.l = ((TextView)paramLayoutInflater.findViewById(2131558754));
    paramViewGroup = (FrameLayout)paramLayoutInflater.findViewById(2131558753);
    this.m = ((Button)paramLayoutInflater.findViewById(2131558756));
    this.n = ((Button)paramLayoutInflater.findViewById(2131558755));
    if (this.j == null)
      return paramLayoutInflater;
    if (TextUtils.isEmpty(this.j.b))
    {
      this.k.setVisibility(8);
      if (this.j.f == null)
        break label241;
      paramViewGroup.removeAllViews();
      paramBundle = this.j.f.getParent();
      if (paramBundle != null)
        ((ViewGroup)paramBundle).removeView(this.j.f);
      paramViewGroup.addView(this.j.f);
      a(this.j.f);
      label167: if (!TextUtils.isEmpty(this.j.d))
        break label271;
      this.m.setVisibility(8);
      label189: if (!TextUtils.isEmpty(this.j.e))
        break label304;
      this.n.setVisibility(8);
    }
    while (true)
    {
      a(this.j.g);
      return paramLayoutInflater;
      this.k.setText(this.j.b);
      break;
      label241: if (TextUtils.isEmpty(this.j.c))
        break label167;
      this.l.setText(this.j.c);
      break label167;
      label271: this.m.setText(this.j.d);
      this.m.setOnClickListener(this);
      a(this.m);
      break label189;
      label304: this.n.setText(this.j.e);
      this.n.setOnClickListener(this);
    }
  }

  public void onDestroyView()
  {
    if ((this.f != null) && (getRetainInstance()))
      this.f.setDismissMessage(null);
    super.onDestroyView();
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if ((this.j != null) && (this.j.k != null))
      this.j.k.d_();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.a
 * JD-Core Version:    0.6.2
 */