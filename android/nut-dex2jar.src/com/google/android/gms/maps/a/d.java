package com.google.android.gms.maps.a;

import android.location.Location;
import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.a.a;
import com.google.android.gms.maps.model.a.j;
import com.google.android.gms.maps.model.a.m;
import com.google.android.gms.maps.model.a.s;
import com.google.android.gms.maps.model.a.v;

public abstract interface d extends IInterface
{
  public abstract CameraPosition a()
    throws RemoteException;

  public abstract a a(PolylineOptions paramPolylineOptions)
    throws RemoteException;

  public abstract com.google.android.gms.maps.model.a.g a(CircleOptions paramCircleOptions)
    throws RemoteException;

  public abstract j a(GroundOverlayOptions paramGroundOverlayOptions)
    throws RemoteException;

  public abstract com.google.android.gms.maps.model.a.p a(MarkerOptions paramMarkerOptions)
    throws RemoteException;

  public abstract s a(PolygonOptions paramPolygonOptions)
    throws RemoteException;

  public abstract v a(TileOverlayOptions paramTileOverlayOptions)
    throws RemoteException;

  public abstract void a(int paramInt)
    throws RemoteException;

  public abstract void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws RemoteException;

  public abstract void a(Bundle paramBundle)
    throws RemoteException;

  public abstract void a(h paramh)
    throws RemoteException;

  public abstract void a(h paramh, int paramInt, an paraman)
    throws RemoteException;

  public abstract void a(h paramh, an paraman)
    throws RemoteException;

  public abstract void a(aj paramaj, h paramh)
    throws RemoteException;

  public abstract void a(at paramat)
    throws RemoteException;

  public abstract void a(aw paramaw)
    throws RemoteException;

  public abstract void a(az paramaz)
    throws RemoteException;

  public abstract void a(bc parambc)
    throws RemoteException;

  public abstract void a(bf parambf)
    throws RemoteException;

  public abstract void a(bi parambi)
    throws RemoteException;

  public abstract void a(bl parambl)
    throws RemoteException;

  public abstract void a(br parambr)
    throws RemoteException;

  public abstract void a(bu parambu)
    throws RemoteException;

  public abstract void a(bx parambx)
    throws RemoteException;

  public abstract void a(ca paramca)
    throws RemoteException;

  public abstract void a(cd paramcd)
    throws RemoteException;

  public abstract void a(cg paramcg)
    throws RemoteException;

  public abstract void a(cj paramcj)
    throws RemoteException;

  public abstract void a(cm paramcm)
    throws RemoteException;

  public abstract void a(cp paramcp)
    throws RemoteException;

  public abstract void a(cs paramcs)
    throws RemoteException;

  public abstract void a(cv paramcv)
    throws RemoteException;

  public abstract void a(g paramg)
    throws RemoteException;

  public abstract void a(String paramString)
    throws RemoteException;

  public abstract void a(boolean paramBoolean)
    throws RemoteException;

  public abstract float b()
    throws RemoteException;

  public abstract void b(Bundle paramBundle)
    throws RemoteException;

  public abstract void b(h paramh)
    throws RemoteException;

  public abstract boolean b(boolean paramBoolean)
    throws RemoteException;

  public abstract float c()
    throws RemoteException;

  public abstract void c(Bundle paramBundle)
    throws RemoteException;

  public abstract void c(boolean paramBoolean)
    throws RemoteException;

  public abstract void d()
    throws RemoteException;

  public abstract void d(boolean paramBoolean)
    throws RemoteException;

  public abstract void e()
    throws RemoteException;

  public abstract int f()
    throws RemoteException;

  public abstract boolean g()
    throws RemoteException;

  public abstract boolean h()
    throws RemoteException;

  public abstract boolean i()
    throws RemoteException;

  public abstract Location j()
    throws RemoteException;

  public abstract ab k()
    throws RemoteException;

  public abstract p l()
    throws RemoteException;

  public abstract boolean m()
    throws RemoteException;

  public abstract m n()
    throws RemoteException;

  public abstract void o()
    throws RemoteException;

  public abstract void p()
    throws RemoteException;

  public abstract void q()
    throws RemoteException;

  public abstract void r()
    throws RemoteException;

  public abstract boolean s()
    throws RemoteException;

  public abstract void t()
    throws RemoteException;
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.google.android.gms.maps.a.d
 * JD-Core Version:    0.6.2
 */