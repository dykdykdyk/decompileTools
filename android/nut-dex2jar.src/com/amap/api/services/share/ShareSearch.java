package com.amap.api.services.share;

import android.content.Context;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.core.LatLonPoint;
import com.amap.api.services.core.LatLonSharePoint;
import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.ac;

public class ShareSearch
{
  public static final int BusComfortable = 4;
  public static final int BusDefault = 0;
  public static final int BusLeaseChange = 2;
  public static final int BusLeaseWalk = 3;
  public static final int BusNoSubway = 5;
  public static final int BusSaveMoney = 1;
  public static final int DrivingAvoidCongestion = 4;
  public static final int DrivingDefault = 0;
  public static final int DrivingNoHighWay = 3;
  public static final int DrivingNoHighWayAvoidCongestion = 6;
  public static final int DrivingNoHighWaySaveMoney = 5;
  public static final int DrivingNoHighWaySaveMoneyAvoidCongestion = 8;
  public static final int DrivingSaveMoney = 1;
  public static final int DrivingSaveMoneyAvoidCongestion = 7;
  public static final int DrivingShortDistance = 2;
  public static final int NaviAvoidCongestion = 4;
  public static final int NaviDefault = 0;
  public static final int NaviNoHighWay = 3;
  public static final int NaviNoHighWayAvoidCongestion = 6;
  public static final int NaviNoHighWaySaveMoney = 5;
  public static final int NaviNoHighWaySaveMoneyAvoidCongestion = 8;
  public static final int NaviSaveMoney = 1;
  public static final int NaviSaveMoneyAvoidCongestion = 7;
  public static final int NaviShortDistance = 2;
  private static String b = "http://wb.amap.com/?r=%f,%f,%s,%f,%f,%s,%d,%d,%d,%s,%s,%s&sourceapplication=openapi/0";
  private static String c = "http://wb.amap.com/?q=%f,%f,%s&sourceapplication=openapi/0";
  private static String d = "http://wb.amap.com/?n=%f,%f,%f,%f,%d&sourceapplication=openapi/0";
  private static String e = "http://wb.amap.com/?p=%s,%f,%f,%s,%s&sourceapplication=openapi/0";
  private static final String f = String.valueOf("");
  private static final String g = String.valueOf("|");
  private Context a;
  private ShareSearch.OnShareSearchListener h;

  public ShareSearch(Context paramContext)
  {
    this.a = paramContext;
  }

  public String searchBusRouteShareUrl(ShareSearch.ShareBusRouteQuery paramShareBusRouteQuery)
    throws AMapException
  {
    int i = paramShareBusRouteQuery.getBusMode();
    Object localObject = paramShareBusRouteQuery.getShareFromAndTo();
    if ((((ShareSearch.ShareFromAndTo)localObject).getFrom() == null) || (((ShareSearch.ShareFromAndTo)localObject).getTo() == null))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    paramShareBusRouteQuery = ((ShareSearch.ShareFromAndTo)localObject).getFrom();
    LatLonPoint localLatLonPoint = ((ShareSearch.ShareFromAndTo)localObject).getTo();
    String str = ((ShareSearch.ShareFromAndTo)localObject).getFromName();
    localObject = ((ShareSearch.ShareFromAndTo)localObject).getToName();
    paramShareBusRouteQuery = String.format(b, new Object[] { Double.valueOf(paramShareBusRouteQuery.getLatitude()), Double.valueOf(paramShareBusRouteQuery.getLongitude()), str, Double.valueOf(localLatLonPoint.getLatitude()), Double.valueOf(localLatLonPoint.getLongitude()), localObject, Integer.valueOf(i), Integer.valueOf(1), Integer.valueOf(0), f, f, f });
    return (String)new ac(this.a, paramShareBusRouteQuery).a();
  }

  public void searchBusRouteShareUrlAsyn(ShareSearch.ShareBusRouteQuery paramShareBusRouteQuery)
  {
    new ShareSearch.2(this, paramShareBusRouteQuery).start();
  }

  public String searchDrivingRouteShareUrl(ShareSearch.ShareDrivingRouteQuery paramShareDrivingRouteQuery)
    throws AMapException
  {
    int i = paramShareDrivingRouteQuery.getDrivingMode();
    Object localObject = paramShareDrivingRouteQuery.getShareFromAndTo();
    if ((((ShareSearch.ShareFromAndTo)localObject).getFrom() == null) || (((ShareSearch.ShareFromAndTo)localObject).getTo() == null))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    paramShareDrivingRouteQuery = ((ShareSearch.ShareFromAndTo)localObject).getFrom();
    LatLonPoint localLatLonPoint = ((ShareSearch.ShareFromAndTo)localObject).getTo();
    String str = ((ShareSearch.ShareFromAndTo)localObject).getFromName();
    localObject = ((ShareSearch.ShareFromAndTo)localObject).getToName();
    paramShareDrivingRouteQuery = String.format(b, new Object[] { Double.valueOf(paramShareDrivingRouteQuery.getLatitude()), Double.valueOf(paramShareDrivingRouteQuery.getLongitude()), str, Double.valueOf(localLatLonPoint.getLatitude()), Double.valueOf(localLatLonPoint.getLongitude()), localObject, Integer.valueOf(i), Integer.valueOf(0), Integer.valueOf(0), f, f, f });
    return (String)new ac(this.a, paramShareDrivingRouteQuery).a();
  }

  public void searchDrivingRouteShareUrlAsyn(ShareSearch.ShareDrivingRouteQuery paramShareDrivingRouteQuery)
  {
    new ShareSearch.4(this, paramShareDrivingRouteQuery).start();
  }

  public String searchLocationShareUrl(LatLonSharePoint paramLatLonSharePoint)
    throws AMapException
  {
    paramLatLonSharePoint = String.format(c, new Object[] { Double.valueOf(paramLatLonSharePoint.getLatitude()), Double.valueOf(paramLatLonSharePoint.getLongitude()), paramLatLonSharePoint.getSharePointName() });
    return (String)new ac(this.a, paramLatLonSharePoint).a();
  }

  public void searchLocationShareUrlAsyn(LatLonSharePoint paramLatLonSharePoint)
  {
    new ShareSearch.6(this, paramLatLonSharePoint).start();
  }

  public String searchNaviShareUrl(ShareSearch.ShareNaviQuery paramShareNaviQuery)
    throws AMapException
  {
    ShareSearch.ShareFromAndTo localShareFromAndTo = paramShareNaviQuery.getFromAndTo();
    if (localShareFromAndTo.getTo() == null)
      throw new AMapException("无效的参数 - IllegalArgumentException");
    LatLonPoint localLatLonPoint1 = localShareFromAndTo.getFrom();
    LatLonPoint localLatLonPoint2 = localShareFromAndTo.getTo();
    int i = paramShareNaviQuery.getNaviMode();
    if (localShareFromAndTo.getFrom() == null);
    for (paramShareNaviQuery = String.format(d, new Object[] { null, null, Double.valueOf(localLatLonPoint2.getLatitude()), Double.valueOf(localLatLonPoint2.getLongitude()), Integer.valueOf(i) }); ; paramShareNaviQuery = String.format(d, new Object[] { Double.valueOf(localLatLonPoint1.getLatitude()), Double.valueOf(localLatLonPoint1.getLongitude()), Double.valueOf(localLatLonPoint2.getLatitude()), Double.valueOf(localLatLonPoint2.getLongitude()), Integer.valueOf(i) }))
      return (String)new ac(this.a, paramShareNaviQuery).a();
  }

  public void searchNaviShareUrlAsyn(ShareSearch.ShareNaviQuery paramShareNaviQuery)
  {
    new ShareSearch.5(this, paramShareNaviQuery).start();
  }

  public String searchPoiShareUrl(PoiItem paramPoiItem)
    throws AMapException
  {
    if ((paramPoiItem == null) || (paramPoiItem.getLatLonPoint() == null))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    LatLonPoint localLatLonPoint = paramPoiItem.getLatLonPoint();
    paramPoiItem = String.format(e, new Object[] { paramPoiItem.getPoiId(), Double.valueOf(localLatLonPoint.getLatitude()), Double.valueOf(localLatLonPoint.getLongitude()), paramPoiItem.getTitle(), paramPoiItem.getSnippet() });
    return (String)new ac(this.a, paramPoiItem).a();
  }

  public void searchPoiShareUrlAsyn(PoiItem paramPoiItem)
  {
    new ShareSearch.1(this, paramPoiItem).start();
  }

  public String searchWalkRouteShareUrl(ShareSearch.ShareWalkRouteQuery paramShareWalkRouteQuery)
    throws AMapException
  {
    int i = paramShareWalkRouteQuery.getWalkMode();
    Object localObject = paramShareWalkRouteQuery.getShareFromAndTo();
    if ((((ShareSearch.ShareFromAndTo)localObject).getFrom() == null) || (((ShareSearch.ShareFromAndTo)localObject).getTo() == null))
      throw new AMapException("无效的参数 - IllegalArgumentException");
    paramShareWalkRouteQuery = ((ShareSearch.ShareFromAndTo)localObject).getFrom();
    LatLonPoint localLatLonPoint = ((ShareSearch.ShareFromAndTo)localObject).getTo();
    String str = ((ShareSearch.ShareFromAndTo)localObject).getFromName();
    localObject = ((ShareSearch.ShareFromAndTo)localObject).getToName();
    paramShareWalkRouteQuery = String.format(b, new Object[] { Double.valueOf(paramShareWalkRouteQuery.getLatitude()), Double.valueOf(paramShareWalkRouteQuery.getLongitude()), str, Double.valueOf(localLatLonPoint.getLatitude()), Double.valueOf(localLatLonPoint.getLongitude()), localObject, Integer.valueOf(i), Integer.valueOf(2), Integer.valueOf(0), f, f, f });
    return (String)new ac(this.a, paramShareWalkRouteQuery).a();
  }

  public void searchWalkRouteShareUrlAsyn(ShareSearch.ShareWalkRouteQuery paramShareWalkRouteQuery)
  {
    new ShareSearch.3(this, paramShareWalkRouteQuery).start();
  }

  public void setOnShareSearchListener(ShareSearch.OnShareSearchListener paramOnShareSearchListener)
  {
    this.h = paramOnShareSearchListener;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.share.ShareSearch
 * JD-Core Version:    0.6.2
 */