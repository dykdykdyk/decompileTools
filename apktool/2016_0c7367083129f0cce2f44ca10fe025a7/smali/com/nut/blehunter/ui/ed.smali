.class final Lcom/nut/blehunter/ui/ed;
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
    .line 424
    iput-object p1, p0, Lcom/nut/blehunter/ui/ed;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/nut/blehunter/ui/ed;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutDetailActivity;->i(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/ui/widget/CircleImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ed;->a:Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutDetailActivity;->h(Lcom/nut/blehunter/ui/NutDetailActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget v1, v1, Lcom/nut/blehunter/entity/Nut;->L:I

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/CircleImageView;->setHighlightBorderSweepAngle(F)V

    .line 428
    return-void
.end method
