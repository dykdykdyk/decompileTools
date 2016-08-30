package com.amap.api.maps2d.overlay;

import com.amap.api.maps2d.AMap;
import com.amap.api.maps2d.CameraUpdateFactory;
import com.amap.api.maps2d.model.BitmapDescriptor;
import com.amap.api.maps2d.model.LatLng;
import com.amap.api.maps2d.model.LatLngBounds;
import com.amap.api.maps2d.model.LatLngBounds.Builder;
import com.amap.api.maps2d.model.Marker;
import com.amap.api.maps2d.model.MarkerOptions;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.PoiItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PoiOverlay
{
  private List<PoiItem> a;
  private AMap b;
  private ArrayList<Marker> c = new ArrayList();

  public PoiOverlay(AMap paramAMap, List<PoiItem> paramList)
  {
    this.b = paramAMap;
    this.a = paramList;
  }

  private LatLngBounds a()
  {
    LatLngBounds.Builder localBuilder = LatLngBounds.builder();
    int i = 0;
    while (i < this.a.size())
    {
      localBuilder.include(new LatLng(((PoiItem)this.a.get(i)).getLatLonPoint().getLatitude(), ((PoiItem)this.a.get(i)).getLatLonPoint().getLongitude()));
      i += 1;
    }
    return localBuilder.build();
  }

  private MarkerOptions a(int paramInt)
  {
    return new MarkerOptions().position(new LatLng(((PoiItem)this.a.get(paramInt)).getLatLonPoint().getLatitude(), ((PoiItem)this.a.get(paramInt)).getLatLonPoint().getLongitude())).title(getTitle(paramInt)).snippet(getSnippet(paramInt)).icon(getBitmapDescriptor(paramInt));
  }

  public void addToMap()
  {
    int i = 0;
    while (i < this.a.size())
    {
      Marker localMarker = this.b.addMarker(a(i));
      localMarker.setObject(Integer.valueOf(i));
      this.c.add(localMarker);
      i += 1;
    }
  }

  protected BitmapDescriptor getBitmapDescriptor(int paramInt)
  {
    return null;
  }

  public int getPoiIndex(Marker paramMarker)
  {
    int i = 0;
    while (i < this.c.size())
    {
      if (((Marker)this.c.get(i)).equals(paramMarker))
        return i;
      i += 1;
    }
    return -1;
  }

  public PoiItem getPoiItem(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.a.size()))
      return null;
    return (PoiItem)this.a.get(paramInt);
  }

  protected String getSnippet(int paramInt)
  {
    return ((PoiItem)this.a.get(paramInt)).getSnippet();
  }

  protected String getTitle(int paramInt)
  {
    return ((PoiItem)this.a.get(paramInt)).getTitle();
  }

  public void removeFromMap()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((Marker)localIterator.next()).remove();
  }

  public void zoomToSpan()
  {
    if ((this.a == null) || (this.a.size() <= 0) || (this.b == null))
      return;
    LatLngBounds localLatLngBounds = a();
    this.b.moveCamera(CameraUpdateFactory.newLatLngBounds(localLatLngBounds, 5));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.maps2d.overlay.PoiOverlay
 * JD-Core Version:    0.6.2
 */