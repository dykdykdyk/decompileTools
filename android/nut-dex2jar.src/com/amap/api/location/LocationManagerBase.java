package com.amap.api.location;

import android.app.PendingIntent;

public abstract interface LocationManagerBase
{
  public static final int ADD_GEOFENCE = 6;
  public static final int DESTROY = 11;
  public static final int REMOVE_GEOFENCE = 7;
  public static final int REMOVE_GEOFENCE_ONE = 10;
  public static final int REMOVE_LISTENER = 5;
  public static final int SET_LISTENER = 2;
  public static final int SET_OPTION = 1;
  public static final int START_LOCATION = 3;
  public static final int START_SOCKET = 8;
  public static final int STOP_LOCATION = 4;
  public static final int STOP_SOCKET = 9;

  public abstract void addGeoFenceAlert(String paramString, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, PendingIntent paramPendingIntent);

  public abstract AMapLocation getLastKnownLocation();

  public abstract String getVersion();

  public abstract boolean isStarted();

  public abstract void onDestroy();

  public abstract void removeGeoFenceAlert(PendingIntent paramPendingIntent);

  public abstract void removeGeoFenceAlert(PendingIntent paramPendingIntent, String paramString);

  public abstract void setLocationListener(AMapLocationListener paramAMapLocationListener);

  public abstract void setLocationOption(AMapLocationClientOption paramAMapLocationClientOption);

  public abstract void startAssistantLocation();

  public abstract void startLocation();

  public abstract void stopAssistantLocation();

  public abstract void stopLocation();

  public abstract void unRegisterLocationListener(AMapLocationListener paramAMapLocationListener);
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.amap.api.location.LocationManagerBase
 * JD-Core Version:    0.6.2
 */