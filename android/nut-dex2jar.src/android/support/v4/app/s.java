package android.support.v4.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;

public class s extends Fragment
  implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener
{
  int a = 0;
  int b = 0;
  boolean c = true;
  public boolean d = true;
  int e = -1;
  public Dialog f;
  boolean g;
  boolean h;
  boolean i;

  public Dialog a(Bundle paramBundle)
  {
    return new Dialog(getActivity(), this.b);
  }

  public final void a()
  {
    if (this.h)
      return;
    this.h = true;
    this.i = false;
    if (this.f != null)
    {
      this.f.dismiss();
      this.f = null;
    }
    this.g = true;
    if (this.e >= 0)
    {
      getFragmentManager().a(this.e);
      this.e = -1;
      return;
    }
    an localan = getFragmentManager().a();
    localan.a(this);
    localan.b();
  }

  public void a(ac paramac, String paramString)
  {
    this.h = false;
    this.i = true;
    paramac = paramac.a();
    paramac.a(this, paramString);
    paramac.a();
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
    if (this.f != null)
      this.f.setCancelable(paramBoolean);
  }

  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    if (!this.d)
      return super.getLayoutInflater(paramBundle);
    this.f = a(paramBundle);
    if (this.f != null)
    {
      paramBundle = this.f;
      switch (this.a)
      {
      default:
      case 3:
      case 1:
      case 2:
      }
      while (true)
      {
        return (LayoutInflater)this.f.getContext().getSystemService("layout_inflater");
        paramBundle.getWindow().addFlags(24);
        paramBundle.requestWindowFeature(1);
      }
    }
    return (LayoutInflater)this.mHost.c.getSystemService("layout_inflater");
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (!this.d);
    do
    {
      do
      {
        return;
        View localView = getView();
        if (localView != null)
        {
          if (localView.getParent() != null)
            throw new IllegalStateException("DialogFragment can not be attached to a container view");
          this.f.setContentView(localView);
        }
        this.f.setOwnerActivity(getActivity());
        this.f.setCancelable(this.c);
        this.f.setOnCancelListener(this);
        this.f.setOnDismissListener(this);
      }
      while (paramBundle == null);
      paramBundle = paramBundle.getBundle("android:savedDialogState");
    }
    while (paramBundle == null);
    this.f.onRestoreInstanceState(paramBundle);
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if (!this.i)
      this.h = false;
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (this.mContainerId == 0);
    for (boolean bool = true; ; bool = false)
    {
      this.d = bool;
      if (paramBundle != null)
      {
        this.a = paramBundle.getInt("android:style", 0);
        this.b = paramBundle.getInt("android:theme", 0);
        this.c = paramBundle.getBoolean("android:cancelable", true);
        this.d = paramBundle.getBoolean("android:showsDialog", this.d);
        this.e = paramBundle.getInt("android:backStackId", -1);
      }
      return;
    }
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.f != null)
    {
      this.g = true;
      this.f.dismiss();
      this.f = null;
    }
  }

  public void onDetach()
  {
    super.onDetach();
    if ((!this.i) && (!this.h))
      this.h = true;
  }

  public void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.g)
      a();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.f != null)
    {
      Bundle localBundle = this.f.onSaveInstanceState();
      if (localBundle != null)
        paramBundle.putBundle("android:savedDialogState", localBundle);
    }
    if (this.a != 0)
      paramBundle.putInt("android:style", this.a);
    if (this.b != 0)
      paramBundle.putInt("android:theme", this.b);
    if (!this.c)
      paramBundle.putBoolean("android:cancelable", this.c);
    if (!this.d)
      paramBundle.putBoolean("android:showsDialog", this.d);
    if (this.e != -1)
      paramBundle.putInt("android:backStackId", this.e);
  }

  public void onStart()
  {
    super.onStart();
    if (this.f != null)
    {
      this.g = false;
      this.f.show();
    }
  }

  public void onStop()
  {
    super.onStop();
    if (this.f != null)
      this.f.hide();
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.s
 * JD-Core Version:    0.6.2
 */