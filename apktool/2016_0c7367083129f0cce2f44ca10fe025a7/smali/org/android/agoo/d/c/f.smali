.class public abstract Lorg/android/agoo/d/c/f;
.super Lorg/android/agoo/d/a/b;
.source "MtopResponseHandler.java"


# static fields
.field public static final g:Ljava/lang/String; = "SUCCESS"

.field public static final h:Ljava/lang/String; = "FAIL"

.field public static final i:Ljava/lang/String; = "ERROR_SERVICE_NOT_AVAILABLE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/android/agoo/d/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    invoke-static {p2}, Lorg/android/agoo/d/c/g;->a(Ljava/lang/String;)Lorg/android/agoo/d/c/i;

    move-result-object v0

    .line 1031
    iget-boolean v1, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 27
    if-eqz v1, :cond_0

    .line 1046
    iget-object v0, v0, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1, v0}, Lorg/android/agoo/d/c/f;->onSuccess(Ljava/util/Map;Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 1076
    :cond_0
    iget-object v1, v0, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 2061
    iget-object v0, v0, Lorg/android/agoo/d/c/i;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v1, v0}, Lorg/android/agoo/d/c/f;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "MtopResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSuccessMessage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    invoke-virtual {p0, v0, p1, p2}, Lorg/android/agoo/d/c/f;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const-string v0, "ERROR_SERVICE_NOT_AVAILABLE"

    invoke-virtual {p0, v0, p2}, Lorg/android/agoo/d/c/f;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
