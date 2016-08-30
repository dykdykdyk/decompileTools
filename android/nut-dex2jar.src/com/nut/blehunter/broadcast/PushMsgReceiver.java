package com.nut.blehunter.broadcast;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.android.pushservice.PushMessageReceiver;
import com.google.gson.Gson;
import com.nut.blehunter.NutTrackerApplication;
import com.nut.blehunter.d.k;
import com.nut.blehunter.dfu.DfuActivity;
import com.nut.blehunter.e;
import com.nut.blehunter.entity.CommonPushMsg;
import com.nut.blehunter.entity.FindLocation;
import com.nut.blehunter.entity.Nut;
import com.nut.blehunter.entity.Position;
import com.nut.blehunter.entity.ShareUserInfo;
import com.nut.blehunter.entity.User;
import com.nut.blehunter.entity.m;
import com.nut.blehunter.provider.i;
import com.nut.blehunter.rxApi.service.AccountService;
import com.nut.blehunter.rxApi.service.AuthLoginService;
import com.nut.blehunter.service.NutTrackerService;
import com.nut.blehunter.ui.DialogBoxForPushActivity;
import com.nut.blehunter.ui.NotificationCenterActivity;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import retrofit2.Call;
import rx.h;
import rx.schedulers.Schedulers;

public class PushMsgReceiver extends PushMessageReceiver
{
  private static String a(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString).getString("event");
      return paramString;
    }
    catch (JSONException paramString)
    {
      b.a.a.b(paramString, "parseFindLoc Exception", new Object[0]);
    }
    return null;
  }

  private static void a(Context paramContext, int paramInt, CommonPushMsg paramCommonPushMsg)
  {
    if (DfuActivity.class.getSimpleName().equals(NutTrackerApplication.a().c()))
      return;
    Intent localIntent = new Intent(paramContext, DialogBoxForPushActivity.class);
    localIntent.setFlags(335544320);
    localIntent.putExtra("type", paramInt);
    localIntent.putExtra("push_msg", paramCommonPushMsg);
    paramContext.startActivity(localIntent);
  }

  private static FindLocation b(String paramString)
  {
    try
    {
      Object localObject = new JSONObject(paramString);
      String str = ((JSONObject)localObject).getString("uuid");
      paramString = ((JSONObject)localObject).optString("tagId");
      Position localPosition = new Position();
      long l = ((JSONObject)localObject).optLong("createTime", com.nut.blehunter.d.c.a());
      double d1 = ((JSONObject)localObject).optDouble("latitude");
      double d2 = ((JSONObject)localObject).optDouble("longitude");
      localPosition.a = str;
      localPosition.e = l;
      localPosition.d = d1;
      localPosition.c = d2;
      localObject = new FindLocation();
      ((FindLocation)localObject).a = paramString;
      ((FindLocation)localObject).b = localPosition;
      return localObject;
    }
    catch (JSONException paramString)
    {
      b.a.a.b(paramString, "parseFindLoc Exception", new Object[0]);
    }
    return null;
  }

  private void c(String paramString)
  {
    com.nut.blehunter.rxApi.a.b().getSharedUsers(com.nut.blehunter.rxApi.a.a("articleUUID", paramString)).enqueue(new a(this, paramString));
  }

  public void onBind(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    b.a.a.a("onBind errorCode=%s appid=%s userId=%s channelId=%s requestId=%s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2, paramString3, paramString4 });
    if (!m.a().c());
    while ((paramInt != 0) || (k.b(paramContext, "push_channel_id", "").equals(paramString3)))
      return;
    if (TextUtils.isEmpty(paramString3))
    {
      b.a.a.d("reqModifyProfile params is null", new Object[0]);
      return;
    }
    com.nut.blehunter.rxApi.a.b().modifyProfile(com.nut.blehunter.rxApi.a.a("deviceToken", paramString3)).enqueue(new b(this, paramContext, paramString3));
  }

  public void onDelTags(Context paramContext, int paramInt, List<String> paramList1, List<String> paramList2, String paramString)
  {
  }

  public void onListTags(Context paramContext, int paramInt, List<String> paramList, String paramString)
  {
  }

  public void onMessage(Context paramContext, String paramString1, String paramString2)
  {
    b.a.a.a("透传消息message=\"" + paramString1 + "\"customStr=" + paramString2, new Object[0]);
    if (m.a().c())
    {
      paramString2 = a(paramString1);
      if (!TextUtils.isEmpty(paramString2))
      {
        if (!paramString2.equals("found"))
          break label119;
        paramString1 = b(paramString1);
        if (paramString1 != null)
        {
          paramString2 = new Intent();
          paramString2.setClass(paramContext, NutTrackerService.class);
          paramString2.setAction("com.nutspace.action.handle.location");
          paramString2.putExtra("intent_type", 4);
          paramString2.putExtra("find_location", paramString1);
          paramContext.startService(paramString2);
        }
      }
    }
    label119: 
    do
      while (true)
      {
        return;
        if (paramString2.equals("logout"))
        {
          new CommonPushMsg().a = paramString2;
          a(paramContext, 7, new CommonPushMsg());
          return;
        }
        if (paramString2.equals("email_active"))
        {
          new CommonPushMsg().a = paramString2;
          a(paramContext, 9, new CommonPushMsg());
          return;
        }
        try
        {
          paramString2 = (CommonPushMsg)e.a().fromJson(paramString1, CommonPushMsg.class);
          b.a.a.d(paramString2.toString(), new Object[0]);
          paramString1 = i.b().e(paramString2.c);
          if (paramString1 != null)
            if (paramString2.a.equals("accept_share"))
            {
              a(paramContext, 2, paramString2);
              paramContext = new ShareUserInfo();
              paramContext.b = paramString2.g;
              paramContext.d = paramString2.h;
              if (paramString1.A == null)
                paramString1.A = new ArrayList();
              paramString1.A.add(paramContext);
              paramString1.y = 1;
              i.b().a(paramString1, true);
              c(paramString2.c);
              return;
            }
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
      }
    while (!paramString2.a.equals("cancel_share"));
    if (paramString1.E)
    {
      a(paramContext, 3, paramString2);
      c(paramString2.c);
      return;
    }
    a(paramContext, 4, paramString2);
    paramString2 = new Intent(paramContext, NutTrackerService.class);
    paramString2.setAction("com.nutspace.action.delete.receive.nut");
    paramString2.putExtra("device_id", paramString1.j);
    paramContext.startService(paramString2);
    i.b().i(paramString1.j);
  }

  public void onNotificationArrived(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    com.nut.blehunter.rxApi.a.a().getUser("Basic " + m.a().b().i).b(Schedulers.io()).a(rx.a.b.a.a()).a(new c(this));
  }

  public void onNotificationClicked(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    paramString1 = "";
    try
    {
      paramString2 = new JSONObject(paramString3).getString("url");
      paramString1 = paramString2;
      label21: if (!TextUtils.isEmpty(paramString1))
      {
        paramString2 = new Intent(paramContext.getApplicationContext(), NotificationCenterActivity.class);
        paramString2.addFlags(268435456);
        paramString2.putExtra("URL", paramString1);
        paramContext.getApplicationContext().startActivity(paramString2);
      }
      return;
    }
    catch (JSONException paramString2)
    {
      break label21;
    }
  }

  public void onSetTags(Context paramContext, int paramInt, List<String> paramList1, List<String> paramList2, String paramString)
  {
  }

  public void onUnbind(Context paramContext, int paramInt, String paramString)
  {
    b.a.a.a("onUnbind errorCode=" + paramInt + " requestId = " + paramString, new Object[0]);
    if (paramInt == 0)
      k.a(paramContext, "push_channel_id", "");
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.nut.blehunter.broadcast.PushMsgReceiver
 * JD-Core Version:    0.6.2
 */