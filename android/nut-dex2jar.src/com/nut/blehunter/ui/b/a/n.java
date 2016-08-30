package com.nut.blehunter.ui.b.a;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout.LayoutParams;
import b.a.a;
import com.nut.blehunter.entity.CustomMarker;
import java.util.ArrayList;
import java.util.List;

public final class n extends DialogFragment
{
  String a;
  private CustomMarker b;
  private List<ResolveInfo> c = new ArrayList();

  public static n a(Bundle paramBundle)
  {
    n localn = new n();
    localn.setStyle(2, 2131296460);
    localn.setArguments(paramBundle);
    return localn;
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
    paramViewGroup = getActivity();
    if (paramViewGroup == null)
      return null;
    paramLayoutInflater = LayoutInflater.from(paramViewGroup).inflate(2130903130, null);
    paramBundle = getArguments();
    this.b = ((CustomMarker)paramBundle.getParcelable("marker"));
    this.a = paramBundle.getString("formatQuery");
    this.c = paramBundle.getParcelableArrayList("resolveInfos");
    a.a("query=%s(%f,%f) title=%s", new Object[] { this.a, Double.valueOf(this.b.g), Double.valueOf(this.b.h), this.b.c });
    paramBundle = (RecyclerView)paramLayoutInflater.findViewById(2131558607);
    o localo = new o(this, paramViewGroup);
    paramBundle.setLayoutManager(new LinearLayoutManager(paramViewGroup));
    paramBundle.setAdapter(localo);
    paramViewGroup = new RelativeLayout.LayoutParams(-1, -2);
    paramViewGroup.height = com.nut.blehunter.d.o.a(getActivity(), this.c.size() * 65);
    paramBundle.setLayoutParams(paramViewGroup);
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
 * Qualified Name:     com.nut.blehunter.ui.b.a.n
 * JD-Core Version:    0.6.2
 */