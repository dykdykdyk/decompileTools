package com.nut.blehunter.ui.b.a;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;

public final class t extends DialogFragment
  implements View.OnClickListener
{
  private u a;

  public static t a()
  {
    t localt = new t();
    localt.setStyle(2, 2131296460);
    return localt;
  }

  public final void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    this.a = ((u)paramActivity);
  }

  public final void onClick(View paramView)
  {
    dismissAllowingStateLoss();
    int i = 0;
    switch (paramView.getId())
    {
    default:
    case 2131558762:
    case 2131558772:
    case 2131558773:
    case 2131558774:
    }
    while (true)
    {
      if (i != 0)
        this.a.d(i);
      return;
      i = 1;
      continue;
      i = 2;
      continue;
      i = 3;
      continue;
      i = 4;
    }
  }

  public final Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = super.onCreateDialog(paramBundle);
    paramBundle.requestWindowFeature(1);
    paramBundle.setCanceledOnTouchOutside(true);
    Window localWindow = paramBundle.getWindow();
    localWindow.setWindowAnimations(2131296458);
    localWindow.getAttributes().gravity = 80;
    return paramBundle;
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = LayoutInflater.from(getActivity()).inflate(2130903132, null);
    paramLayoutInflater.findViewById(2131558762).setOnClickListener(this);
    paramLayoutInflater.findViewById(2131558772).setOnClickListener(this);
    paramLayoutInflater.findViewById(2131558773).setOnClickListener(this);
    paramLayoutInflater.findViewById(2131558774).setOnClickListener(this);
    return paramLayoutInflater;
  }

  public final void onStart()
  {
    super.onStart();
    if (getDialog() == null)
      return;
    getDialog().getWindow().setLayout(-1, -2);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.ui.b.a.t
 * JD-Core Version:    0.6.2
 */