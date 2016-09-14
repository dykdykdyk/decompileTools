.class final Lcom/crashlytics/android/core/by;
.super Ljava/lang/Object;
.source "ReportUploader.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/io/FilenameFilter;

.field private static final c:[S


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Lcom/crashlytics/android/core/ar;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/crashlytics/android/core/bz;

    invoke-direct {v0}, Lcom/crashlytics/android/core/bz;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/by;->b:Ljava/io/FilenameFilter;

    .line 30
    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/by;->a:Ljava/util/Map;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crashlytics/android/core/by;->c:[S

    return-void

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/ar;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/by;->d:Ljava/lang/Object;

    .line 42
    if-nez p2, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/crashlytics/android/core/by;->e:Lcom/crashlytics/android/core/ar;

    .line 46
    iput-object p1, p0, Lcom/crashlytics/android/core/by;->f:Ljava/lang/String;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/crashlytics/android/core/by;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crashlytics/android/core/by;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic b()[S
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/crashlytics/android/core/by;->c:[S

    return-object v0
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/core/bx;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "Checking for crash reports..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/crashlytics/android/core/h;->f()Lcom/crashlytics/android/core/h;

    move-result-object v1

    .line 1745
    iget-object v2, v1, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 105
    iget-object v3, p0, Lcom/crashlytics/android/core/by;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 1888
    :try_start_0
    iget-object v4, v1, Lcom/crashlytics/android/core/h;->c:Ljava/io/File;

    if-nez v4, :cond_0

    .line 1889
    new-instance v4, Lio/fabric/sdk/android/services/d/b;

    invoke-direct {v4, v1}, Lio/fabric/sdk/android/services/d/b;-><init>(Lio/fabric/sdk/android/o;)V

    invoke-virtual {v4}, Lio/fabric/sdk/android/services/d/b;->a()Ljava/io/File;

    move-result-object v4

    iput-object v4, v1, Lcom/crashlytics/android/core/h;->c:Ljava/io/File;

    .line 1891
    :cond_0
    iget-object v1, v1, Lcom/crashlytics/android/core/h;->c:Ljava/io/File;

    .line 106
    sget-object v4, Lcom/crashlytics/android/core/by;->b:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 2288
    iget-object v1, v2, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 108
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 111
    array-length v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    .line 112
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v7

    const-string v8, "CrashlyticsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found crash report "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v7, Lcom/crashlytics/android/core/cc;

    invoke-direct {v7, v6}, Lcom/crashlytics/android/core/cc;-><init>(Ljava/io/File;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 116
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 117
    if-eqz v2, :cond_3

    .line 118
    array-length v5, v2

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_3

    aget-object v6, v2, v1

    .line 119
    invoke-static {v6}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 121
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 127
    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 128
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Found invalid session: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    new-instance v5, Lcom/crashlytics/android/core/ay;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-direct {v5, v1, v0}, Lcom/crashlytics/android/core/ay;-><init>(Ljava/lang/String;[Ljava/io/File;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 135
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 136
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No reports found."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_5
    return-object v3
.end method

.method public final declared-synchronized a(F)V
    .locals 3

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/by;->g:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crashlytics/android/core/ca;

    invoke-direct {v1, p0, p1}, Lcom/crashlytics/android/core/ca;-><init>(Lcom/crashlytics/android/core/by;F)V

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/by;->g:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/core/by;->g:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lcom/crashlytics/android/core/bx;)Z
    .locals 7

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    iget-object v2, p0, Lcom/crashlytics/android/core/by;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 77
    :try_start_0
    new-instance v1, Lcom/crashlytics/android/core/aq;

    iget-object v3, p0, Lcom/crashlytics/android/core/by;->f:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Lcom/crashlytics/android/core/aq;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/bx;)V

    .line 78
    iget-object v3, p0, Lcom/crashlytics/android/core/by;->e:Lcom/crashlytics/android/core/ar;

    invoke-interface {v3, v1}, Lcom/crashlytics/android/core/ar;->a(Lcom/crashlytics/android/core/aq;)Z

    move-result v3

    .line 80
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "Crashlytics report upload "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    const-string v1, "complete: "

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/crashlytics/android/core/bx;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v3, :cond_0

    .line 84
    invoke-interface {p1}, Lcom/crashlytics/android/core/bx;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const/4 v0, 0x1

    .line 93
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    return v0

    .line 80
    :cond_1
    :try_start_2
    const-string v1, "FAILED: "
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 90
    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error occurred sending report "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
