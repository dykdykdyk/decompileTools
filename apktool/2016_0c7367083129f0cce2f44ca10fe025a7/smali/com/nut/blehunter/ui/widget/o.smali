.class public final Lcom/nut/blehunter/ui/widget/o;
.super Ljava/lang/Object;
.source "RecyclerItemClickListener.java"

# interfaces
.implements Landroid/support/v7/widget/el;


# instance fields
.field private a:Lcom/nut/blehunter/ui/widget/q;

.field private b:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nut/blehunter/ui/widget/q;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/nut/blehunter/ui/widget/o;->a:Lcom/nut/blehunter/ui/widget/q;

    .line 24
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/nut/blehunter/ui/widget/p;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/widget/p;-><init>(Lcom/nut/blehunter/ui/widget/o;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/o;->b:Landroid/view/GestureDetector;

    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/o;->b:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 41
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/o;->b:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-le v2, v0, :cond_0

    if-nez v1, :cond_0

    .line 50
    :goto_0
    return v0

    .line 45
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/o;->a:Lcom/nut/blehunter/ui/widget/q;

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/o;->a:Lcom/nut/blehunter/ui/widget/q;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/nut/blehunter/ui/widget/q;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
