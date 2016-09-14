.class final Lcom/nut/blehunter/ui/cs;
.super Lcom/nut/blehunter/rxApi/j;
.source "Main2Activity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Friend;

.field final synthetic b:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/cs;->a:Lcom/nut/blehunter/entity/Friend;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->f(Lcom/nut/blehunter/ui/Main2Activity;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->i(Lcom/nut/blehunter/ui/Main2Activity;)Z

    .line 569
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->g(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 570
    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x14f

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    const/16 v1, 0x150

    if-ne v0, v1, :cond_2

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->a:Lcom/nut/blehunter/entity/Friend;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nut/blehunter/entity/Friend;->e:I

    .line 572
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    iget-object v1, p0, Lcom/nut/blehunter/ui/cs;->a:Lcom/nut/blehunter/entity/Friend;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    .line 577
    :goto_0
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->j(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 575
    iget-object v0, p0, Lcom/nut/blehunter/ui/cs;->b:Lcom/nut/blehunter/ui/Main2Activity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 561
    return-void
.end method
