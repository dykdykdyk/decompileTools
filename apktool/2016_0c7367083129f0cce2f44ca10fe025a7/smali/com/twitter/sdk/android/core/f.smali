.class public abstract Lcom/twitter/sdk/android/core/f;
.super Ljava/lang/Object;
.source "Callback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/twitter/sdk/android/core/TwitterException;)V
.end method

.method public abstract a(Lcom/twitter/sdk/android/core/k;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final failure(Lretrofit/RetrofitError;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p1}, Lcom/twitter/sdk/android/core/TwitterApiException;->a(Lretrofit/RetrofitError;)Lcom/twitter/sdk/android/core/TwitterApiException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 29
    return-void
.end method

.method public final success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/sdk/android/core/k;

    invoke-direct {v0, p1, p2}, Lcom/twitter/sdk/android/core/k;-><init>(Ljava/lang/Object;Lretrofit/client/Response;)V

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/k;)V

    .line 24
    return-void
.end method
