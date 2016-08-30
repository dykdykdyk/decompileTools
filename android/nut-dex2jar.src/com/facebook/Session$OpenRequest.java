package com.facebook;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.util.List;

public final class Session$OpenRequest extends Session.AuthorizationRequest
{
  private static final long serialVersionUID = 1L;

  public Session$OpenRequest(Activity paramActivity)
  {
    super(paramActivity);
  }

  public Session$OpenRequest(Fragment paramFragment)
  {
    super(paramFragment);
  }

  public final OpenRequest setCallback(Session.StatusCallback paramStatusCallback)
  {
    super.setCallback(paramStatusCallback);
    return this;
  }

  public final OpenRequest setDefaultAudience(SessionDefaultAudience paramSessionDefaultAudience)
  {
    super.setDefaultAudience(paramSessionDefaultAudience);
    return this;
  }

  public final OpenRequest setLoginBehavior(SessionLoginBehavior paramSessionLoginBehavior)
  {
    super.setLoginBehavior(paramSessionLoginBehavior);
    return this;
  }

  public final OpenRequest setPermissions(List<String> paramList)
  {
    super.setPermissions(paramList);
    return this;
  }

  public final OpenRequest setPermissions(String[] paramArrayOfString)
  {
    super.setPermissions(paramArrayOfString);
    return this;
  }

  public final OpenRequest setRequestCode(int paramInt)
  {
    super.setRequestCode(paramInt);
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.Session.OpenRequest
 * JD-Core Version:    0.6.2
 */