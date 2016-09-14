.class public final Lcom/loc/da;
.super Ljava/lang/Object;
.source "LocNetManager.java"


# static fields
.field private static d:Lcom/loc/da;


# instance fields
.field a:Lcom/loc/bi;

.field b:Lcom/loc/bl;

.field c:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/da;->d:Lcom/loc/da;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/da;->a:Lcom/loc/bi;

    iput-object v0, p0, Lcom/loc/da;->b:Lcom/loc/bl;

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/da;->c:I

    sget v0, Lcom/loc/cr;->e:I

    iput v0, p0, Lcom/loc/da;->e:I

    invoke-static {}, Lcom/loc/bi;->a()Lcom/loc/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/da;->a:Lcom/loc/bi;

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/loc/da;
    .locals 2

    const-class v1, Lcom/loc/da;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/da;->d:Lcom/loc/da;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/da;

    invoke-direct {v0}, Lcom/loc/da;-><init>()V

    sput-object v0, Lcom/loc/da;->d:Lcom/loc/da;

    :cond_0
    sget-object v0, Lcom/loc/da;->d:Lcom/loc/da;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 0
    invoke-static {p1}, Lcom/loc/dn;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/da;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/cz;

    invoke-direct {v2}, Lcom/loc/cz;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10000
    iput-object v0, v2, Lcom/loc/cz;->a:Ljava/util/Map;

    .line 11000
    iput-object p2, v2, Lcom/loc/cz;->f:Ljava/lang/String;

    .line 12000
    iput-object p0, v2, Lcom/loc/cz;->g:[B

    .line 0
    invoke-static {p1}, Lcom/loc/el;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 13000
    iput-object v0, v2, Lcom/loc/bq;->e:Ljava/net/Proxy;

    .line 0
    sget v0, Lcom/loc/cr;->e:I

    .line 14000
    iput v0, v2, Lcom/loc/bq;->c:I

    .line 0
    sget v0, Lcom/loc/cr;->e:I

    .line 15000
    iput v0, v2, Lcom/loc/bq;->d:I

    .line 0
    :try_start_0
    invoke-static {v2}, Lcom/loc/bi;->b(Lcom/loc/bq;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/loc/dd;Ljava/lang/String;Z)Lcom/loc/br;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 0
    const-string v0, "httptimeout"

    invoke-static {p2, v0}, Lcom/loc/dn;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "httptimeout"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/da;->e:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/loc/dn;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/da;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LocNetManager"

    const-string v2, "req"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/loc/db;

    const-string v0, "loc"

    const-string v3, "2.8.0"

    invoke-static {v0, v3}, Lcom/loc/cr;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/loc/eo;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/loc/db;-><init>(Landroid/content/Context;Lcom/loc/eo;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gzipped"

    const-string v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 2.8.0"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KEY"

    invoke-static {p1}, Lcom/loc/dx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enginever"

    const-string v3, "4.2"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/ef;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/loc/dx;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/loc/ef;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loc"

    if-nez p5, :cond_2

    const-string v0, "locf"

    :cond_2
    const-string v3, "encr"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iput-boolean p5, v2, Lcom/loc/db;->i:Z

    .line 0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "2.8.0"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    iput-object v0, v2, Lcom/loc/db;->j:Ljava/lang/String;

    .line 3000
    iput-object v1, v2, Lcom/loc/db;->f:Ljava/util/Map;

    .line 4000
    iput-object p4, v2, Lcom/loc/db;->g:Ljava/lang/String;

    .line 0
    invoke-virtual {p3}, Lcom/loc/dd;->a()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dn;->a([B)[B

    move-result-object v0

    .line 5000
    iput-object v0, v2, Lcom/loc/db;->h:[B

    .line 0
    invoke-static {p1}, Lcom/loc/el;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    .line 6000
    iput-object v0, v2, Lcom/loc/bq;->e:Ljava/net/Proxy;

    .line 0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "output"

    const-string v3, "bin"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "policy"

    const-string v3, "2103"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7000
    iput-object v0, v2, Lcom/loc/db;->k:Ljava/util/Map;

    .line 0
    iget v0, p0, Lcom/loc/da;->e:I

    .line 8000
    iput v0, v2, Lcom/loc/bq;->c:I

    .line 0
    iget v0, p0, Lcom/loc/da;->e:I

    .line 9000
    iput v0, v2, Lcom/loc/bq;->d:I

    .line 0
    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v4

    invoke-static {v2}, Lcom/loc/bi;->c(Lcom/loc/bq;)Lcom/loc/br;

    move-result-object v0

    invoke-static {}, Lcom/loc/dn;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/loc/da;->c:I

    goto/16 :goto_1
.end method
