.class public final Lcom/nut/blehunter/rxApi/a;
.super Ljava/lang/Object;
.source "AppRetrofit.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static final d:Ljava/lang/Object;

.field private static e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

.field private static f:Lcom/nut/blehunter/rxApi/service/AccountService;

.field private static g:Lcom/nut/blehunter/rxApi/service/NutService;

.field private static h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

.field private static i:Lcom/nut/blehunter/rxApi/service/FriendsService;

.field private static j:Lcom/nut/blehunter/rxApi/service/RegionService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    .line 49
    const-string v0, "https://api.find.nutspace.com/"

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->a:Ljava/lang/String;

    .line 50
    const-string v0, "https://qa-find.nutspace.com/"

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->b:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->a:Ljava/lang/String;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->c:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    .line 54
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->f:Lcom/nut/blehunter/rxApi/service/AccountService;

    .line 56
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->g:Lcom/nut/blehunter/rxApi/service/NutService;

    .line 58
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

    .line 60
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->i:Lcom/nut/blehunter/rxApi/service/FriendsService;

    .line 62
    sput-object v1, Lcom/nut/blehunter/rxApi/a;->j:Lcom/nut/blehunter/rxApi/service/RegionService;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;
    .locals 7

    .prologue
    .line 213
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    const-string v1, "ret"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 215
    if-eqz v1, :cond_2

    .line 216
    const-string v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    if-eqz p1, :cond_1

    const/16 v3, 0xca

    if-ne v1, v3, :cond_1

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    const-string v3, "type"

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Landroid/content/Intent;)V

    .line 3092
    :cond_0
    :goto_0
    new-instance v0, Lcom/nut/blehunter/rxApi/model/ApiError;

    invoke-direct {v0, v1, v2}, Lcom/nut/blehunter/rxApi/model/ApiError;-><init>(ILjava/lang/String;)V

    .line 242
    :goto_1
    return-object v0

    .line 221
    :cond_1
    const/16 v3, 0xe1

    if-ne v1, v3, :cond_0

    sget-boolean v3, Lcom/nut/blehunter/NutTrackerApplication;->b:Z

    if-nez v3, :cond_0

    .line 222
    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    const-string v3, "downloadUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    const-string v4, "description"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 227
    const-string v5, "type"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    const-string v5, "downloadUrl"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v3, "description"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {v4}, Lcom/nut/blehunter/rxApi/a;->a(Landroid/content/Intent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 237
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    goto :goto_1

    .line 238
    :catch_1
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 240
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    goto :goto_1

    .line 242
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    if-nez v0, :cond_0

    .line 66
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object v0
.end method

.method private static a(Z)Lretrofit2/Retrofit;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    if-eqz p0, :cond_1

    .line 121
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Lcom/nut/blehunter/rxApi/d;

    iget-object v1, v1, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nut/blehunter/rxApi/d;-><init>(Ljava/lang/String;)V

    .line 1150
    :goto_0
    new-instance v1, Lokhttp3/ao;

    invoke-direct {v1}, Lokhttp3/ao;-><init>()V

    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->h()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    .line 1595
    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    new-instance v0, Lcom/nut/blehunter/rxApi/i;

    invoke-direct {v0}, Lcom/nut/blehunter/rxApi/i;-><init>()V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lcom/nut/blehunter/rxApi/i;

    invoke-direct {v0}, Lcom/nut/blehunter/rxApi/i;-><init>()V

    goto :goto_0

    .line 1596
    :cond_2
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v3

    invoke-virtual {v3, v2}, Lokhttp3/internal/d/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 1597
    if-nez v3, :cond_3

    .line 1598
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to extract the trust manager on "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", sslSocketFactory is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1599
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1601
    :cond_3
    iput-object v2, v1, Lokhttp3/ao;->l:Ljavax/net/ssl/SSLSocketFactory;

    .line 2041
    invoke-static {}, Lokhttp3/internal/d/g;->b()Lokhttp3/internal/d/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lokhttp3/internal/d/g;->a(Ljavax/net/ssl/X509TrustManager;)Lokhttp3/internal/e/b;

    move-result-object v2

    .line 1602
    iput-object v2, v1, Lokhttp3/ao;->m:Lokhttp3/internal/e/b;

    .line 1150
    new-instance v2, Lcom/nut/blehunter/rxApi/c;

    invoke-direct {v2, v4}, Lcom/nut/blehunter/rxApi/c;-><init>(B)V

    .line 2653
    iput-object v2, v1, Lokhttp3/ao;->n:Ljavax/net/ssl/HostnameVerifier;

    .line 2811
    iget-object v2, v1, Lokhttp3/ao;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2830
    new-instance v0, Lokhttp3/am;

    invoke-direct {v0, v1, v4}, Lokhttp3/am;-><init>(Lokhttp3/ao;B)V

    .line 139
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    sget-object v2, Lcom/nut/blehunter/rxApi/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/am;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/rxApi/k;

    invoke-direct {v1}, Lcom/nut/blehunter/rxApi/k;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 254
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 255
    const-class v1, Lcom/nut/blehunter/ui/DialogBoxForPushActivity;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const/high16 v1, 0x30000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    const-string v1, "push_msg"

    new-instance v2, Lcom/nut/blehunter/entity/CommonPushMsg;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/CommonPushMsg;-><init>()V

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 203
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v2, "ret"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 206
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Lcom/nut/blehunter/rxApi/service/AccountService;
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->f:Lcom/nut/blehunter/rxApi/service/AccountService;

    if-nez v0, :cond_0

    .line 75
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/AccountService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/AccountService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->f:Lcom/nut/blehunter/rxApi/service/AccountService;

    .line 77
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->f:Lcom/nut/blehunter/rxApi/service/AccountService;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Lcom/nut/blehunter/rxApi/service/NutService;
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->g:Lcom/nut/blehunter/rxApi/service/NutService;

    if-nez v0, :cond_0

    .line 84
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/NutService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/NutService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->g:Lcom/nut/blehunter/rxApi/service/NutService;

    .line 86
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->g:Lcom/nut/blehunter/rxApi/service/NutService;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static d()Lcom/nut/blehunter/rxApi/service/FriendsService;
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->i:Lcom/nut/blehunter/rxApi/service/FriendsService;

    if-nez v0, :cond_0

    .line 93
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/FriendsService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/FriendsService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->i:Lcom/nut/blehunter/rxApi/service/FriendsService;

    .line 95
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->i:Lcom/nut/blehunter/rxApi/service/FriendsService;

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Lcom/nut/blehunter/rxApi/service/UploadFileService;
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

    if-nez v0, :cond_0

    .line 102
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/UploadFileService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/UploadFileService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static f()Lcom/nut/blehunter/rxApi/service/RegionService;
    .locals 3

    .prologue
    .line 110
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->j:Lcom/nut/blehunter/rxApi/service/RegionService;

    if-nez v0, :cond_0

    .line 111
    sget-object v1, Lcom/nut/blehunter/rxApi/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/a;->a(Z)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/nut/blehunter/rxApi/service/RegionService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/rxApi/service/RegionService;

    sput-object v0, Lcom/nut/blehunter/rxApi/a;->j:Lcom/nut/blehunter/rxApi/service/RegionService;

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    sget-object v0, Lcom/nut/blehunter/rxApi/a;->j:Lcom/nut/blehunter/rxApi/service/RegionService;

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->h:Lcom/nut/blehunter/rxApi/service/UploadFileService;

    .line 194
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->g:Lcom/nut/blehunter/rxApi/service/NutService;

    .line 195
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->f:Lcom/nut/blehunter/rxApi/service/AccountService;

    .line 196
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->e:Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    .line 197
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->i:Lcom/nut/blehunter/rxApi/service/FriendsService;

    .line 198
    sput-object v0, Lcom/nut/blehunter/rxApi/a;->j:Lcom/nut/blehunter/rxApi/service/RegionService;

    .line 199
    return-void
.end method

.method private static h()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 158
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/nut/blehunter/rxApi/b;

    invoke-direct {v2}, Lcom/nut/blehunter/rxApi/b;-><init>()V

    aput-object v2, v0, v1

    .line 176
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 177
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 179
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 181
    :catch_1
    move-exception v0

    goto :goto_0
.end method
