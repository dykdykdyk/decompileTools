.class final Lcom/nut/blehunter/a/b;
.super Ljava/lang/Object;
.source "RecordFileUtil.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/k",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/nut/blehunter/a/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 150
    check-cast p1, Ljava/lang/String;

    .line 1163
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    const-string v0, "upload log file success=%s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nut/blehunter/a/b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1165
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nut/blehunter/a/b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    invoke-static {p1, v1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    goto :goto_0
.end method
