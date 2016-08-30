package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

final class LikeActionController$1
  implements LikeActionController.CreationCallback
{
  LikeActionController$1(int paramInt1, int paramInt2, Intent paramIntent, UUID paramUUID)
  {
  }

  public final void onComplete(LikeActionController paramLikeActionController)
  {
    LikeActionController.access$000(paramLikeActionController, this.val$requestCode, this.val$resultCode, this.val$data, this.val$callId);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.internal.LikeActionController.1
 * JD-Core Version:    0.6.2
 */