.class final Lcom/crashlytics/android/a/x;
.super Lio/fabric/sdk/android/services/c/d;
.source "SessionAnalyticsFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/c/d",
        "<",
        "Lcom/crashlytics/android/a/ab;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lio/fabric/sdk/android/services/e/b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/crashlytics/android/a/af;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/k;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    const/16 v5, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/fabric/sdk/android/services/c/d;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/k;I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sa_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/a/x;->d:Lio/fabric/sdk/android/services/b/q;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/b/q;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->a:Lio/fabric/sdk/android/services/e/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lio/fabric/sdk/android/services/c/d;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->a:Lio/fabric/sdk/android/services/e/b;

    iget v0, v0, Lio/fabric/sdk/android/services/e/b;->e:I

    goto :goto_0
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->a:Lio/fabric/sdk/android/services/e/b;

    if-nez v0, :cond_0

    invoke-super {p0}, Lio/fabric/sdk/android/services/c/d;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/a/x;->a:Lio/fabric/sdk/android/services/e/b;

    iget v0, v0, Lio/fabric/sdk/android/services/e/b;->c:I

    goto :goto_0
.end method
