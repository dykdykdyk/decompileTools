package com.amap.api.maps2d;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.amap.api.mapcore2d.ad;
import com.amap.api.mapcore2d.ag;
import com.amap.api.mapcore2d.ba;
import com.amap.api.mapcore2d.cz;
import com.amap.api.maps2d.model.RuntimeRemoteException;

public class MapFragment extends Fragment
{
  private AMap a;
  private ag b;

  public static MapFragment newInstance()
  {
    return newInstance(new AMapOptions());
  }

  public static MapFragment newInstance(AMapOptions paramAMapOptions)
  {
    MapFragment localMapFragment = new MapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAMapOptions);
    localMapFragment.setArguments(localBundle);
    return localMapFragment;
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
        cz.a(localRemoteException, "MapFragment", "getMap");
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }

  protected ag getMapFragmentDelegate()
  {
    if (this.b == null)
      this.b = new ba();
    if (getActivity() != null)
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
    try
    {
      getMapFragmentDelegate().a(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      cz.a(paramBundle, "MapFragment", "onCreate");
    }
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
      cz.a(paramLayoutInflater, "MapFragment", "onCreateView");
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
        cz.a(localRemoteException, "MapFragment", "onDestroy");
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
        cz.a(localRemoteException, "MapFragment", "onDestroyView");
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
      cz.a(paramActivity, "MapFragment", "onInflate");
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
      cz.a(localRemoteException, "MapFragment", "onLowMemory");
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
      cz.a(localRemoteException, "MapFragment", "onPause");
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
      cz.a(localRemoteException, "MapFragment", "onResume");
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
        cz.a(localRemoteException, "MapFragment", "onSaveInstanceState");
    }
  }

  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.MapFragment
 * JD-Core Version:    0.6.2
 */