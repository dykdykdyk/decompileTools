.class final Lcom/nut/blehunter/ui/ce;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/tencent/tauth/b;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method private constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/nut/blehunter/ui/ce;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;B)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/ce;-><init>(Lcom/nut/blehunter/ui/LoginActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 647
    return-void
.end method

.method public final a(Lcom/tencent/tauth/d;)V
    .locals 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/nut/blehunter/ui/ce;->a:Lcom/nut/blehunter/ui/LoginActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QQ login failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/tauth/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1039
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 642
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 632
    const-string v0, "qq auth result is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    check-cast p1, Lorg/json/JSONObject;

    .line 634
    const-string v0, "openid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lcom/nut/blehunter/ui/ce;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v3

    const-string v4, "qq"

    invoke-static {v0, v1}, Lcom/nut/blehunter/rxApi/model/LoginRequestBody;->createWithQQ(Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/LoginRequestBody;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->login(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/LoginRequestBody;)Lrx/h;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lrx/h;)V

    .line 637
    return-void
.end method
