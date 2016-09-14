.class final Lcom/nut/blehunter/c/f;
.super Landroid/os/AsyncTask;
.source "SendAuthWeChat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/c/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/c/c;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/nut/blehunter/c/f;->a:Lcom/nut/blehunter/c/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 242
    check-cast p1, [Ljava/lang/String;

    .line 4246
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 4247
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 4248
    iget-object v2, p0, Lcom/nut/blehunter/c/f;->a:Lcom/nut/blehunter/c/c;

    invoke-virtual {v2, v0, v1}, Lcom/nut/blehunter/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 242
    check-cast p1, Ljava/lang/String;

    .line 1254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/nut/blehunter/c/f;->a:Lcom/nut/blehunter/c/c;

    .line 2044
    invoke-virtual {v0}, Lcom/nut/blehunter/c/c;->a()V

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    const-string v0, "weChat userInfo=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1259
    iget-object v0, p0, Lcom/nut/blehunter/c/f;->a:Lcom/nut/blehunter/c/c;

    .line 3044
    iget-object v0, v0, Lcom/nut/blehunter/c/c;->b:Lcom/nut/blehunter/c/a;

    .line 1259
    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/nut/blehunter/c/f;->a:Lcom/nut/blehunter/c/c;

    .line 4044
    iget-object v0, v0, Lcom/nut/blehunter/c/c;->b:Lcom/nut/blehunter/c/a;

    .line 1260
    invoke-interface {v0, p1}, Lcom/nut/blehunter/c/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
