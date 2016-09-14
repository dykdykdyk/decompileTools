.class final Lcom/nut/blehunter/ui/by;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lrx/b/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/b/f",
        "<",
        "Ljava/lang/String;",
        "Lrx/h",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/nut/blehunter/ui/by;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 463
    check-cast p1, Ljava/lang/String;

    .line 1466
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1470
    if-eqz v0, :cond_0

    .line 1471
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/User;

    .line 2049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1471
    check-cast v0, Lcom/nut/blehunter/entity/User;

    .line 1472
    if-eqz v0, :cond_0

    .line 1473
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->o:Ljava/lang/String;

    const-class v2, Lcom/nut/blehunter/entity/aa;

    .line 3049
    invoke-static {v1, v2}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 1473
    check-cast v1, Lcom/nut/blehunter/entity/aa;

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    .line 1474
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 1475
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->c()Lcom/nut/blehunter/rxApi/service/NutService;

    move-result-object v0

    invoke-interface {v0}, Lcom/nut/blehunter/rxApi/service/NutService;->getNuts()Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1479
    :cond_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
