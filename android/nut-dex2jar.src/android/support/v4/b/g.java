package android.support.v4.b;

import android.content.Context;
import android.support.v4.f.d;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public class g<D>
{
  boolean mAbandoned = false;
  boolean mContentChanged = false;
  Context mContext;
  int mId;
  i<D> mListener;
  h<D> mOnLoadCanceledListener;
  boolean mProcessingChange = false;
  boolean mReset = true;
  boolean mStarted = false;

  public g(Context paramContext)
  {
    this.mContext = paramContext.getApplicationContext();
  }

  public void abandon()
  {
    this.mAbandoned = true;
    onAbandon();
  }

  public boolean cancelLoad()
  {
    return onCancelLoad();
  }

  public void commitContentChanged()
  {
    this.mProcessingChange = false;
  }

  public String dataToString(D paramD)
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    d.a(paramD, localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public void deliverCancellation()
  {
    if (this.mOnLoadCanceledListener != null)
      this.mOnLoadCanceledListener.d();
  }

  public void deliverResult(D paramD)
  {
    if (this.mListener != null)
      this.mListener.a(this, paramD);
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mId=");
    paramPrintWriter.print(this.mId);
    paramPrintWriter.print(" mListener=");
    paramPrintWriter.println(this.mListener);
    if ((this.mStarted) || (this.mContentChanged) || (this.mProcessingChange))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStarted=");
      paramPrintWriter.print(this.mStarted);
      paramPrintWriter.print(" mContentChanged=");
      paramPrintWriter.print(this.mContentChanged);
      paramPrintWriter.print(" mProcessingChange=");
      paramPrintWriter.println(this.mProcessingChange);
    }
    if ((this.mAbandoned) || (this.mReset))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAbandoned=");
      paramPrintWriter.print(this.mAbandoned);
      paramPrintWriter.print(" mReset=");
      paramPrintWriter.println(this.mReset);
    }
  }

  public void forceLoad()
  {
    onForceLoad();
  }

  public Context getContext()
  {
    return this.mContext;
  }

  public int getId()
  {
    return this.mId;
  }

  public boolean isAbandoned()
  {
    return this.mAbandoned;
  }

  public boolean isReset()
  {
    return this.mReset;
  }

  public boolean isStarted()
  {
    return this.mStarted;
  }

  protected void onAbandon()
  {
  }

  protected boolean onCancelLoad()
  {
    return false;
  }

  public void onContentChanged()
  {
    if (this.mStarted)
    {
      forceLoad();
      return;
    }
    this.mContentChanged = true;
  }

  protected void onForceLoad()
  {
  }

  protected void onReset()
  {
  }

  public void onStartLoading()
  {
  }

  protected void onStopLoading()
  {
  }

  public void registerListener(int paramInt, i<D> parami)
  {
    if (this.mListener != null)
      throw new IllegalStateException("There is already a listener registered");
    this.mListener = parami;
    this.mId = paramInt;
  }

  public void registerOnLoadCanceledListener(h<D> paramh)
  {
    if (this.mOnLoadCanceledListener != null)
      throw new IllegalStateException("There is already a listener registered");
    this.mOnLoadCanceledListener = paramh;
  }

  public void reset()
  {
    onReset();
    this.mReset = true;
    this.mStarted = false;
    this.mAbandoned = false;
    this.mContentChanged = false;
    this.mProcessingChange = false;
  }

  public void rollbackContentChanged()
  {
    if (this.mProcessingChange)
      this.mContentChanged = true;
  }

  public final void startLoading()
  {
    this.mStarted = true;
    this.mReset = false;
    this.mAbandoned = false;
    onStartLoading();
  }

  public void stopLoading()
  {
    this.mStarted = false;
    onStopLoading();
  }

  public boolean takeContentChanged()
  {
    boolean bool = this.mContentChanged;
    this.mContentChanged = false;
    this.mProcessingChange |= bool;
    return bool;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    d.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.mId);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public void unregisterListener(i<D> parami)
  {
    if (this.mListener == null)
      throw new IllegalStateException("No listener register");
    if (this.mListener != parami)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.mListener = null;
  }

  public void unregisterOnLoadCanceledListener(h<D> paramh)
  {
    if (this.mOnLoadCanceledListener == null)
      throw new IllegalStateException("No listener register");
    if (this.mOnLoadCanceledListener != paramh)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.mOnLoadCanceledListener = null;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     android.support.v4.b.g
 * JD-Core Version:    0.6.2
 */