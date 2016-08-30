package android.support.v4.app;

import android.app.RemoteInput;
import android.app.RemoteInput.Builder;

final class cr
{
  static RemoteInput[] a(ct[] paramArrayOfct)
  {
    if (paramArrayOfct == null)
      return null;
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfct.length];
    int i = 0;
    while (i < paramArrayOfct.length)
    {
      ct localct = paramArrayOfct[i];
      arrayOfRemoteInput[i] = new RemoteInput.Builder(localct.a()).setLabel(localct.b()).setChoices(localct.c()).setAllowFreeFormInput(localct.d()).addExtras(localct.e()).build();
      i += 1;
    }
    return arrayOfRemoteInput;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.app.cr
 * JD-Core Version:    0.6.2
 */