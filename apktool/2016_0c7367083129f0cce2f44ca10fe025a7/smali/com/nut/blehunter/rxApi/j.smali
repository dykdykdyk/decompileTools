.class public abstract Lcom/nut/blehunter/rxApi/j;
.super Ljava/lang/Object;
.source "ResultCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    invoke-static {p2}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/rxApi/j;->a(Lcom/nut/blehunter/rxApi/model/ApiError;)V

    .line 28
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Response",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nut/blehunter/rxApi/j;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/rxApi/j;->a(Ljava/lang/String;)V

    .line 22
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/rxApi/j;->a(Lcom/nut/blehunter/rxApi/model/ApiError;)V

    goto :goto_0
.end method
