.class final Lcom/nut/blehunter/ui/bu;
.super Lcom/twitter/sdk/android/core/f;
.source "LoginActivity.java"


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
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/nut/blehunter/ui/bu;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/bu;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Z)V

    .line 367
    iget-object v0, p0, Lcom/nut/blehunter/ui/bu;->a:Lcom/nut/blehunter/ui/LoginActivity;

    const-string v1, "twitter login failed"

    .line 2039
    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 368
    return-void
.end method

.method public final a(Lcom/twitter/sdk/android/core/k;)V
    .locals 8
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
    .line 361
    iget-object v1, p0, Lcom/nut/blehunter/ui/bu;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v2

    const-string v3, "twitter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/twitter/sdk/android/core/k;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/u;

    .line 2026
    iget-wide v6, v0, Lcom/twitter/sdk/android/core/l;->b:J

    .line 361
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithTwitter(Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lrx/h;)V

    .line 362
    return-void
.end method
