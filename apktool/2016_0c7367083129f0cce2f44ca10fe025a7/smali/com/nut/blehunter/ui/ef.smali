.class final Lcom/nut/blehunter/ui/ef;
.super Ljava/lang/Object;
.source "NutDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/NutDetailActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutDetailActivity;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/nut/blehunter/ui/ef;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/nut/blehunter/ui/ef;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->j(Lcom/nut/blehunter/ui/NutDetailActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 469
    return-void
.end method
