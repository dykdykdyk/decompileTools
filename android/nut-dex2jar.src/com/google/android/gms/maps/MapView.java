package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.maps.a.m;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class MapView extends FrameLayout
{
  public final t a;
  private c b;

  public MapView(Context paramContext)
  {
    super(paramContext);
    this.a = new t(this, paramContext, null);
    setClickable(true);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = new t(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    setClickable(true);
  }

  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = new t(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    setClickable(true);
  }

  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    this.a = new t(this, paramContext, paramGoogleMapOptions);
    setClickable(true);
  }

  @Deprecated
  public final c getMap()
  {
    if (this.b != null)
      return this.b;
    this.a.a();
    if (this.a.a == null)
      return null;
    try
    {
      this.b = new c(((r)this.a.a).a.a());
      return this.b;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.MapView
 * JD-Core Version:    0.6.2
 */