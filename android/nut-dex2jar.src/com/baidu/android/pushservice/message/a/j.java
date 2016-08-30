package com.baidu.android.pushservice.message.a;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushSettings;
import com.baidu.android.pushservice.a.a.e;
import com.baidu.android.pushservice.h.a;
import com.baidu.android.pushservice.h.b;
import com.baidu.android.pushservice.message.PublicMsg;
import org.json.JSONException;
import org.json.JSONObject;

public final class j
{
  public static PublicMsg a(Context paramContext, String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    boolean bool = true;
    PublicMsg localPublicMsg = new PublicMsg();
    localPublicMsg.mMsgId = paramString1;
    localPublicMsg.mAppId = paramString2;
    try
    {
      paramString1 = new JSONObject(new String(paramArrayOfByte));
      if (!paramString1.isNull("title"))
        localPublicMsg.mTitle = paramString1.getString("title");
      if (!paramString1.isNull("description"))
        localPublicMsg.mDescription = paramString1.getString("description");
      if (!paramString1.isNull("url"))
        localPublicMsg.mUrl = paramString1.getString("url");
      if (!paramString1.isNull("notification_builder_id"))
        localPublicMsg.mNotificationBuilder = paramString1.getInt("notification_builder_id");
      if (!paramString1.isNull("open_type"))
        localPublicMsg.mOpenType = paramString1.getInt("open_type");
      if (!paramString1.isNull("notification_basic_style"))
        localPublicMsg.mNotificationBasicStyle = paramString1.getInt("notification_basic_style");
      if (!paramString1.isNull("custom_content"))
        localPublicMsg.mCustomContent = paramString1.getString("custom_content");
      if (!paramString1.isNull("net_support"))
        localPublicMsg.mNetType = paramString1.getInt("net_support");
      if (!paramString1.isNull("app_situation"))
      {
        paramString2 = paramString1.getJSONObject("app_situation");
        if (paramString2.getInt("as_is_support") != 1)
          break label444;
      }
      while (true)
      {
        localPublicMsg.mIsSupportApp = bool;
        localPublicMsg.mSupportAppname = paramString2.getString("as_pkg_name");
        if (!paramString1.isNull("pkg_name"))
          localPublicMsg.mPkgName = paramString1.getString("pkg_name");
        if (!paramString1.isNull("pkg_vercode"))
          localPublicMsg.mPkgVercode = paramString1.getInt("pkg_vercode");
        if (!paramString1.isNull("pkg_content"))
          localPublicMsg.mPkgContent = paramString1.getString("pkg_content");
        paramString2 = paramString1.optString("redirect_url");
        localPublicMsg.mAdvertiseStyle = paramString1.optInt("advertise_style");
        localPublicMsg.mAdvertiseSmallIconUrl = paramString1.optString("smallicon_url");
        localPublicMsg.mAdvertiseLargeIconUrl = paramString1.optString("largeicon_url");
        localPublicMsg.mAdvertiseClickUrl = a(paramContext, paramString1.optString("click_url"), paramString2);
        localPublicMsg.mAdvertiseBigPictureClickUrl = a(paramContext, paramString1.optString("pictureclick_url"), paramString2);
        localPublicMsg.mAdvertiseBigPictureUrl = paramString1.optString("bigpicture_url");
        localPublicMsg.mAdvertiseDownloadClickUrl = a(paramContext, paramString1.optString("download_click_url"), paramString2);
        localPublicMsg.mAdvertiseDetailClickUrl = a(paramContext, paramString1.optString("detail_click_url"), paramString2);
        localPublicMsg.mAdvertiseBigPictureTitle = paramString1.optString("bigstyle_title");
        localPublicMsg.mAdvertiseBigPictureContent = paramString1.optString("bigstyle_content");
        return localPublicMsg;
        label444: bool = false;
      }
    }
    catch (JSONException paramString1)
    {
      b.b("PublicMsgParser", "Public Message Parsing Fail:\r\n" + paramString1.getMessage(), paramContext.getApplicationContext());
      a.a("PublicMsgParser", paramString1);
    }
    return null;
  }

  private static String a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString1.trim())) && (e.a(Uri.parse(paramString1.trim()))))
      {
        String str = paramString1;
        if (!TextUtils.isEmpty(paramString2))
        {
          str = paramString1;
          if (!TextUtils.isEmpty(paramString2.trim()))
          {
            str = paramString1;
            if (e.a(Uri.parse(paramString2.trim())))
            {
              paramContext = PushSettings.a(paramContext);
              str = paramString1;
              if (paramContext != null)
              {
                str = paramString1;
                if (paramContext != "")
                {
                  str = paramString2 + "/channelid=" + paramContext + "/t=" + System.currentTimeMillis() + "/src=" + paramString1;
                  a.c("PublicMsgParser", "channel_id  = " + paramContext + "  newurl is : " + str);
                }
              }
            }
          }
        }
        return str;
      }
      return null;
    }
    catch (Exception paramContext)
    {
      a.e("PublicMsgParser", "error = " + paramContext.getMessage());
    }
    return paramString1;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.baidu.android.pushservice.message.a.j
 * JD-Core Version:    0.6.2
 */