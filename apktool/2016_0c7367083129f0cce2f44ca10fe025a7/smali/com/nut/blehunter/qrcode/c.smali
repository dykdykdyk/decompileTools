.class final Lcom/nut/blehunter/qrcode/c;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/qrcode/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/qrcode/CaptureActivity;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/c;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 392
    check-cast p1, Ljava/lang/String;

    .line 1395
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_0

    .line 1400
    const-string v1, "shareRecordUUID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->b()Lcom/nut/blehunter/rxApi/service/AccountService;

    move-result-object v1

    const-string v2, "shareRecordUUID"

    invoke-static {v2, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nut/blehunter/rxApi/service/AccountService;->getSharedNut(Ljava/util/HashMap;)Lrx/h;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1403
    :cond_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    goto :goto_0
.end method
