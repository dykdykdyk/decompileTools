.class public final Lcom/tencent/open/b/d;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:Lcom/tencent/open/b/d;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static declared-synchronized a()Lcom/tencent/open/b/d;
    .locals 2

    .prologue
    .line 23
    const-class v1, Lcom/tencent/open/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/tencent/open/b/d;

    invoke-direct {v0}, Lcom/tencent/open/b/d;-><init>()V

    sput-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;

    .line 26
    :cond_0
    sget-object v0, Lcom/tencent/open/b/d;->a:Lcom/tencent/open/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 108
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 109
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 112
    :goto_0
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v0, "http://c.isdspeed.qq.com/code.cgi"

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v0, "?domain=mobile.opensdk.com&cgi=opensdk&type="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&code=0&time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&rate=1&uin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "&data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 120
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    .line 1731
    new-instance v4, Lcom/tencent/open/b/m;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/tencent/open/b/m;-><init>(Lcom/tencent/open/b/g;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/tencent/open/utils/p;->a(Ljava/lang/Runnable;)V

    .line 121
    return-void

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 58
    const-string v6, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v11}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 79
    const-string v7, ""

    const-string v8, ""

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p4

    move-object v3, p2

    move-object v4, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/tencent/open/utils/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/tencent/open/b/g;->a()Lcom/tencent/open/b/g;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/tencent/open/b/g;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 82
    return-void
.end method
