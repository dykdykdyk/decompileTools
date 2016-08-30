package com.amap.api.maps2d;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.mapcore2d.ad;
import com.amap.api.mapcore2d.ag;
import com.amap.api.mapcore2d.ba;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public class SupportMapFragment extends Fragment
{
  private AMap a;
  private ag b;

  public static SupportMapFragment newInstance()
  {
    return newInstance(new AMapOptions());
  }

  public static SupportMapFragment newInstance(AMapOptions paramAMapOptions)
  {
    SupportMapFragment localSupportMapFragment = new SupportMapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAMapOptions);
    localSupportMapFragment.setArguments(localBundle);
    return localSupportMapFragment;
  }

  public AMap getMap()
  {
    Object localObject = getMapFragmentDelegate();
    if (localObject == null);
    while (true)
    {
      return null;
      try
      {
        localObject = ((ag)localObject).a();
        if (localObject == null)
          continue;
        if (this.a == null)
          this.a = new AMap((ad)localObject);
        return this.a;
      }
      catch (RemoteException localRemoteException)
      {
        cz.a(localRemoteException, "SupportMapFragment", "getMap");
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }

  protected ag getMapFragmentDelegate()
  {
    if (this.b == null)
      this.b = new ba();
    this.b.a(getActivity());
    return this.b;
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null);
    try
    {
      localBundle = getArguments();
      paramLayoutInflater = getMapFragmentDelegate().a(paramLayoutInflater, paramViewGroup, localBundle);
      return paramLayoutInflater;
    }
    catch (RemoteException paramLayoutInflater)
    {
      cz.a(paramLayoutInflater, "SupportMapFragment", "onCreateView");
    }
    return null;
  }

  public void onDestroy()
  {
    try
    {
      getMapFragmentDelegate().e();
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        cz.a(localRemoteException, "SupportMapFragment", "onDestroy");
    }
  }

  public void onDestroyView()
  {
    try
    {
      getMapFragmentDelegate().d();
      super.onDestroyView();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        cz.a(localRemoteException, "SupportMapFragment", "onDestroyView");
    }
  }

  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    try
    {
      getMapFragmentDelegate().a(paramActivity, new AMapOptions(), paramBundle);
      return;
    }
    catch (RemoteException paramActivity)
    {
      cz.a(paramActivity, "SupportMapFragment", "onInflate");
    }
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    try
    {
      getMapFragmentDelegate().f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "SupportMapFragment", "onLowMemory");
    }
  }

  public void onPause()
  {
    super.onPause();
    try
    {
      getMapFragmentDelegate().c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "SupportMapFragment", "onPause");
    }
  }

  public void onResume()
  {
    super.onResume();
    try
    {
      getMapFragmentDelegate().b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      cz.a(localRemoteException, "SupportMapFragment", "onResume");
    }
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      getMapFragmentDelegate().b(paramBundle);
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        cz.a(localRemoteException, "SupportMapFragment", "onSaveInstanceState");
    }
  }

  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.SupportMapFragment
 * JD-Core Version:    0.6.2
 */