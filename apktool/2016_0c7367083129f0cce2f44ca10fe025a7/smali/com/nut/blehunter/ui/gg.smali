.class final Lcom/nut/blehunter/ui/gg;
.super Lcom/nut/blehunter/rxApi/j;
.source "SendMailActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/SendMailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/SendMailActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/nut/blehunter/ui/gg;->a:Lcom/nut/blehunter/ui/SendMailActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/gg;->a:Lcom/nut/blehunter/ui/SendMailActivity;

    iget v1, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v2, p1, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nut/blehunter/ui/gg;->a:Lcom/nut/blehunter/ui/SendMailActivity;

    const v1, 0x7f0601a1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 61
    iget-object v0, p0, Lcom/nut/blehunter/ui/gg;->a:Lcom/nut/blehunter/ui/SendMailActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/SendMailActivity;->finish()V

    .line 62
    return-void
.end method
