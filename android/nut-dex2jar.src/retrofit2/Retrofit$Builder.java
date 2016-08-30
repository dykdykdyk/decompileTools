package retrofit2;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
import okhttp3.ad;
import okhttp3.am;
import okhttp3.h;

public final class Retrofit$Builder
{
  private List<CallAdapter.Factory> adapterFactories = new ArrayList();
  private ad baseUrl;
  private h callFactory;
  private Executor callbackExecutor;
  private List<Converter.Factory> converterFactories = new ArrayList();
  private Platform platform;
  private boolean validateEagerly;

  public Retrofit$Builder()
  {
    this(Platform.get());
  }

  Retrofit$Builder(Platform paramPlatform)
  {
    this.platform = paramPlatform;
    this.converterFactories.add(new BuiltInConverters());
  }

  public final Builder addCallAdapterFactory(CallAdapter.Factory paramFactory)
  {
    this.adapterFactories.add(Utils.checkNotNull(paramFactory, "factory == null"));
    return this;
  }

  public final Builder addConverterFactory(Converter.Factory paramFactory)
  {
    this.converterFactories.add(Utils.checkNotNull(paramFactory, "factory == null"));
    return this;
  }

  public final Builder baseUrl(String paramString)
  {
    Utils.checkNotNull(paramString, "baseUrl == null");
    ad localad = ad.e(paramString);
    if (localad == null)
      throw new IllegalArgumentException("Illegal URL: " + paramString);
    return baseUrl(localad);
  }

  public final Builder baseUrl(ad paramad)
  {
    Utils.checkNotNull(paramad, "baseUrl == null");
    List localList = paramad.d;
    if (!"".equals(localList.get(localList.size() - 1)))
      throw new IllegalArgumentException("baseUrl must end in /: " + paramad);
    this.baseUrl = paramad;
    return this;
  }

  public final Retrofit build()
  {
    if (this.baseUrl == null)
      throw new IllegalStateException("Base URL required.");
    Object localObject2 = this.callFactory;
    Object localObject1 = localObject2;
    if (localObject2 == null)
      localObject1 = new am();
    Object localObject3 = this.callbackExecutor;
    localObject2 = localObject3;
    if (localObject3 == null)
      localObject2 = this.platform.defaultCallbackExecutor();
    localObject3 = new ArrayList(this.adapterFactories);
    ((List)localObject3).add(this.platform.defaultCallAdapterFactory((Executor)localObject2));
    ArrayList localArrayList = new ArrayList(this.converterFactories);
    return new Retrofit((h)localObject1, this.baseUrl, localArrayList, (List)localObject3, (Executor)localObject2, this.validateEagerly);
  }

  public final Builder callFactory(h paramh)
  {
    this.callFactory = ((h)Utils.checkNotNull(paramh, "factory == null"));
    return this;
  }

  public final Builder callbackExecutor(Executor paramExecutor)
  {
    this.callbackExecutor = ((Executor)Utils.checkNotNull(paramExecutor, "executor == null"));
    return this;
  }

  public final Builder client(am paramam)
  {
    return callFactory((h)Utils.checkNotNull(paramam, "client == null"));
  }

  public final Builder validateEagerly(boolean paramBoolean)
  {
    this.validateEagerly = paramBoolean;
    return this;
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     retrofit2.Retrofit.Builder
 * JD-Core Version:    0.6.2
 */