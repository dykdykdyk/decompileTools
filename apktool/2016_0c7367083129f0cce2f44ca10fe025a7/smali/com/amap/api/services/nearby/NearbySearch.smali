.class public Lcom/amap/api/services/nearby/NearbySearch;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# static fields
.field public static final AMAP:I = 0x1

.field public static final GPS:I

.field private static a:Lcom/amap/api/services/nearby/NearbySearch;


# instance fields
.field private b:Lcom/amap/api/services/interfaces/INearbySearch;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/ba;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.NearbySearchWrapper"

    const-class v3, Lcom/amap/api/services/a/am;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cb;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/INearbySearch;

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/amap/api/services/a/am;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/am;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    .line 65
    :cond_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->destroy()V

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    .line 323
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 4

    .prologue
    .line 307
    const-class v1, Lcom/amap/api/services/nearby/NearbySearch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 309
    :try_start_1
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbySearch;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 316
    monitor-exit v1

    return-void

    .line 311
    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "NearbySearch"

    const-string v3, "destryoy"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amap/api/services/nearby/NearbySearch;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/amap/api/services/nearby/NearbySearch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/amap/api/services/nearby/NearbySearch;

    invoke-direct {v0, p0}, Lcom/amap/api/services/nearby/NearbySearch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;

    .line 53
    :cond_0
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearch;->a:Lcom/amap/api/services/nearby/NearbySearch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->addNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearUserInfoAsyn()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->clearUserInfoAsyn()V

    .line 95
    :cond_0
    return-void
.end method

.method public declared-synchronized removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->removeNearbyListener(Lcom/amap/api/services/nearby/NearbySearch$NearbyListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->searchNearbyInfo(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)Lcom/amap/api/services/nearby/NearbySearchResult;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->searchNearbyInfoAsyn(Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;)V

    .line 148
    :cond_0
    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->setUserID(Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method

.method public declared-synchronized startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1, p2}, Lcom/amap/api/services/interfaces/INearbySearch;->startUploadNearbyInfoAuto(Lcom/amap/api/services/nearby/UploadInfoCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopUploadNearbyInfoAuto()V
    .locals 1

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/INearbySearch;->stopUploadNearbyInfoAuto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch;->b:Lcom/amap/api/services/interfaces/INearbySearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/INearbySearch;->uploadNearbyInfoAsyn(Lcom/amap/api/services/nearby/UploadInfo;)V

    .line 138
    :cond_0
    return-void
.end method
