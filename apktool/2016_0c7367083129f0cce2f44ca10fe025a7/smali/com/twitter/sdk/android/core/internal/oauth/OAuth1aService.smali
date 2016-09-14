.class public final Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;
.super Lcom/twitter/sdk/android/core/internal/oauth/f;
.source "OAuth1aService.java"


# instance fields
.field public a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/q;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/f;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/internal/oauth/f;-><init>(Lcom/twitter/sdk/android/core/q;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/f;)V

    .line 1063
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->e:Lretrofit/RestAdapter;

    .line 57
    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->a:Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi;

    .line 58
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;
    .locals 7

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/fabric/sdk/android/services/network/q;->a(Ljava/lang/String;Z)Ljava/util/TreeMap;

    move-result-object v3

    .line 162
    const-string v0, "oauth_token"

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    const-string v1, "oauth_token_secret"

    invoke-virtual {v3, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    const-string v2, "screen_name"

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 166
    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    const-string v4, "user_id"

    invoke-virtual {v3, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 174
    :goto_1
    return-object v0

    .line 169
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 174
    :cond_2
    new-instance v3, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    new-instance v6, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v6, v0, v1}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v6, v2, v4, v5}, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;J)V

    move-object v0, v3

    goto :goto_1
.end method

.method public static a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-string v0, "twittersdk://callback"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "version"

    .line 2059
    const-string v2, "1.3.1.37"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "app"

    .line 2082
    iget-object v2, p0, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/16 v8, 0x26

    .line 151
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lcom/twitter/sdk/android/core/TwitterAuthToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/twitter/sdk/android/core/internal/oauth/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3065
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 3066
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 3071
    iget-object v3, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    .line 3072
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lio/fabric/sdk/android/services/network/q;->a(Ljava/net/URI;Z)Ljava/util/TreeMap;

    move-result-object v4

    .line 3073
    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->g:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 3074
    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->g:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 3078
    :cond_0
    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->d:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 3079
    const-string v5, "oauth_callback"

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->d:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3081
    :cond_1
    const-string v5, "oauth_consumer_key"

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 4082
    iget-object v6, v6, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a:Ljava/lang/String;

    .line 3081
    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3082
    const-string v5, "oauth_nonce"

    invoke-virtual {v4, v5, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    const-string v5, "oauth_signature_method"

    const-string v6, "HMAC-SHA1"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    const-string v5, "oauth_timestamp"

    invoke-virtual {v4, v5, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->c:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->c:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 3086
    const-string v5, "oauth_token"

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->c:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v6, v6, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3088
    :cond_2
    const-string v5, "oauth_version"

    const-string v6, "1.0"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->e:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lio/fabric/sdk/android/services/network/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v4}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/util/TreeMap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3098
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3056
    invoke-virtual {v0, v3}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4153
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "OAuth"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4154
    const-string v5, "oauth_callback"

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->d:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4155
    const-string v5, "oauth_consumer_key"

    iget-object v6, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->b:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 5082
    iget-object v6, v6, Lcom/twitter/sdk/android/core/TwitterAuthConfig;->a:Ljava/lang/String;

    .line 4155
    invoke-static {v4, v5, v6}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4156
    const-string v5, "oauth_nonce"

    invoke-static {v4, v5, v1}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4157
    const-string v1, "oauth_signature"

    invoke-static {v4, v1, v3}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4158
    const-string v1, "oauth_signature_method"

    const-string v3, "HMAC-SHA1"

    invoke-static {v4, v1, v3}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4159
    const-string v1, "oauth_timestamp"

    invoke-static {v4, v1, v2}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4160
    iget-object v1, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->c:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/twitter/sdk/android/core/internal/oauth/b;->c:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;->b:Ljava/lang/String;

    .line 4161
    :goto_0
    const-string v1, "oauth_token"

    invoke-static {v4, v1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    const-string v0, "oauth_version"

    const-string v1, "1.0"

    invoke-static {v4, v0, v1}, Lcom/twitter/sdk/android/core/internal/oauth/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4164
    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 153
    return-object v0

    .line 4160
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/f;)Lcom/twitter/sdk/android/core/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)",
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lretrofit/client/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/c;

    invoke-direct {v0, p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/c;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;Lcom/twitter/sdk/android/core/f;)V

    return-object v0
.end method
