.class public Lcom/amap/api/mapcore2d/ea;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


# static fields
.field private static a:Lcom/amap/api/mapcore2d/ea;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/ea;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/amap/api/mapcore2d/ea;->a:Lcom/amap/api/mapcore2d/ea;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/amap/api/mapcore2d/ea;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/ea;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/ea;->a:Lcom/amap/api/mapcore2d/ea;

    .line 39
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore2d/ea;->a:Lcom/amap/api/mapcore2d/ea;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/amap/api/mapcore2d/eg;Z)Lcom/amap/api/mapcore2d/ei;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cl;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore2d/ea;->c(Lcom/amap/api/mapcore2d/eg;)V

    .line 149
    iget-object v0, p1, Lcom/amap/api/mapcore2d/eg;->e:Ljava/net/Proxy;

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 154
    :goto_0
    new-instance v1, Lcom/amap/api/mapcore2d/ed;

    iget v2, p1, Lcom/amap/api/mapcore2d/eg;->c:I

    iget v3, p1, Lcom/amap/api/mapcore2d/eg;->d:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore2d/ed;-><init>(IILjava/net/Proxy;Z)V

    .line 158
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/eg;->h()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/eg;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/eg;->i()[B

    move-result-object v3

    .line 158
    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/mapcore2d/ed;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/mapcore2d/ei;

    move-result-object v0

    .line 168
    return-object v0

    .line 152
    :cond_0
    iget-object v0, p1, Lcom/amap/api/mapcore2d/eg;->e:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    throw v0

    .line 165
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    new-instance v0, Lcom/amap/api/mapcore2d/cl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/amap/api/mapcore2d/eg;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cl;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ea;->a(Lcom/amap/api/mapcore2d/eg;Z)Lcom/amap/api/mapcore2d/ei;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    iget-object v0, v0, Lcom/amap/api/mapcore2d/ei;->a:[B

    .line 110
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    throw v0

    .line 105
    :catch_1
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore2d/cl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/amap/api/mapcore2d/eg;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cl;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore2d/ea;->a(Lcom/amap/api/mapcore2d/eg;Z)Lcom/amap/api/mapcore2d/ei;
    :try_end_0
    .catch Lcom/amap/api/mapcore2d/cl; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v0, v0, Lcom/amap/api/mapcore2d/ei;->a:[B

    .line 128
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    throw v0

    .line 121
    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/da;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/amap/api/mapcore2d/cl;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/amap/api/mapcore2d/eg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore2d/cl;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Lcom/amap/api/mapcore2d/cl;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/eg;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/eg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore2d/cl;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore2d/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    return-void
.end method
