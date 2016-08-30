package com.amap.api.services.core;

import android.text.TextUtils;
import com.amap.api.services.busline.BusLineItem;
import com.amap.api.services.busline.BusStationItem;
import com.amap.api.services.district.DistrictItem;
import com.amap.api.services.geocoder.AoiItem;
import com.amap.api.services.geocoder.BusinessArea;
import com.amap.api.services.geocoder.GeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeAddress;
import com.amap.api.services.geocoder.RegeocodeRoad;
import com.amap.api.services.geocoder.StreetNumber;
import com.amap.api.services.help.Tip;
import com.amap.api.services.nearby.NearbyInfo;
import com.amap.api.services.poisearch.IndoorData;
import com.amap.api.services.poisearch.SubPoiItem;
import com.amap.api.services.road.Crossroad;
import com.amap.api.services.route.BusPath;
import com.amap.api.services.route.BusRouteResult;
import com.amap.api.services.route.BusStep;
import com.amap.api.services.route.District;
import com.amap.api.services.route.Doorway;
import com.amap.api.services.route.DrivePath;
import com.amap.api.services.route.DriveRouteResult;
import com.amap.api.services.route.DriveStep;
import com.amap.api.services.route.RouteBusLineItem;
import com.amap.api.services.route.RouteBusWalkItem;
import com.amap.api.services.route.RouteSearchCity;
import com.amap.api.services.route.WalkPath;
import com.amap.api.services.route.WalkRouteResult;
import com.amap.api.services.route.WalkStep;
import com.amap.api.services.weather.LocalDayWeatherForecast;
import com.amap.api.services.weather.LocalWeatherForecast;
import com.amap.api.services.weather.LocalWeatherLive;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class n
{
  public static BusRouteResult a(String paramString)
    throws AMapException
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      if (!((JSONObject)localObject).has("route"))
        return null;
      paramString = new BusRouteResult();
      localObject = ((JSONObject)localObject).optJSONObject("route");
      if (localObject != null)
      {
        paramString.setStartPos(b((JSONObject)localObject, "origin"));
        paramString.setTargetPos(b((JSONObject)localObject, "destination"));
        paramString.setTaxiCost(k(a((JSONObject)localObject, "taxi_cost")));
        if (((JSONObject)localObject).has("transits"))
        {
          localObject = ((JSONObject)localObject).optJSONArray("transits");
          if (localObject != null)
          {
            paramString.setPaths(a((JSONArray)localObject));
            return paramString;
          }
        }
      }
    }
    catch (JSONException paramString)
    {
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    return paramString;
  }

  public static String a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (paramJSONObject == null);
    while ((!paramJSONObject.has(paramString)) || (paramJSONObject.getString(paramString).equals("[]")))
      return "";
    return paramJSONObject.optString(paramString).trim();
  }

  public static ArrayList<SuggestionCity> a(JSONObject paramJSONObject)
    throws JSONException, NumberFormatException
  {
    ArrayList localArrayList = new ArrayList();
    if (!paramJSONObject.has("cities"))
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("cities");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(new SuggestionCity(a(localJSONObject, "name"), a(localJSONObject, "citycode"), a(localJSONObject, "adcode"), j(a(localJSONObject, "num"))));
      i += 1;
    }
    return localArrayList;
  }

  public static ArrayList<NearbyInfo> a(JSONObject paramJSONObject, boolean paramBoolean)
    throws JSONException
  {
    paramJSONObject = paramJSONObject.getJSONArray("datas");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
      return new ArrayList();
    ArrayList localArrayList = new ArrayList();
    int j = paramJSONObject.length();
    int i = 0;
    if (i < j)
    {
      Object localObject1 = paramJSONObject.getJSONObject(i);
      String str = a((JSONObject)localObject1, "userid");
      Object localObject2 = a((JSONObject)localObject1, "location");
      double d3 = 0.0D;
      double d4 = 0.0D;
      double d2 = d4;
      double d1 = d3;
      if (localObject2 != null)
      {
        localObject2 = ((String)localObject2).split(",");
        d2 = d4;
        d1 = d3;
        if (localObject2.length == 2)
        {
          d1 = l(localObject2[0]);
          d2 = l(localObject2[1]);
        }
      }
      localObject2 = a((JSONObject)localObject1, "distance");
      long l = m(a((JSONObject)localObject1, "updatetime"));
      int k = j((String)localObject2);
      localObject1 = new LatLonPoint(d2, d1);
      localObject2 = new NearbyInfo();
      ((NearbyInfo)localObject2).setUserID(str);
      ((NearbyInfo)localObject2).setTimeStamp(l);
      ((NearbyInfo)localObject2).setPoint((LatLonPoint)localObject1);
      if (paramBoolean)
        ((NearbyInfo)localObject2).setDrivingDistance(k);
      while (true)
      {
        localArrayList.add(localObject2);
        i += 1;
        break;
        ((NearbyInfo)localObject2).setDistance(k);
      }
    }
    return localArrayList;
  }

  public static List<BusPath> a(JSONArray paramJSONArray)
    throws JSONException
  {
    ArrayList localArrayList1 = new ArrayList();
    if (paramJSONArray == null)
      return localArrayList1;
    int i = 0;
    while (i < paramJSONArray.length())
    {
      BusPath localBusPath = new BusPath();
      Object localObject1 = paramJSONArray.optJSONObject(i);
      if (localObject1 != null)
      {
        localBusPath.setCost(k(a((JSONObject)localObject1, "cost")));
        localBusPath.setDuration(m(a((JSONObject)localObject1, "duration")));
        localBusPath.setNightBus(n(a((JSONObject)localObject1, "nightflag")));
        localBusPath.setWalkDistance(k(a((JSONObject)localObject1, "walking_distance")));
        localObject1 = ((JSONObject)localObject1).optJSONArray("segments");
        if (localObject1 != null)
        {
          ArrayList localArrayList2 = new ArrayList();
          int j = 0;
          float f2 = 0.0F;
          float f5;
          for (float f3 = 0.0F; j < ((JSONArray)localObject1).length(); f3 = f5)
          {
            Object localObject2 = ((JSONArray)localObject1).optJSONObject(j);
            float f4 = f2;
            f5 = f3;
            if (localObject2 != null)
            {
              localObject2 = o((JSONObject)localObject2);
              f4 = f2;
              f5 = f3;
              if (localObject2 != null)
              {
                localArrayList2.add(localObject2);
                float f1 = f2;
                if (((BusStep)localObject2).getWalk() != null)
                  f1 = f2 + ((BusStep)localObject2).getWalk().getDistance();
                f4 = f1;
                f5 = f3;
                if (((BusStep)localObject2).getBusLine() != null)
                {
                  f5 = f3 + ((BusStep)localObject2).getBusLine().getDistance();
                  f4 = f1;
                }
              }
            }
            j += 1;
            f2 = f4;
          }
          localBusPath.setSteps(localArrayList2);
          localBusPath.setBusDistance(f3);
          localBusPath.setWalkDistance(f2);
          localArrayList1.add(localBusPath);
        }
      }
      i += 1;
    }
    return localArrayList1;
  }

  public static void a(DriveStep paramDriveStep, JSONObject paramJSONObject)
    throws AMapException
  {
    while (true)
    {
      try
      {
        ArrayList localArrayList = new ArrayList();
        paramJSONObject = paramJSONObject.optJSONArray("cities");
        if (paramJSONObject == null)
        {
          return;
          if (i < paramJSONObject.length())
          {
            RouteSearchCity localRouteSearchCity = new RouteSearchCity();
            JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
            if (localJSONObject == null)
              break label136;
            localRouteSearchCity.setSearchCityName(a(localJSONObject, "name"));
            localRouteSearchCity.setSearchCitycode(a(localJSONObject, "citycode"));
            localRouteSearchCity.setSearchCityhAdCode(a(localJSONObject, "adcode"));
            a(localRouteSearchCity, localJSONObject);
            localArrayList.add(localRouteSearchCity);
            break label136;
          }
          paramDriveStep.setRouteSearchCityList(localArrayList);
          return;
        }
      }
      catch (JSONException paramDriveStep)
      {
        i.a(paramDriveStep, "JSONHelper", "parseCrossCity");
        throw new AMapException("协议解析错误 - ProtocolException");
      }
      int i = 0;
      continue;
      label136: i += 1;
    }
  }

  public static void a(RouteSearchCity paramRouteSearchCity, JSONObject paramJSONObject)
    throws AMapException
  {
    if (!paramJSONObject.has("districts"))
      return;
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      paramJSONObject = paramJSONObject.optJSONArray("districts");
      if (paramJSONObject == null)
      {
        paramRouteSearchCity.setDistricts(localArrayList);
        return;
      }
    }
    catch (JSONException paramRouteSearchCity)
    {
      i.a(paramRouteSearchCity, "JSONHelper", "parseCrossDistricts");
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    int i = 0;
    while (true)
    {
      if (i < paramJSONObject.length())
      {
        District localDistrict = new District();
        JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
        if (localJSONObject != null)
        {
          localDistrict.setDistrictName(a(localJSONObject, "name"));
          localDistrict.setDistrictAdcode(a(localJSONObject, "adcode"));
          localArrayList.add(localDistrict);
        }
      }
      else
      {
        paramRouteSearchCity.setDistricts(localArrayList);
        return;
      }
      i += 1;
    }
  }

  public static void a(JSONArray paramJSONArray, RegeocodeAddress paramRegeocodeAddress)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      Crossroad localCrossroad = new Crossroad();
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
      if (localJSONObject != null)
      {
        localCrossroad.setId(a(localJSONObject, "id"));
        localCrossroad.setDirection(a(localJSONObject, "direction"));
        localCrossroad.setDistance(k(a(localJSONObject, "distance")));
        localCrossroad.setCenterPoint(b(localJSONObject, "location"));
        localCrossroad.setFirstRoadId(a(localJSONObject, "first_id"));
        localCrossroad.setFirstRoadName(a(localJSONObject, "first_name"));
        localCrossroad.setSecondRoadId(a(localJSONObject, "second_id"));
        localCrossroad.setSecondRoadName(a(localJSONObject, "second_name"));
        localArrayList.add(localCrossroad);
      }
      i += 1;
    }
    paramRegeocodeAddress.setCrossroads(localArrayList);
  }

  public static void a(JSONArray paramJSONArray, ArrayList<DistrictItem> paramArrayList, DistrictItem paramDistrictItem)
    throws JSONException
  {
    if (paramJSONArray == null);
    do
    {
      return;
      int i = 0;
      while (i < paramJSONArray.length())
      {
        JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
        if (localJSONObject != null)
          paramArrayList.add(k(localJSONObject));
        i += 1;
      }
    }
    while (paramDistrictItem == null);
    paramDistrictItem.setSubDistrict(paramArrayList);
  }

  public static void a(JSONObject paramJSONObject, RegeocodeAddress paramRegeocodeAddress)
    throws JSONException
  {
    paramRegeocodeAddress.setProvince(a(paramJSONObject, "province"));
    paramRegeocodeAddress.setCity(a(paramJSONObject, "city"));
    paramRegeocodeAddress.setCityCode(a(paramJSONObject, "citycode"));
    paramRegeocodeAddress.setAdCode(a(paramJSONObject, "adcode"));
    paramRegeocodeAddress.setDistrict(a(paramJSONObject, "district"));
    paramRegeocodeAddress.setTownship(a(paramJSONObject, "township"));
    paramRegeocodeAddress.setNeighborhood(a(paramJSONObject.optJSONObject("neighborhood"), "name"));
    paramRegeocodeAddress.setBuilding(a(paramJSONObject.optJSONObject("building"), "name"));
    StreetNumber localStreetNumber = new StreetNumber();
    JSONObject localJSONObject = paramJSONObject.optJSONObject("streetNumber");
    localStreetNumber.setStreet(a(localJSONObject, "street"));
    localStreetNumber.setNumber(a(localJSONObject, "number"));
    localStreetNumber.setLatLonPoint(b(localJSONObject, "location"));
    localStreetNumber.setDirection(a(localJSONObject, "direction"));
    localStreetNumber.setDistance(k(a(localJSONObject, "distance")));
    paramRegeocodeAddress.setStreetNumber(localStreetNumber);
    paramRegeocodeAddress.setBusinessAreas(n(paramJSONObject));
  }

  public static LatLonPoint b(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (paramJSONObject == null);
    while (!paramJSONObject.has(paramString))
      return null;
    return g(paramJSONObject.optString(paramString));
  }

  public static DriveRouteResult b(String paramString)
    throws AMapException
  {
    while (true)
    {
      int i;
      int j;
      int k;
      try
      {
        Object localObject1 = new JSONObject(paramString);
        if (!((JSONObject)localObject1).has("route"))
          return null;
        paramString = new DriveRouteResult();
        localObject1 = ((JSONObject)localObject1).optJSONObject("route");
        if (localObject1 != null)
        {
          paramString.setStartPos(b((JSONObject)localObject1, "origin"));
          paramString.setTargetPos(b((JSONObject)localObject1, "destination"));
          paramString.setTaxiCost(k(a((JSONObject)localObject1, "taxi_cost")));
          if (((JSONObject)localObject1).has("paths"))
          {
            localObject1 = ((JSONObject)localObject1).optJSONArray("paths");
            if (localObject1 != null)
            {
              ArrayList localArrayList1 = new ArrayList();
              i = 0;
              if (i < ((JSONArray)localObject1).length())
              {
                DrivePath localDrivePath = new DrivePath();
                Object localObject2 = ((JSONArray)localObject1).optJSONObject(i);
                if (localObject2 == null)
                  break label585;
                localDrivePath.setDistance(k(a((JSONObject)localObject2, "distance")));
                localDrivePath.setDuration(m(a((JSONObject)localObject2, "duration")));
                localDrivePath.setStrategy(a((JSONObject)localObject2, "strategy"));
                localDrivePath.setTolls(k(a((JSONObject)localObject2, "tolls")));
                localDrivePath.setTollDistance(k(a((JSONObject)localObject2, "toll_distance")));
                localDrivePath.setTotalTrafficlights(j(a((JSONObject)localObject2, "traffic_lights")));
                localObject2 = ((JSONObject)localObject2).optJSONArray("roads");
                if (localObject2 == null)
                  break label585;
                ArrayList localArrayList2 = new ArrayList();
                j = 0;
                if (j < ((JSONArray)localObject2).length())
                {
                  JSONArray localJSONArray = ((JSONArray)localObject2).optJSONObject(j).optJSONArray("steps");
                  if (localJSONArray == null)
                    break label578;
                  k = 0;
                  if (k >= localJSONArray.length())
                    break label578;
                  DriveStep localDriveStep = new DriveStep();
                  JSONObject localJSONObject = localJSONArray.optJSONObject(k);
                  if (localJSONObject == null)
                    break label571;
                  localDriveStep.setInstruction(a(localJSONObject, "instruction"));
                  localDriveStep.setOrientation(a(localJSONObject, "orientation"));
                  localDriveStep.setRoad(a(localJSONObject, "road"));
                  localDriveStep.setDistance(k(a(localJSONObject, "distance")));
                  localDriveStep.setTolls(k(a(localJSONObject, "tolls")));
                  localDriveStep.setTollDistance(k(a(localJSONObject, "toll_distance")));
                  localDriveStep.setTollRoad(a(localJSONObject, "toll_road"));
                  localDriveStep.setDuration(k(a(localJSONObject, "duration")));
                  localDriveStep.setPolyline(c(localJSONObject, "polyline"));
                  localDriveStep.setAction(a(localJSONObject, "action"));
                  localDriveStep.setAssistantAction(a(localJSONObject, "assistant_action"));
                  a(localDriveStep, localJSONObject);
                  localArrayList2.add(localDriveStep);
                  break label571;
                }
                localDrivePath.setSteps(localArrayList2);
                localArrayList1.add(localDrivePath);
                break label585;
              }
              paramString.setPaths(localArrayList1);
              return paramString;
            }
          }
        }
      }
      catch (JSONException paramString)
      {
        i.a(paramString, "JSONHelper", "parseDriveRoute");
        throw new AMapException("协议解析错误 - ProtocolException");
      }
      catch (Throwable paramString)
      {
        i.a(paramString, "JSONHelper", "parseDriveRouteThrowable");
        throw new AMapException("协议解析错误 - ProtocolException");
      }
      return paramString;
      label571: k += 1;
      continue;
      label578: j += 1;
      continue;
      label585: i += 1;
    }
  }

  public static ArrayList<String> b(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("keywords");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      localArrayList.add(paramJSONObject.optString(i));
      i += 1;
    }
    return localArrayList;
  }

  public static void b(JSONArray paramJSONArray, RegeocodeAddress paramRegeocodeAddress)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      RegeocodeRoad localRegeocodeRoad = new RegeocodeRoad();
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
      if (localJSONObject != null)
      {
        localRegeocodeRoad.setId(a(localJSONObject, "id"));
        localRegeocodeRoad.setName(a(localJSONObject, "name"));
        localRegeocodeRoad.setLatLngPoint(b(localJSONObject, "location"));
        localRegeocodeRoad.setDirection(a(localJSONObject, "direction"));
        localRegeocodeRoad.setDistance(k(a(localJSONObject, "distance")));
        localArrayList.add(localRegeocodeRoad);
      }
      i += 1;
    }
    paramRegeocodeAddress.setRoads(localArrayList);
  }

  public static WalkRouteResult c(String paramString)
    throws AMapException
  {
    Object localObject1;
    Object localObject2;
    try
    {
      localObject1 = new JSONObject(paramString);
      if (!((JSONObject)localObject1).has("route"))
        return null;
      paramString = new WalkRouteResult();
      localObject2 = ((JSONObject)localObject1).optJSONObject("route");
      paramString.setStartPos(b((JSONObject)localObject2, "origin"));
      paramString.setTargetPos(b((JSONObject)localObject2, "destination"));
      if (!((JSONObject)localObject2).has("paths"))
        break label396;
      localObject1 = new ArrayList();
      localObject2 = ((JSONObject)localObject2).optJSONArray("paths");
      if (localObject2 == null)
      {
        paramString.setPaths((List)localObject1);
        return paramString;
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "JSONHelper", "parseWalkRoute");
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    int i = 0;
    while (true)
    {
      WalkPath localWalkPath;
      Object localObject3;
      ArrayList localArrayList;
      int j;
      if (i < ((JSONArray)localObject2).length())
      {
        localWalkPath = new WalkPath();
        localObject3 = ((JSONArray)localObject2).optJSONObject(i);
        if (localObject3 == null)
          break label405;
        localWalkPath.setDistance(k(a((JSONObject)localObject3, "distance")));
        localWalkPath.setDuration(m(a((JSONObject)localObject3, "duration")));
        if (((JSONObject)localObject3).has("steps"))
        {
          localObject3 = ((JSONObject)localObject3).optJSONArray("steps");
          localArrayList = new ArrayList();
          if (localObject3 == null)
            break label405;
          j = 0;
        }
      }
      while (true)
      {
        if (j < ((JSONArray)localObject3).length())
        {
          WalkStep localWalkStep = new WalkStep();
          JSONObject localJSONObject = ((JSONArray)localObject3).optJSONObject(j);
          if (localJSONObject != null)
          {
            localWalkStep.setInstruction(a(localJSONObject, "instruction"));
            localWalkStep.setOrientation(a(localJSONObject, "orientation"));
            localWalkStep.setRoad(a(localJSONObject, "road"));
            localWalkStep.setDistance(k(a(localJSONObject, "distance")));
            localWalkStep.setDuration(k(a(localJSONObject, "duration")));
            localWalkStep.setPolyline(c(localJSONObject, "polyline"));
            localWalkStep.setAction(a(localJSONObject, "action"));
            localWalkStep.setAssistantAction(a(localJSONObject, "assistant_action"));
            localArrayList.add(localWalkStep);
          }
        }
        else
        {
          localWalkPath.setSteps(localArrayList);
          ((List)localObject1).add(localWalkPath);
          break;
          paramString.setPaths((List)localObject1);
          label396: return paramString;
        }
        j += 1;
      }
      label405: i += 1;
    }
  }

  public static ArrayList<PoiItem> c(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("pois");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(d(localJSONObject));
      i += 1;
    }
    return localArrayList;
  }

  public static ArrayList<LatLonPoint> c(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    if (paramJSONObject.has(paramString))
      return f(paramJSONObject.getString(paramString));
    return null;
  }

  public static void c(JSONArray paramJSONArray, RegeocodeAddress paramRegeocodeAddress)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      AoiItem localAoiItem = new AoiItem();
      JSONObject localJSONObject = paramJSONArray.optJSONObject(i);
      if (localJSONObject != null)
      {
        localAoiItem.setId(a(localJSONObject, "id"));
        localAoiItem.setName(a(localJSONObject, "name"));
        localAoiItem.setAdcode(a(localJSONObject, "adcode"));
        localAoiItem.setLocation(b(localJSONObject, "location"));
        localAoiItem.setArea(Float.valueOf(k(a(localJSONObject, "area"))));
        localArrayList.add(localAoiItem);
      }
      i += 1;
    }
    paramRegeocodeAddress.setAois(localArrayList);
  }

  public static PoiItem d(JSONObject paramJSONObject)
    throws JSONException
  {
    int i = 0;
    PoiItem localPoiItem = new PoiItem(a(paramJSONObject, "id"), b(paramJSONObject, "location"), a(paramJSONObject, "name"), a(paramJSONObject, "address"));
    localPoiItem.setAdCode(a(paramJSONObject, "adcode"));
    localPoiItem.setProvinceName(a(paramJSONObject, "pname"));
    localPoiItem.setCityName(a(paramJSONObject, "cityname"));
    localPoiItem.setAdName(a(paramJSONObject, "adname"));
    localPoiItem.setCityCode(a(paramJSONObject, "citycode"));
    localPoiItem.setProvinceCode(a(paramJSONObject, "pcode"));
    localPoiItem.setDirection(a(paramJSONObject, "direction"));
    Object localObject;
    if (paramJSONObject.has("distance"))
    {
      localObject = a(paramJSONObject, "distance");
      if (i((String)localObject));
    }
    try
    {
      localPoiItem.setDistance((int)Float.parseFloat((String)localObject));
      localPoiItem.setTel(a(paramJSONObject, "tel"));
      localPoiItem.setTypeDes(a(paramJSONObject, "type"));
      localPoiItem.setEnter(b(paramJSONObject, "entr_location"));
      localPoiItem.setExit(b(paramJSONObject, "exit_location"));
      localPoiItem.setWebsite(a(paramJSONObject, "website"));
      localPoiItem.setPostcode(a(paramJSONObject, "postcode"));
      localPoiItem.setBusinessArea(a(paramJSONObject, "business_area"));
      localPoiItem.setEmail(a(paramJSONObject, "email"));
      if (h(a(paramJSONObject, "indoor_map")))
      {
        localPoiItem.setIndoorMap(false);
        localPoiItem.setParkingType(a(paramJSONObject, "parking_type"));
        localObject = new ArrayList();
        if (!paramJSONObject.has("children"))
          break label372;
        JSONArray localJSONArray = paramJSONObject.optJSONArray("children");
        if (localJSONArray == null)
          break label367;
        while (i < localJSONArray.length())
        {
          JSONObject localJSONObject = localJSONArray.optJSONObject(i);
          if (localJSONObject != null)
            ((ArrayList)localObject).add(w(localJSONObject));
          i += 1;
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        i.a(localNumberFormatException, "JSONHelper", "parseBasePoi");
    }
    catch (Exception localException)
    {
      while (true)
      {
        i.a(localException, "JSONHelper", "parseBasePoi");
        continue;
        localPoiItem.setIndoorMap(true);
      }
      label367: localPoiItem.setSubPois(localException);
      label372: localPoiItem.setIndoorDate(d(paramJSONObject, "indoor_data"));
    }
    return localPoiItem;
  }

  private static IndoorData d(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    String str3 = "";
    int j = 0;
    String str4 = "";
    String str2 = str4;
    int i = j;
    String str1 = str3;
    if (paramJSONObject.has(paramString))
    {
      paramJSONObject = paramJSONObject.optJSONObject(paramString);
      str2 = str4;
      i = j;
      str1 = str3;
      if (paramJSONObject != null)
      {
        str2 = str4;
        i = j;
        str1 = str3;
        if (paramJSONObject.has("cpid"))
        {
          str2 = str4;
          i = j;
          str1 = str3;
          if (paramJSONObject.has("floor"))
          {
            str1 = a(paramJSONObject, "cpid");
            i = j(a(paramJSONObject, "floor"));
            str2 = a(paramJSONObject, "truefloor");
          }
        }
      }
    }
    return new IndoorData(str1, i, str2);
  }

  public static LocalWeatherLive d(String paramString)
    throws AMapException
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      if (!((JSONObject)localObject).has("lives"))
        return null;
      paramString = new LocalWeatherLive();
      localObject = ((JSONObject)localObject).optJSONArray("lives");
      if ((localObject != null) && (((JSONArray)localObject).length() > 0))
      {
        localObject = ((JSONArray)localObject).optJSONObject(0);
        if (localObject != null)
        {
          paramString.setAdCode(a((JSONObject)localObject, "adcode"));
          paramString.setProvince(a((JSONObject)localObject, "province"));
          paramString.setCity(a((JSONObject)localObject, "city"));
          paramString.setWeather(a((JSONObject)localObject, "weather"));
          paramString.setTemperature(a((JSONObject)localObject, "temperature"));
          paramString.setWindDirection(a((JSONObject)localObject, "winddirection"));
          paramString.setWindPower(a((JSONObject)localObject, "windpower"));
          paramString.setHumidity(a((JSONObject)localObject, "humidity"));
          paramString.setReportTime(a((JSONObject)localObject, "reporttime"));
          return paramString;
        }
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "JSONHelper", "WeatherForecastResult");
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    return paramString;
  }

  public static LocalWeatherForecast e(String paramString)
    throws AMapException
  {
    int i = 0;
    Object localObject1;
    Object localObject2;
    try
    {
      localObject1 = new JSONObject(paramString);
      if (!((JSONObject)localObject1).has("forecasts"))
        return null;
      paramString = new LocalWeatherForecast();
      localObject1 = ((JSONObject)localObject1).getJSONArray("forecasts");
      if ((localObject1 != null) && (((JSONArray)localObject1).length() > 0))
      {
        localObject2 = ((JSONArray)localObject1).optJSONObject(0);
        if (localObject2 != null)
        {
          paramString.setCity(a((JSONObject)localObject2, "city"));
          paramString.setAdCode(a((JSONObject)localObject2, "adcode"));
          paramString.setProvince(a((JSONObject)localObject2, "province"));
          paramString.setReportTime(a((JSONObject)localObject2, "reporttime"));
          if (((JSONObject)localObject2).has("casts"))
          {
            localObject1 = new ArrayList();
            localObject2 = ((JSONObject)localObject2).optJSONArray("casts");
            if ((localObject2 == null) || (((JSONArray)localObject2).length() <= 0))
            {
              paramString.setWeatherForecast((List)localObject1);
              return paramString;
            }
          }
        }
      }
    }
    catch (JSONException paramString)
    {
      i.a(paramString, "JSONHelper", "WeatherForecastResult");
      throw new AMapException("协议解析错误 - ProtocolException");
    }
    while (true)
    {
      if (i < ((JSONArray)localObject2).length())
      {
        LocalDayWeatherForecast localLocalDayWeatherForecast = new LocalDayWeatherForecast();
        JSONObject localJSONObject = ((JSONArray)localObject2).optJSONObject(i);
        if (localJSONObject != null)
        {
          localLocalDayWeatherForecast.setDate(a(localJSONObject, "date"));
          localLocalDayWeatherForecast.setWeek(a(localJSONObject, "week"));
          localLocalDayWeatherForecast.setDayWeather(a(localJSONObject, "dayweather"));
          localLocalDayWeatherForecast.setNightWeather(a(localJSONObject, "nightweather"));
          localLocalDayWeatherForecast.setDayTemp(a(localJSONObject, "daytemp"));
          localLocalDayWeatherForecast.setNightTemp(a(localJSONObject, "nighttemp"));
          localLocalDayWeatherForecast.setDayWindDirection(a(localJSONObject, "daywind"));
          localLocalDayWeatherForecast.setNightWindDirection(a(localJSONObject, "nightwind"));
          localLocalDayWeatherForecast.setDayWindPower(a(localJSONObject, "daypower"));
          localLocalDayWeatherForecast.setNightWindPower(a(localJSONObject, "nightpower"));
          ((List)localObject1).add(localLocalDayWeatherForecast);
        }
      }
      else
      {
        paramString.setWeatherForecast((List)localObject1);
        return paramString;
      }
      i += 1;
    }
  }

  public static ArrayList<BusStationItem> e(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("busstops");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(f(localJSONObject));
      i += 1;
    }
    return localArrayList;
  }

  public static BusStationItem f(JSONObject paramJSONObject)
    throws JSONException
  {
    BusStationItem localBusStationItem = g(paramJSONObject);
    if (localBusStationItem == null)
      return localBusStationItem;
    localBusStationItem.setAdCode(a(paramJSONObject, "adcode"));
    localBusStationItem.setCityCode(a(paramJSONObject, "citycode"));
    paramJSONObject = paramJSONObject.optJSONArray("buslines");
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
    {
      localBusStationItem.setBusLineItems(localArrayList);
      return localBusStationItem;
    }
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(h(localJSONObject));
      i += 1;
    }
    localBusStationItem.setBusLineItems(localArrayList);
    return localBusStationItem;
  }

  public static ArrayList<LatLonPoint> f(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    paramString = paramString.split(";");
    int i = 0;
    while (i < paramString.length)
    {
      localArrayList.add(g(paramString[i]));
      i += 1;
    }
    return localArrayList;
  }

  public static BusStationItem g(JSONObject paramJSONObject)
    throws JSONException
  {
    BusStationItem localBusStationItem = new BusStationItem();
    localBusStationItem.setBusStationId(a(paramJSONObject, "id"));
    localBusStationItem.setLatLonPoint(b(paramJSONObject, "location"));
    localBusStationItem.setBusStationName(a(paramJSONObject, "name"));
    return localBusStationItem;
  }

  public static LatLonPoint g(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")));
    do
    {
      return null;
      paramString = paramString.split(",");
    }
    while (paramString.length != 2);
    double d = Double.parseDouble(paramString[0]);
    return new LatLonPoint(Double.parseDouble(paramString[1]), d);
  }

  public static BusLineItem h(JSONObject paramJSONObject)
    throws JSONException
  {
    BusLineItem localBusLineItem = new BusLineItem();
    localBusLineItem.setBusLineId(a(paramJSONObject, "id"));
    localBusLineItem.setBusLineType(a(paramJSONObject, "type"));
    localBusLineItem.setBusLineName(a(paramJSONObject, "name"));
    localBusLineItem.setDirectionsCoordinates(c(paramJSONObject, "polyline"));
    localBusLineItem.setCityCode(a(paramJSONObject, "citycode"));
    localBusLineItem.setOriginatingStation(a(paramJSONObject, "start_stop"));
    localBusLineItem.setTerminalStation(a(paramJSONObject, "end_stop"));
    return localBusLineItem;
  }

  public static boolean h(String paramString)
  {
    return (paramString == null) || (paramString.equals("")) || (paramString.equals("0"));
  }

  public static ArrayList<BusLineItem> i(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("buslines");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(j(localJSONObject));
      i += 1;
    }
    return localArrayList;
  }

  public static boolean i(String paramString)
  {
    return (paramString == null) || (paramString.equals(""));
  }

  public static int j(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")))
      return 0;
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      i.a(paramString, "JSONHelper", "str2int");
    }
    return 0;
  }

  public static BusLineItem j(JSONObject paramJSONObject)
    throws JSONException
  {
    BusLineItem localBusLineItem = h(paramJSONObject);
    if (localBusLineItem == null)
      return localBusLineItem;
    localBusLineItem.setFirstBusTime(i.c(a(paramJSONObject, "start_time")));
    localBusLineItem.setLastBusTime(i.c(a(paramJSONObject, "end_time")));
    localBusLineItem.setBusCompany(a(paramJSONObject, "company"));
    localBusLineItem.setDistance(k(a(paramJSONObject, "distance")));
    localBusLineItem.setBasicPrice(k(a(paramJSONObject, "basic_price")));
    localBusLineItem.setTotalPrice(k(a(paramJSONObject, "total_price")));
    localBusLineItem.setBounds(c(paramJSONObject, "bounds"));
    ArrayList localArrayList = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("busstops");
    if (paramJSONObject == null)
    {
      localBusLineItem.setBusStations(localArrayList);
      return localBusLineItem;
    }
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(g(localJSONObject));
      i += 1;
    }
    localBusLineItem.setBusStations(localArrayList);
    return localBusLineItem;
  }

  public static float k(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")))
      return 0.0F;
    try
    {
      float f = Float.parseFloat(paramString);
      return f;
    }
    catch (NumberFormatException paramString)
    {
      i.a(paramString, "JSONHelper", "str2float");
    }
    return 0.0F;
  }

  public static DistrictItem k(JSONObject paramJSONObject)
    throws JSONException
  {
    DistrictItem localDistrictItem = new DistrictItem();
    localDistrictItem.setCitycode(a(paramJSONObject, "citycode"));
    localDistrictItem.setAdcode(a(paramJSONObject, "adcode"));
    localDistrictItem.setName(a(paramJSONObject, "name"));
    localDistrictItem.setLevel(a(paramJSONObject, "level"));
    localDistrictItem.setCenter(b(paramJSONObject, "center"));
    if (paramJSONObject.has("polyline"))
    {
      String str = paramJSONObject.getString("polyline");
      if ((str != null) && (str.length() > 0))
        localDistrictItem.setDistrictBoundary(str.split("\\|"));
    }
    a(paramJSONObject.optJSONArray("districts"), new ArrayList(), localDistrictItem);
    return localDistrictItem;
  }

  public static double l(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")))
      return 0.0D;
    try
    {
      double d = Double.parseDouble(paramString);
      return d;
    }
    catch (NumberFormatException paramString)
    {
      i.a(paramString, "JSONHelper", "str2float");
    }
    return 0.0D;
  }

  public static ArrayList<GeocodeAddress> l(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("geocodes");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
      {
        GeocodeAddress localGeocodeAddress = new GeocodeAddress();
        localGeocodeAddress.setFormatAddress(a(localJSONObject, "formatted_address"));
        localGeocodeAddress.setProvince(a(localJSONObject, "province"));
        localGeocodeAddress.setCity(a(localJSONObject, "city"));
        localGeocodeAddress.setDistrict(a(localJSONObject, "district"));
        localGeocodeAddress.setTownship(a(localJSONObject, "township"));
        localGeocodeAddress.setNeighborhood(a(localJSONObject.optJSONObject("neighborhood"), "name"));
        localGeocodeAddress.setBuilding(a(localJSONObject.optJSONObject("building"), "name"));
        localGeocodeAddress.setAdcode(a(localJSONObject, "adcode"));
        localGeocodeAddress.setLatLonPoint(b(localJSONObject, "location"));
        localGeocodeAddress.setLevel(a(localJSONObject, "level"));
        localArrayList.add(localGeocodeAddress);
      }
      i += 1;
    }
    return localArrayList;
  }

  public static long m(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")))
      return 0L;
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString)
    {
      i.a(paramString, "JSONHelper", "str2long");
    }
    return 0L;
  }

  public static ArrayList<Tip> m(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("tips");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      Tip localTip = new Tip();
      Object localObject = paramJSONObject.optJSONObject(i);
      if (localObject != null)
      {
        localTip.setName(a((JSONObject)localObject, "name"));
        localTip.setDistrict(a((JSONObject)localObject, "district"));
        localTip.setAdcode(a((JSONObject)localObject, "adcode"));
        localTip.setID(a((JSONObject)localObject, "id"));
        localObject = a((JSONObject)localObject, "location");
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          localObject = ((String)localObject).split(",");
          if (localObject.length == 2)
            localTip.setPostion(new LatLonPoint(Double.parseDouble(localObject[1]), Double.parseDouble(localObject[0])));
        }
        localArrayList.add(localTip);
      }
      i += 1;
    }
    return localArrayList;
  }

  public static List<BusinessArea> n(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    paramJSONObject = paramJSONObject.optJSONArray("businessAreas");
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0))
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      BusinessArea localBusinessArea = new BusinessArea();
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
      {
        localBusinessArea.setCenterPoint(b(localJSONObject, "location"));
        localBusinessArea.setName(a(localJSONObject, "name"));
        localArrayList.add(localBusinessArea);
      }
      i += 1;
    }
    return localArrayList;
  }

  public static boolean n(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("[]")) || (paramString.equals("0")));
    while (!paramString.equals("1"))
      return false;
    return true;
  }

  public static BusStep o(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null)
      paramJSONObject = null;
    BusStep localBusStep;
    JSONObject localJSONObject;
    do
    {
      return paramJSONObject;
      localBusStep = new BusStep();
      localJSONObject = paramJSONObject.optJSONObject("walking");
      if (localJSONObject != null)
        localBusStep.setWalk(p(localJSONObject));
      localJSONObject = paramJSONObject.optJSONObject("bus");
      if (localJSONObject != null)
        localBusStep.setBusLines(q(localJSONObject));
      localJSONObject = paramJSONObject.optJSONObject("entrance");
      if (localJSONObject != null)
        localBusStep.setEntrance(r(localJSONObject));
      localJSONObject = paramJSONObject.optJSONObject("exit");
      paramJSONObject = localBusStep;
    }
    while (localJSONObject == null);
    localBusStep.setExit(r(localJSONObject));
    return localBusStep;
  }

  public static RouteBusWalkItem p(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null)
      return null;
    RouteBusWalkItem localRouteBusWalkItem = new RouteBusWalkItem();
    localRouteBusWalkItem.setOrigin(b(paramJSONObject, "origin"));
    localRouteBusWalkItem.setDestination(b(paramJSONObject, "destination"));
    localRouteBusWalkItem.setDistance(k(a(paramJSONObject, "distance")));
    localRouteBusWalkItem.setDuration(m(a(paramJSONObject, "duration")));
    if (!paramJSONObject.has("steps"))
      return localRouteBusWalkItem;
    paramJSONObject = paramJSONObject.optJSONArray("steps");
    if (paramJSONObject == null)
      return localRouteBusWalkItem;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(s(localJSONObject));
      i += 1;
    }
    localRouteBusWalkItem.setSteps(localArrayList);
    return localRouteBusWalkItem;
  }

  public static List<RouteBusLineItem> q(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("buslines");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(t(localJSONObject));
      i += 1;
    }
    return localArrayList;
  }

  public static Doorway r(JSONObject paramJSONObject)
    throws JSONException
  {
    Doorway localDoorway = new Doorway();
    localDoorway.setName(a(paramJSONObject, "name"));
    localDoorway.setLatLonPoint(b(paramJSONObject, "location"));
    return localDoorway;
  }

  public static WalkStep s(JSONObject paramJSONObject)
    throws JSONException
  {
    WalkStep localWalkStep = new WalkStep();
    localWalkStep.setInstruction(a(paramJSONObject, "instruction"));
    localWalkStep.setOrientation(a(paramJSONObject, "orientation"));
    localWalkStep.setRoad(a(paramJSONObject, "road"));
    localWalkStep.setDistance(k(a(paramJSONObject, "distance")));
    localWalkStep.setDuration(k(a(paramJSONObject, "duration")));
    localWalkStep.setPolyline(c(paramJSONObject, "polyline"));
    localWalkStep.setAction(a(paramJSONObject, "action"));
    localWalkStep.setAssistantAction(a(paramJSONObject, "assistant_action"));
    return localWalkStep;
  }

  public static RouteBusLineItem t(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject == null)
      return null;
    RouteBusLineItem localRouteBusLineItem = new RouteBusLineItem();
    localRouteBusLineItem.setDepartureBusStation(v(paramJSONObject.optJSONObject("departure_stop")));
    localRouteBusLineItem.setArrivalBusStation(v(paramJSONObject.optJSONObject("arrival_stop")));
    localRouteBusLineItem.setBusLineName(a(paramJSONObject, "name"));
    localRouteBusLineItem.setBusLineId(a(paramJSONObject, "id"));
    localRouteBusLineItem.setBusLineType(a(paramJSONObject, "type"));
    localRouteBusLineItem.setDistance(k(a(paramJSONObject, "distance")));
    localRouteBusLineItem.setDuration(k(a(paramJSONObject, "duration")));
    localRouteBusLineItem.setPolyline(c(paramJSONObject, "polyline"));
    localRouteBusLineItem.setFirstBusTime(i.c(a(paramJSONObject, "start_time")));
    localRouteBusLineItem.setLastBusTime(i.c(a(paramJSONObject, "end_time")));
    localRouteBusLineItem.setPassStationNum(j(a(paramJSONObject, "via_num")));
    localRouteBusLineItem.setPassStations(u(paramJSONObject));
    return localRouteBusLineItem;
  }

  public static List<BusStationItem> u(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = new ArrayList();
    if (paramJSONObject == null)
      return localArrayList;
    paramJSONObject = paramJSONObject.optJSONArray("via_stops");
    if (paramJSONObject == null)
      return localArrayList;
    int i = 0;
    while (i < paramJSONObject.length())
    {
      JSONObject localJSONObject = paramJSONObject.optJSONObject(i);
      if (localJSONObject != null)
        localArrayList.add(v(localJSONObject));
      i += 1;
    }
    return localArrayList;
  }

  public static BusStationItem v(JSONObject paramJSONObject)
    throws JSONException
  {
    BusStationItem localBusStationItem = new BusStationItem();
    localBusStationItem.setBusStationName(a(paramJSONObject, "name"));
    localBusStationItem.setBusStationId(a(paramJSONObject, "id"));
    localBusStationItem.setLatLonPoint(b(paramJSONObject, "location"));
    return localBusStationItem;
  }

  private static SubPoiItem w(JSONObject paramJSONObject)
    throws JSONException
  {
    SubPoiItem localSubPoiItem = new SubPoiItem(a(paramJSONObject, "id"), b(paramJSONObject, "location"), a(paramJSONObject, "name"), a(paramJSONObject, "address"));
    localSubPoiItem.setSubName(a(paramJSONObject, "sname"));
    localSubPoiItem.setSubTypeDes(a(paramJSONObject, "subtype"));
    if (paramJSONObject.has("distance"))
    {
      paramJSONObject = a(paramJSONObject, "distance");
      if (i(paramJSONObject));
    }
    try
    {
      localSubPoiItem.setDistance((int)Float.parseFloat(paramJSONObject));
      return localSubPoiItem;
    }
    catch (NumberFormatException paramJSONObject)
    {
      i.a(paramJSONObject, "JSONHelper", "parseSubPoiItem");
      return localSubPoiItem;
    }
    catch (Exception paramJSONObject)
    {
      i.a(paramJSONObject, "JSONHelper", "parseSubPoiItem");
    }
    return localSubPoiItem;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.services.core.n
 * JD-Core Version:    0.6.2
 */