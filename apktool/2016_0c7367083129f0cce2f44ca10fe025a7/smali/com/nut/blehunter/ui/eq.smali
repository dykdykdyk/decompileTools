.class final Lcom/nut/blehunter/ui/eq;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/nut/blehunter/ui/eq;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 359
    check-cast p1, Ljava/lang/String;

    .line 1362
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1365
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_0

    .line 1367
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1368
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Basic "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getUser(Ljava/lang/String;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1370
    :cond_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
