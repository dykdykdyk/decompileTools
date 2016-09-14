.class final Lcom/twitter/sdk/android/core/internal/scribe/i;
.super Lio/fabric/sdk/android/services/c/d;
.source "ScribeFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/c/d",
        "<",
        "Lcom/twitter/sdk/android/core/internal/scribe/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/q;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/fabric/sdk/android/services/c/c",
            "<",
            "Lcom/twitter/sdk/android/core/internal/scribe/g;",
            ">;",
            "Lio/fabric/sdk/android/services/b/q;",
            "Lio/fabric/sdk/android/services/c/q;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct/range {p0 .. p5}, Lio/fabric/sdk/android/services/c/d;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/c/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/c/k;I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "se_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/scribe/i;->d:Lio/fabric/sdk/android/services/b/q;

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
