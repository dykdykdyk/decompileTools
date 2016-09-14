.class final Lcom/nut/blehunter/ui/ee;
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
    .line 452
    iput-object p1, p0, Lcom/nut/blehunter/ui/ee;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/nut/blehunter/ui/ee;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->i(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/ui/widget/CircleImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setHighlightBorderSweepAngle(F)V

    .line 456
    return-void
.end method
