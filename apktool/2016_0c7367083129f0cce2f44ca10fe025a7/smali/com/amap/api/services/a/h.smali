.class public Lcom/amap/api/services/a/h;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.amap.api.services"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Z)Lcom/amap/api/services/a/ba;
    .locals 6

    .prologue
    .line 79
    const-string v2, "getSDKInfo"

    .line 80
    const/4 v0, 0x0

    .line 82
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/ba$a;

    const-string v3, "sea"

    const-string v4, "3.4.0"

    const-string v5, "AMAP SDK Android Search 3.4.0"

    invoke-direct {v1, v3, v4, v5}, Lcom/amap/api/services/a/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/ba$a;->a([Ljava/lang/String;)Lcom/amap/api/services/a/ba$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/services/a/ba$a;->a(Z)Lcom/amap/api/services/a/ba$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba$a;->a()Lcom/amap/api/services/a/ba;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    const-string v3, "ConfigableConst"

    invoke-static {v1, v3, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    .line 55
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    const-string v0, "http://restapi.amap.com/v3"

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://restapi.amap.com/v3"

    goto :goto_0
.end method

.method public static b(Z)Lcom/amap/api/services/a/ba;
    .locals 6

    .prologue
    .line 91
    const-string v2, "getCloudSDKInfo"

    .line 92
    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/ba$a;

    const-string v3, "cloud"

    const-string v4, "3.4.0"

    const-string v5, "AMAP SDK Android Search 3.4.0"

    invoke-direct {v1, v3, v4, v5}, Lcom/amap/api/services/a/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/amap/api/services/a/h;->a:[Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v3}, Lcom/amap/api/services/a/ba$a;->a([Ljava/lang/String;)Lcom/amap/api/services/a/ba$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/services/a/ba$a;->a(Z)Lcom/amap/api/services/a/ba$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/services/a/ba$a;->a()Lcom/amap/api/services/a/ba;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    const-string v3, "ConfigableConst"

    invoke-static {v1, v3, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getProtocol()I

    move-result v0

    .line 65
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 66
    const-string v0, "http://yuntuapi.amap.com"

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://yuntuapi.amap.com"

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/amap/api/services/core/ServiceSettings;->getInstance()Lcom/amap/api/services/core/ServiceSettings;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/amap/api/services/core/ServiceSettings;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
