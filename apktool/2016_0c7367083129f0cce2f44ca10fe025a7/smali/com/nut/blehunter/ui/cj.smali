.class final Lcom/nut/blehunter/ui/cj;
.super Ljava/lang/Object;
.source "LookForShareActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/ui/LookForShareActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LookForShareActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/nut/blehunter/ui/cj;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 181
    check-cast p1, Ljava/lang/String;

    .line 1184
    iget-object v0, p0, Lcom/nut/blehunter/ui/cj;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 1185
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 1186
    if-nez v0, :cond_2

    .line 1187
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1188
    if-eqz v0, :cond_1

    .line 1189
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/Nut;

    .line 2049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1189
    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1190
    if-eqz v0, :cond_1

    .line 1191
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->c(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_1

    .line 1193
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    .line 1194
    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    if-eqz v2, :cond_0

    .line 1195
    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    iput-object v0, v1, Lcom/nut/blehunter/entity/Nut;->q:Lcom/nut/blehunter/entity/WechatIdentifier;

    .line 1197
    :cond_0
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nut/blehunter/provider/l;->a(Lcom/nut/blehunter/entity/Nut;Z)V

    .line 1198
    iget-object v0, p0, Lcom/nut/blehunter/ui/cj;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/LookForShareActivity;->a(Lcom/nut/blehunter/ui/LookForShareActivity;Lcom/nut/blehunter/entity/Nut;)V

    .line 1205
    :cond_1
    :goto_0
    invoke-static {p1}, Lrx/h;->a(Ljava/lang/Object;)Lrx/h;

    move-result-object v0

    .line 181
    return-object v0

    .line 1203
    :cond_2
    iget-object v1, p0, Lcom/nut/blehunter/ui/cj;->a:Lcom/nut/blehunter/ui/LookForShareActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
