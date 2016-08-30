package com.facebook;

import java.io.Serializable;
import org.json.JSONException;

class AppEventsLogger$AppEvent$SerializationProxyV1
  implements Serializable
{
  private static final long serialVersionUID = -2488473066578201069L;
  private final boolean isImplicit;
  private final String jsonString;

  private AppEventsLogger$AppEvent$SerializationProxyV1(String paramString, boolean paramBoolean)
  {
    this.jsonString = paramString;
    this.isImplicit = paramBoolean;
  }

  private Object readResolve()
    throws JSONException
  {
    return new AppEventsLogger.AppEvent(this.jsonString, this.isImplicit, null);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.AppEventsLogger.AppEvent.SerializationProxyV1
 * JD-Core Version:    0.6.2
 */