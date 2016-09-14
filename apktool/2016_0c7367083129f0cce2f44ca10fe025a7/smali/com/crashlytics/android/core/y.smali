.class final Lcom/crashlytics/android/core/y;
.super Ljava/lang/Object;
.source "CrashlyticsFileMarker.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/fabric/sdk/android/services/d/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/fabric/sdk/android/services/d/a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/crashlytics/android/core/y;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/crashlytics/android/core/y;->b:Lio/fabric/sdk/android/services/d/a;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/crashlytics/android/core/y;->b()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 40
    :goto_0
    return v0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating marker: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/crashlytics/android/core/y;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final b()Ljava/io/File;
    .locals 3

    .prologue
    .line 60
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/crashlytics/android/core/y;->b:Lio/fabric/sdk/android/services/d/a;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/d/a;->a()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/crashlytics/android/core/y;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
