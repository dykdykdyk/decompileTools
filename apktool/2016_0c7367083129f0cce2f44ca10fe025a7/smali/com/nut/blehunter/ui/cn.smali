.class final Lcom/nut/blehunter/ui/cn;
.super Landroid/os/CountDownTimer;
.source "Main2Activity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 4

    .prologue
    .line 261
    iput-object p1, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-wide/32 v0, 0xea60

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/Main2Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->i(Lcom/nut/blehunter/ui/Main2Activity;)Z

    .line 273
    iget-object v0, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->g(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 274
    iget-object v0, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->j(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 275
    iget-object v0, p0, Lcom/nut/blehunter/ui/cn;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v1, "tab_map_locate_friend_online_failure"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onTick(J)V
    .locals 0

    .prologue
    .line 265
    return-void
.end method
