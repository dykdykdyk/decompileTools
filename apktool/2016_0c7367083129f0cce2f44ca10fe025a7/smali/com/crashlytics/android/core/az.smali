.class final Lcom/crashlytics/android/core/az;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# static fields
.field private static final b:Lcom/crashlytics/android/core/ba;


# instance fields
.field a:Lcom/crashlytics/android/core/ax;

.field private final c:Landroid/content/Context;

.field private final d:Lio/fabric/sdk/android/services/d/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/crashlytics/android/core/ba;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/ba;-><init>(B)V

    sput-object v0, Lcom/crashlytics/android/core/az;->b:Lcom/crashlytics/android/core/ba;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/core/az;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/d/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/crashlytics/android/core/az;->c:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/crashlytics/android/core/az;->d:Lio/fabric/sdk/android/services/d/a;

    .line 37
    sget-object v0, Lcom/crashlytics/android/core/az;->b:Lcom/crashlytics/android/core/ba;

    iput-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    .line 38
    invoke-virtual {p0, p3}, Lcom/crashlytics/android/core/az;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method private c()Ljava/io/File;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/az;->d:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v1

    const-string v2, "log-files"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 131
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/crashlytics/android/core/b;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ax;->a()Lcom/crashlytics/android/core/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ax;->b()V

    .line 47
    sget-object v0, Lcom/crashlytics/android/core/az;->b:Lcom/crashlytics/android/core/ba;

    iput-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    .line 49
    if-nez p1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/az;->c:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Preferences requested no custom logs. Aborting log file creation."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "crashlytics-userlog-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2107
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/crashlytics/android/core/az;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3102
    new-instance v0, Lcom/crashlytics/android/core/bu;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/core/bu;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/crashlytics/android/core/az;->c()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_2

    .line 90
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 3111
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3112
    const-string v5, ".temp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 3113
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 91
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3116
    :cond_1
    const/16 v6, 0x14

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/core/az;->a:Lcom/crashlytics/android/core/ax;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ax;->c()V

    .line 81
    return-void
.end method
