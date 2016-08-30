package com.facebook.model;

public final class OpenGraphAction$Factory
{
  @Deprecated
  public static OpenGraphAction createForPost()
  {
    return createForPost(OpenGraphAction.class, null);
  }

  public static <T extends OpenGraphAction> T createForPost(Class<T> paramClass, String paramString)
  {
    paramClass = (OpenGraphAction)GraphObject.Factory.create(paramClass);
    if (paramString != null)
      paramClass.setType(paramString);
    return paramClass;
  }

  public static OpenGraphAction createForPost(String paramString)
  {
    return createForPost(OpenGraphAction.class, paramString);
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.model.OpenGraphAction.Factory
 * JD-Core Version:    0.6.2
 */