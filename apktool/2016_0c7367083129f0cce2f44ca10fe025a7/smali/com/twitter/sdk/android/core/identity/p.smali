.class public final Lcom/twitter/sdk/android/core/identity/p;
.super Lcom/twitter/sdk/android/core/f;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/f",
        "<",
        "Lcom/twitter/sdk/android/core/u;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/m;Lcom/twitter/sdk/android/core/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/m",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;",
            "Lcom/twitter/sdk/android/core/f",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/f;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/m;

    .line 206
    iput-object p2, p0, Lcom/twitter/sdk/android/core/identity/p;->b:Lcom/twitter/sdk/android/core/f;

    .line 207
    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->b:Lcom/twitter/sdk/android/core/f;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 221
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/twitter/sdk/android/core/identity/p;->a:Lcom/twitter/sdk/android/core/m;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/l;

    invoke-interface {v1, v0}, Lcom/twitter/sdk/android/core/m;->a(Lcom/twitter/sdk/android/core/l;)V

    .line 213
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/p;->b:Lcom/twitter/sdk/android/core/f;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/f;->a(Lcom/twitter/sdk/android/core/k;)V

    .line 214
    return-void
.end method
