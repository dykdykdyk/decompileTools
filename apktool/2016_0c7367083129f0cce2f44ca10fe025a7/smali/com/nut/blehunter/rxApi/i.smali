.class public Lcom/nut/blehunter/rxApi/i;
.super Ljava/lang/Object;
.source "HeadersInterceptor.java"

# interfaces
.implements Lokhttp3/ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/NutTrackerApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/NutTrackerApplication;->b()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 40
    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lokhttp3/ah;)Lokhttp3/ay;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-interface {p1}, Lokhttp3/ah;->a()Lokhttp3/as;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/as;->a()Lokhttp3/at;

    move-result-object v1

    .line 24
    const-string v0, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v1, v0, v2}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move-result-object v0

    const-string v2, "Country"

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/nut/blehunter/d/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    move-result-object v0

    const-string v2, "Accept-Language"

    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/nut/blehunter/d/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    .line 28
    :try_start_0
    const-string v2, "User-Agent"

    .line 1046
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1047
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    :cond_0
    invoke-static {v0}, Lcom/nut/blehunter/rxApi/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/rxApi/i;->a(Lokhttp3/at;)V

    .line 34
    invoke-virtual {v1}, Lokhttp3/at;->a()Lokhttp3/as;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/ah;->a(Lokhttp3/as;)Lokhttp3/ay;

    move-result-object v0

    return-object v0

    .line 30
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 31
    const-string v0, "User-Agent"

    const-string v2, "unknown"

    invoke-static {v2}, Lcom/nut/blehunter/rxApi/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lokhttp3/at;->b(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/at;

    goto :goto_0
.end method

.method protected a(Lokhttp3/at;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
