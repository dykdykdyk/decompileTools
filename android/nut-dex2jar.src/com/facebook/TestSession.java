package com.facebook;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphUser;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TestSession extends Session
{
  private static final String LOG_TAG = "FacebookSDK.TestSession";
  private static Map<String, TestSession.TestAccount> appTestAccounts;
  private static final long serialVersionUID = 1L;
  private static String testApplicationId;
  private static String testApplicationSecret;
  private final TestSession.Mode mode;
  private final List<String> requestedPermissions;
  private final String sessionUniqueUserTag;
  private String testAccountId;
  private String testAccountUserName;
  private boolean wasAskedToExtendAccessToken;

  static
  {
    if (!TestSession.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  TestSession(Activity paramActivity, List<String> paramList, TokenCachingStrategy paramTokenCachingStrategy, String paramString, TestSession.Mode paramMode)
  {
    super(paramActivity, testApplicationId, paramTokenCachingStrategy);
    Validate.notNull(paramList, "permissions");
    Validate.notNullOrEmpty(testApplicationId, "testApplicationId");
    Validate.notNullOrEmpty(testApplicationSecret, "testApplicationSecret");
    this.sessionUniqueUserTag = paramString;
    this.mode = paramMode;
    this.requestedPermissions = paramList;
  }

  public static TestSession createSessionWithPrivateUser(Activity paramActivity, List<String> paramList)
  {
    return createTestSession(paramActivity, paramList, TestSession.Mode.PRIVATE, null);
  }

  public static TestSession createSessionWithSharedUser(Activity paramActivity, List<String> paramList)
  {
    return createSessionWithSharedUser(paramActivity, paramList, null);
  }

  public static TestSession createSessionWithSharedUser(Activity paramActivity, List<String> paramList, String paramString)
  {
    return createTestSession(paramActivity, paramList, TestSession.Mode.SHARED, paramString);
  }

  private TestSession.TestAccount createTestAccountAndFinishAuth()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("installed", "true");
    localBundle.putString("permissions", getPermissionsString());
    localBundle.putString("access_token", getAppAccessToken());
    if (this.mode == TestSession.Mode.SHARED)
      localBundle.putString("name", String.format("Shared %s Testuser", new Object[] { getSharedTestAccountIdentifier() }));
    Object localObject = new Request(null, String.format("%s/accounts/test-users", new Object[] { testApplicationId }), localBundle, HttpMethod.POST).executeAndWait();
    FacebookRequestError localFacebookRequestError = ((Response)localObject).getError();
    localObject = (TestSession.TestAccount)((Response)localObject).getGraphObjectAs(TestSession.TestAccount.class);
    if (localFacebookRequestError != null)
    {
      finishAuthOrReauth(null, localFacebookRequestError.getException());
      return null;
    }
    assert (localObject != null);
    if (this.mode == TestSession.Mode.SHARED)
    {
      ((TestSession.TestAccount)localObject).setName(localBundle.getString("name"));
      storeTestAccount((TestSession.TestAccount)localObject);
    }
    finishAuthWithTestAccount((TestSession.TestAccount)localObject);
    return localObject;
  }

  // ERROR //
  private static TestSession createTestSession(Activity paramActivity, List<String> paramList, TestSession.Mode paramMode, String paramString)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 43	com/facebook/TestSession:testApplicationId	Ljava/lang/String;
    //   6: invokestatic 190	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   9: ifne +12 -> 21
    //   12: getstatic 61	com/facebook/TestSession:testApplicationSecret	Ljava/lang/String;
    //   15: invokestatic 190	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   18: ifeq +19 -> 37
    //   21: new 192	com/facebook/FacebookException
    //   24: dup
    //   25: ldc 194
    //   27: invokespecial 196	com/facebook/FacebookException:<init>	(Ljava/lang/String;)V
    //   30: athrow
    //   31: astore_0
    //   32: ldc 2
    //   34: monitorexit
    //   35: aload_0
    //   36: athrow
    //   37: aload_1
    //   38: invokestatic 199	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/util/Collection;)Z
    //   41: ifeq +46 -> 87
    //   44: iconst_2
    //   45: anewarray 123	java/lang/String
    //   48: dup
    //   49: iconst_0
    //   50: ldc 201
    //   52: aastore
    //   53: dup
    //   54: iconst_1
    //   55: ldc 203
    //   57: aastore
    //   58: invokestatic 209	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   61: astore_1
    //   62: new 2	com/facebook/TestSession
    //   65: dup
    //   66: aload_0
    //   67: aload_1
    //   68: new 211	com/facebook/TestSession$TestTokenCachingStrategy
    //   71: dup
    //   72: aconst_null
    //   73: invokespecial 214	com/facebook/TestSession$TestTokenCachingStrategy:<init>	(Lcom/facebook/TestSession$1;)V
    //   76: aload_3
    //   77: aload_2
    //   78: invokespecial 216	com/facebook/TestSession:<init>	(Landroid/app/Activity;Ljava/util/List;Lcom/facebook/TokenCachingStrategy;Ljava/lang/String;Lcom/facebook/TestSession$Mode;)V
    //   81: astore_0
    //   82: ldc 2
    //   84: monitorexit
    //   85: aload_0
    //   86: areturn
    //   87: goto -25 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   3	21	31	finally
    //   21	31	31	finally
    //   37	62	31	finally
    //   62	82	31	finally
  }

  private void deleteTestAccount(String paramString1, String paramString2)
  {
    Object localObject = new Bundle();
    ((Bundle)localObject).putString("access_token", paramString2);
    localObject = new Request(null, paramString1, (Bundle)localObject, HttpMethod.DELETE).executeAndWait();
    paramString2 = ((Response)localObject).getError();
    localObject = ((Response)localObject).getGraphObject();
    if (paramString2 != null)
      Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: %s", new Object[] { paramString1, paramString2.getException().toString() }));
    while ((((GraphObject)localObject).getProperty("FACEBOOK_NON_JSON_RESULT") != Boolean.valueOf(false)) && (((GraphObject)localObject).getProperty("success") != Boolean.valueOf(false)))
      return;
    Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: unknown reason", new Object[] { paramString1 }));
  }

  private void findOrCreateSharedTestAccount()
  {
    TestSession.TestAccount localTestAccount = findTestAccountMatchingIdentifier(getSharedTestAccountIdentifier());
    if (localTestAccount != null)
    {
      finishAuthWithTestAccount(localTestAccount);
      return;
    }
    createTestAccountAndFinishAuth();
  }

  private static TestSession.TestAccount findTestAccountMatchingIdentifier(String paramString)
  {
    try
    {
      retrieveTestAccountsForAppIfNeeded();
      Iterator localIterator = appTestAccounts.values().iterator();
      TestSession.TestAccount localTestAccount;
      boolean bool;
      do
      {
        if (!localIterator.hasNext())
          break;
        localTestAccount = (TestSession.TestAccount)localIterator.next();
        bool = localTestAccount.getName().contains(paramString);
      }
      while (!bool);
      for (paramString = localTestAccount; ; paramString = null)
        return paramString;
    }
    finally
    {
    }
    throw paramString;
  }

  private void finishAuthWithTestAccount(TestSession.TestAccount paramTestAccount)
  {
    this.testAccountId = paramTestAccount.getId();
    this.testAccountUserName = paramTestAccount.getName();
    finishAuthOrReauth(AccessToken.createFromString(paramTestAccount.getAccessToken(), this.requestedPermissions, AccessTokenSource.TEST_USER), null);
  }

  static final String getAppAccessToken()
  {
    return testApplicationId + "|" + testApplicationSecret;
  }

  private String getPermissionsString()
  {
    return TextUtils.join(",", this.requestedPermissions);
  }

  private String getSharedTestAccountIdentifier()
  {
    long l2 = getPermissionsString().hashCode();
    if (this.sessionUniqueUserTag != null);
    for (long l1 = this.sessionUniqueUserTag.hashCode() & 0xFFFFFFFF; ; l1 = 0L)
      return validNameStringFromInteger(l1 ^ l2 & 0xFFFFFFFF);
  }

  public static String getTestApplicationId()
  {
    try
    {
      String str = testApplicationId;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String getTestApplicationSecret()
  {
    try
    {
      String str = testApplicationSecret;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static void populateTestAccounts(Collection<TestSession.TestAccount> paramCollection, GraphObject paramGraphObject)
  {
    try
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        TestSession.TestAccount localTestAccount = (TestSession.TestAccount)paramCollection.next();
        localTestAccount.setName(((GraphUser)paramGraphObject.getPropertyAs(localTestAccount.getId(), GraphUser.class)).getName());
        storeTestAccount(localTestAccount);
      }
    }
    finally
    {
    }
  }

  private static void retrieveTestAccountsForAppIfNeeded()
  {
    while (true)
    {
      try
      {
        Object localObject1 = appTestAccounts;
        if (localObject1 != null)
          return;
        appTestAccounts = new HashMap();
        Request.setDefaultBatchApplicationId(testApplicationId);
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("access_token", getAppAccessToken());
        localObject1 = new Request(null, "app/accounts/test-users", (Bundle)localObject1, null);
        ((Request)localObject1).setBatchEntryName("testUsers");
        ((Request)localObject1).setBatchEntryOmitResultOnSuccess(false);
        Object localObject3 = new Bundle();
        ((Bundle)localObject3).putString("access_token", getAppAccessToken());
        ((Bundle)localObject3).putString("ids", "{result=testUsers:$.data.*.id}");
        ((Bundle)localObject3).putString("fields", "name");
        localObject3 = new Request(null, "", (Bundle)localObject3, null);
        ((Request)localObject3).setBatchEntryDependsOn("testUsers");
        localObject1 = Request.executeBatchAndWait(new Request[] { localObject1, localObject3 });
        if ((localObject1 == null) || (((List)localObject1).size() != 2))
          throw new FacebookException("Unexpected number of results from TestUsers batch query");
      }
      finally
      {
      }
      populateTestAccounts(((TestSession.TestAccountsResponse)((Response)localObject2.get(0)).getGraphObjectAs(TestSession.TestAccountsResponse.class)).getData(), ((Response)localObject2.get(1)).getGraphObject());
    }
  }

  public static void setTestApplicationId(String paramString)
  {
    try
    {
      if ((testApplicationId != null) && (!testApplicationId.equals(paramString)))
        throw new FacebookException("Can't have more than one test application ID");
    }
    finally
    {
    }
    testApplicationId = paramString;
  }

  public static void setTestApplicationSecret(String paramString)
  {
    try
    {
      if ((testApplicationSecret != null) && (!testApplicationSecret.equals(paramString)))
        throw new FacebookException("Can't have more than one test application secret");
    }
    finally
    {
    }
    testApplicationSecret = paramString;
  }

  private static void storeTestAccount(TestSession.TestAccount paramTestAccount)
  {
    try
    {
      appTestAccounts.put(paramTestAccount.getId(), paramTestAccount);
      return;
    }
    finally
    {
      paramTestAccount = finally;
    }
    throw paramTestAccount;
  }

  private String validNameStringFromInteger(long paramLong)
  {
    Object localObject = Long.toString(paramLong);
    StringBuilder localStringBuilder = new StringBuilder("Perm");
    localObject = ((String)localObject).toCharArray();
    int n = localObject.length;
    int j = 0;
    int i;
    for (int k = 0; j < n; k = i)
    {
      int m = localObject[j];
      i = m;
      if (m == k)
        i = (char)(m + 10);
      localStringBuilder.append((char)(i + 97 - 48));
      j += 1;
    }
    return localStringBuilder.toString();
  }

  void authorize(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    if (this.mode == TestSession.Mode.PRIVATE)
    {
      createTestAccountAndFinishAuth();
      return;
    }
    findOrCreateSharedTestAccount();
  }

  void extendAccessToken()
  {
    this.wasAskedToExtendAccessToken = true;
    super.extendAccessToken();
  }

  void fakeTokenRefreshAttempt()
  {
    setCurrentTokenRefreshRequest(new Session.TokenRefreshRequest(this));
  }

  void forceExtendAccessToken(boolean paramBoolean)
  {
    AccessToken localAccessToken = getTokenInfo();
    setTokenInfo(new AccessToken(localAccessToken.getToken(), new Date(), localAccessToken.getPermissions(), localAccessToken.getDeclinedPermissions(), AccessTokenSource.TEST_USER, new Date(0L)));
    setLastAttemptedTokenExtendDate(new Date(0L));
  }

  public final String getTestUserId()
  {
    return this.testAccountId;
  }

  public final String getTestUserName()
  {
    return this.testAccountUserName;
  }

  boolean getWasAskedToExtendAccessToken()
  {
    return this.wasAskedToExtendAccessToken;
  }

  void postStateChange(SessionState paramSessionState1, SessionState paramSessionState2, Exception paramException)
  {
    String str = this.testAccountId;
    super.postStateChange(paramSessionState1, paramSessionState2, paramException);
    if ((paramSessionState2.isClosed()) && (str != null) && (this.mode == TestSession.Mode.PRIVATE))
      deleteTestAccount(str, getAppAccessToken());
  }

  boolean shouldExtendAccessToken()
  {
    boolean bool = super.shouldExtendAccessToken();
    this.wasAskedToExtendAccessToken = false;
    return bool;
  }

  public final String toString()
  {
    String str = super.toString();
    return "{TestSession testUserId:" + this.testAccountId + " " + str + "}";
  }
}

/* Location:           C:\crazyd\work\ustone\odm2016031702\baidu\android\nut-dex2jar.jar
 * Qualified Name:     com.facebook.TestSession
 * JD-Core Version:    0.6.2
 */