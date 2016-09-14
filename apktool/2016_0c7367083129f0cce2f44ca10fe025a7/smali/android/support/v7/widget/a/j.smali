.class final Landroid/support/v7/widget/a/j;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/a/a;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/a/a;)V
    .locals 0

    .prologue
    .line 2257
    iput-object p1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/a/a;B)V
    .locals 0

    .prologue
    .line 2257
    invoke-direct {p0, p1}, Landroid/support/v7/widget/a/j;-><init>(Landroid/support/v7/widget/a/a;)V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 2261
    const/4 v0, 0x1

    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    .line 2266
    iget-object v0, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    .line 3076
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2267
    if-eqz v0, :cond_0

    .line 2268
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    .line 4076
    iget-object v1, v1, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 2268
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 2269
    if-eqz v0, :cond_0

    .line 2270
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    .line 5076
    iget-object v2, v2, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 2270
    invoke-static {v1, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/a/g;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2273
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2277
    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget v2, v2, Landroid/support/v7/widget/a/a;->k:I

    if-ne v1, v2, :cond_0

    .line 2278
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget v1, v1, Landroid/support/v7/widget/a/a;->k:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2279
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2280
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 2281
    iget-object v3, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iput v2, v3, Landroid/support/v7/widget/a/a;->c:F

    .line 2282
    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iput v1, v2, Landroid/support/v7/widget/a/a;->d:F

    .line 2283
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v2, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/a/a;->h:F

    iput v3, v1, Landroid/support/v7/widget/a/a;->g:F

    .line 2288
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    iget-object v1, v1, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    invoke-virtual {v1}, Landroid/support/v7/widget/a/g;->b()Z

    .line 2289
    iget-object v1, p0, Landroid/support/v7/widget/a/j;->a:Landroid/support/v7/widget/a/a;

    .line 6076
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;I)V

    goto :goto_0
.end method
