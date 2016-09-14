.class public final Lcom/loc/cw;
.super Ljava/lang/Object;
.source "HeatMap.java"


# static fields
.field private static c:Lcom/loc/cw;


# instance fields
.field a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/cw;->c:Lcom/loc/cw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/cw;->b:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/cw;
    .locals 2

    const-class v1, Lcom/loc/cw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/cw;->c:Lcom/loc/cw;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/cw;

    invoke-direct {v0}, Lcom/loc/cw;-><init>()V

    sput-object v0, Lcom/loc/cw;->c:Lcom/loc/cw;

    :cond_0
    sget-object v0, Lcom/loc/cw;->c:Lcom/loc/cw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/loc/ci;->a:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loc/cw;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/loc/dn;->b()J

    :try_start_0
    invoke-static {}, Lcom/loc/cv;->a()Lcom/loc/cv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/cv;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cw;->b:Z

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HeatMap"

    const-string v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .locals 9

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/loc/dn;->a(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/loc/ci;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_2

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLat()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLon()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ck;->a(DD)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLat()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLon()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ck;->a(DD)Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLat()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lon"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getLon()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/loc/dn;->a()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/loc/cw;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "HeatMap"

    const-string v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 7

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/loc/ci;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string v0, "x"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    invoke-virtual {v1, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "num"

    const-string v2, "num"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/loc/cw;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x78

    if-lt p4, v0, :cond_2

    sget-boolean v0, Lcom/loc/cr;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/cr;->n:Z

    const-string v0, "pref"

    const-string v1, "ddex"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/loc/dl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    if-eqz p7, :cond_0

    :try_start_4
    invoke-static {}, Lcom/loc/cv;->a()Lcom/loc/cv;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/loc/cv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "HeatMap"

    const-string v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_6
    const-string v0, "num"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_7
    const-string v2, "HeatMap"

    const-string v3, "update1"

    invoke-static {v0, v2, v3}, Lcom/loc/cr;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method
