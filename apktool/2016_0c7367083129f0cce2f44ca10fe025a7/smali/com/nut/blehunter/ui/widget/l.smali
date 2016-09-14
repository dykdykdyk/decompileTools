.class final Lcom/nut/blehunter/ui/widget/l;
.super Ljava/lang/Object;
.source "PopupTrackerShare.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/widget/k;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/widget/k;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/l;->a:Lcom/nut/blehunter/ui/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/l;->a:Lcom/nut/blehunter/ui/widget/k;

    invoke-static {v0}, Lcom/nut/blehunter/ui/widget/k;->a(Lcom/nut/blehunter/ui/widget/k;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 58
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/l;->a:Lcom/nut/blehunter/ui/widget/k;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/widget/k;->dismiss()V

    .line 62
    :cond_0
    return v3
.end method
