package no.nordicsemi.android.dfu;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import no.nordicsemi.android.a.a;

class DfuServiceListenerHelper$ProgressBroadcastsReceiver extends BroadcastReceiver
{
  private DfuProgressListener mGlobalProgressListener;
  private Map<String, DfuProgressListener> mListeners = new HashMap();

  private boolean removeProgressListener(DfuProgressListener paramDfuProgressListener)
  {
    if (this.mGlobalProgressListener == paramDfuProgressListener)
      this.mGlobalProgressListener = null;
    Iterator localIterator = this.mListeners.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getValue() == paramDfuProgressListener)
        this.mListeners.remove(localEntry.getKey());
    }
    localIterator = this.mListeners.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getValue() == paramDfuProgressListener)
        this.mListeners.remove(localEntry.getKey());
    }
    return (this.mGlobalProgressListener == null) && (this.mListeners.isEmpty());
  }

  private void setProgressListener(String paramString, DfuProgressListener paramDfuProgressListener)
  {
    this.mListeners.put(paramString, paramDfuProgressListener);
    this.mListeners.put(DfuServiceListenerHelper.access$000(paramString), paramDfuProgressListener);
  }

  private void setProgressListener(DfuProgressListener paramDfuProgressListener)
  {
    this.mGlobalProgressListener = paramDfuProgressListener;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getStringExtra("no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS");
    DfuProgressListener localDfuProgressListener1 = this.mGlobalProgressListener;
    DfuProgressListener localDfuProgressListener2 = (DfuProgressListener)this.mListeners.get(paramContext);
    if ((localDfuProgressListener1 == null) && (localDfuProgressListener2 == null));
    label38: int i;
    int j;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      return;
                      String str = paramIntent.getAction();
                      i = -1;
                      switch (str.hashCode())
                      {
                      default:
                      case -2021868104:
                      case -1282379203:
                      }
                      while (true)
                        switch (i)
                        {
                        default:
                          return;
                        case 0:
                          i = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_DATA", 0);
                          float f1 = paramIntent.getFloatExtra("no.nordicsemi.android.dfu.extra.EXTRA_SPEED_B_PER_MS", 0.0F);
                          float f2 = paramIntent.getFloatExtra("no.nordicsemi.android.dfu.extra.EXTRA_AVG_SPEED_B_PER_MS", 0.0F);
                          j = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_PART_CURRENT", 0);
                          int k = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_PARTS_TOTAL", 0);
                          switch (i)
                          {
                          default:
                            if (i == 0)
                            {
                              if (localDfuProgressListener1 != null)
                                localDfuProgressListener1.onDfuProcessStarted(paramContext);
                              if (localDfuProgressListener2 != null)
                                localDfuProgressListener2.onDfuProcessStarted(paramContext);
                            }
                            if (localDfuProgressListener1 != null)
                              localDfuProgressListener1.onProgressChanged(paramContext, i, f1, f2, j, k);
                            if (localDfuProgressListener2 == null)
                              break label38;
                            localDfuProgressListener2.onProgressChanged(paramContext, i, f1, f2, j, k);
                            return;
                            if (str.equals("no.nordicsemi.android.dfu.broadcast.BROADCAST_PROGRESS"))
                            {
                              i = 0;
                              continue;
                              if (str.equals("no.nordicsemi.android.dfu.broadcast.BROADCAST_ERROR"))
                                i = 1;
                            }
                            break;
                          case -1:
                          case -2:
                          case -3:
                          case -4:
                          case -5:
                          case -6:
                          case -7:
                          }
                          break;
                        case 1:
                        }
                      if (localDfuProgressListener1 != null)
                        localDfuProgressListener1.onDeviceConnecting(paramContext);
                    }
                    while (localDfuProgressListener2 == null);
                    localDfuProgressListener2.onDeviceConnecting(paramContext);
                    return;
                    if (localDfuProgressListener1 != null)
                    {
                      localDfuProgressListener1.onDeviceConnected(paramContext);
                      localDfuProgressListener1.onDfuProcessStarting(paramContext);
                    }
                  }
                  while (localDfuProgressListener2 == null);
                  localDfuProgressListener2.onDeviceConnected(paramContext);
                  localDfuProgressListener2.onDfuProcessStarting(paramContext);
                  return;
                  if (localDfuProgressListener1 != null)
                    localDfuProgressListener1.onEnablingDfuMode(paramContext);
                }
                while (localDfuProgressListener2 == null);
                localDfuProgressListener2.onEnablingDfuMode(paramContext);
                return;
                if (localDfuProgressListener1 != null)
                  localDfuProgressListener1.onFirmwareValidating(paramContext);
              }
              while (localDfuProgressListener2 == null);
              localDfuProgressListener2.onFirmwareValidating(paramContext);
              return;
              if (localDfuProgressListener1 != null)
                localDfuProgressListener1.onDeviceDisconnecting(paramContext);
            }
            while (localDfuProgressListener2 == null);
            localDfuProgressListener2.onDeviceDisconnecting(paramContext);
            return;
            if (localDfuProgressListener1 != null)
            {
              localDfuProgressListener1.onDeviceDisconnected(paramContext);
              localDfuProgressListener1.onDfuCompleted(paramContext);
            }
          }
          while (localDfuProgressListener2 == null);
          localDfuProgressListener2.onDeviceDisconnected(paramContext);
          localDfuProgressListener2.onDfuCompleted(paramContext);
          return;
          if (localDfuProgressListener1 != null)
          {
            localDfuProgressListener1.onDeviceDisconnected(paramContext);
            localDfuProgressListener1.onDfuAborted(paramContext);
          }
        }
        while (localDfuProgressListener2 == null);
        localDfuProgressListener2.onDeviceDisconnected(paramContext);
        localDfuProgressListener2.onDfuAborted(paramContext);
        return;
        i = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_DATA", 0);
        j = paramIntent.getIntExtra("no.nordicsemi.android.dfu.extra.EXTRA_ERROR_TYPE", 0);
        if (localDfuProgressListener1 != null)
          localDfuProgressListener1.onDeviceDisconnected(paramContext);
        if (localDfuProgressListener2 != null)
          localDfuProgressListener2.onDeviceDisconnected(paramContext);
        switch (j)
        {
        default:
          if (localDfuProgressListener1 != null)
            localDfuProgressListener1.onError(paramContext, i, j, a.b(i));
          break;
        case 1:
        }
      }
      while (localDfuProgressListener2 == null);
      localDfuProgressListener2.onError(paramContext, i, j, a.b(i));
      return;
      if (localDfuProgressListener1 != null)
        localDfuProgressListener1.onError(paramContext, i, j, a.a(i));
    }
    while (localDfuProgressListener2 == null);
    localDfuProgressListener2.onError(paramContext, i, j, a.a(i));
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     no.nordicsemi.android.dfu.DfuServiceListenerHelper.ProgressBroadcastsReceiver
 * JD-Core Version:    0.6.2
 */