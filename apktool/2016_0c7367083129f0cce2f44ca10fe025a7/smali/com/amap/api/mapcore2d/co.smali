.class public Lcom/amap/api/mapcore2d/co;
.super Ljava/lang/Object;
.source "AuthManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/amap/api/mapcore2d/cv;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, -0x1

    sput v0, Lcom/amap/api/mapcore2d/co;->a:I

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/amap/api/mapcore2d/co;->b:Ljava/lang/String;

    .line 26
    const-string v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/amap/api/mapcore2d/co;->d:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore2d/co;->e:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/amap/api/mapcore2d/co;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 160
    :try_start_0
    const-string v0, "resType"

    const-string v2, "json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "encode"

    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/amap/api/mapcore2d/cp;->a()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v2, "ts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v2, "key"

    invoke-static {p0}, Lcom/amap/api/mapcore2d/cm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cm;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-static {v2}, Lcom/amap/api/mapcore2d/cw;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    const-string v3, "scode"

    invoke-static {p0, v0, v2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-object v1

    .line 172
    :catch_0
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "gParams"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cm;->a(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 84
    const-class v0, Lcom/amap/api/mapcore2d/co;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 35
    sput-object p1, Lcom/amap/api/mapcore2d/co;->c:Lcom/amap/api/mapcore2d/cv;

    .line 39
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore2d/co;->a()Ljava/lang/String;

    move-result-object v1

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v3, "User-Agent"

    sget-object v4, Lcom/amap/api/mapcore2d/co;->c:Lcom/amap/api/mapcore2d/cv;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/cv;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "X-INFO"

    sget-object v4, Lcom/amap/api/mapcore2d/co;->c:Lcom/amap/api/mapcore2d/cv;

    const/4 v5, 0x0

    .line 47
    invoke-static {p0, v4, v5, p2}, Lcom/amap/api/mapcore2d/cp;->a(Landroid/content/Context;Lcom/amap/api/mapcore2d/cv;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v3, "logversion"

    const-string v4, "2.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "platinfo"

    const-string v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/amap/api/mapcore2d/co;->c:Lcom/amap/api/mapcore2d/cv;

    .line 52
    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/cv;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/amap/api/mapcore2d/co;->c:Lcom/amap/api/mapcore2d/cv;

    invoke-virtual {v7}, Lcom/amap/api/mapcore2d/cv;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 50
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/amap/api/mapcore2d/ea;->a()Lcom/amap/api/mapcore2d/ea;

    move-result-object v3

    .line 54
    new-instance v4, Lcom/amap/api/mapcore2d/cx;

    invoke-direct {v4}, Lcom/amap/api/mapcore2d/cx;-><init>()V

    .line 55
    invoke-static {p0}, Lcom/amap/api/mapcore2d/ct;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/mapcore2d/cx;->a(Ljava/net/Proxy;)V

    .line 56
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/cx;->a(Ljava/util/Map;)V

    .line 57
    invoke-static {p0}, Lcom/amap/api/mapcore2d/co;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 58
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore2d/cx;->b(Ljava/util/Map;)V

    .line 59
    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore2d/cx;->a(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore2d/ea;->b(Lcom/amap/api/mapcore2d/eg;)[B

    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/amap/api/mapcore2d/co;->a([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 66
    :goto_0
    return v0

    .line 64
    :catch_0
    move-exception v1

    const-string v2, "Auth"

    const-string v3, "getAuth"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 107
    if-nez p0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore2d/cw;->a([B)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 115
    if-ne v2, v0, :cond_5

    .line 116
    const/4 v2, 0x1

    sput v2, Lcom/amap/api/mapcore2d/co;->a:I

    .line 121
    :cond_2
    :goto_1
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/amap/api/mapcore2d/co;->b:Ljava/lang/String;

    .line 124
    :cond_3
    sget v2, Lcom/amap/api/mapcore2d/co;->a:I

    if-nez v2, :cond_4

    .line 125
    const-string v2, "AuthFailure"

    sget-object v3, Lcom/amap/api/mapcore2d/co;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_4
    sget v2, Lcom/amap/api/mapcore2d/co;->a:I

    if-eq v2, v0, :cond_0

    move v0, v1

    .line 130
    goto :goto_0

    .line 117
    :cond_5
    if-nez v2, :cond_2

    .line 118
    const/4 v2, 0x0

    sput v2, Lcom/amap/api/mapcore2d/co;->a:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    .line 153
    goto :goto_0

    .line 151
    :catch_1
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
