.class final Landroid/support/v7/a/as;
.super Landroid/support/v7/widget/ContentFrameLayout;
.source "AppCompatDelegateImplV9.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method public constructor <init>(Landroid/support/v7/a/ah;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2093
    iput-object p1, p0, Landroid/support/v7/a/as;->a:Landroid/support/v7/a/ah;

    .line 2094
    invoke-direct {p0, p2}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;)V

    .line 2095
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/support/v7/a/as;->a:Landroid/support/v7/a/ah;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/ah;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x5

    .line 2105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 2106
    if-nez v1, :cond_2

    .line 2107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 2108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 3123
    if-lt v1, v3, :cond_0

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/a/as;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    if-gt v1, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/a/as;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    if-le v2, v1, :cond_1

    :cond_0
    move v1, v0

    .line 2109
    :goto_0
    if-eqz v1, :cond_2

    .line 2110
    iget-object v1, p0, Landroid/support/v7/a/as;->a:Landroid/support/v7/a/ah;

    invoke-static {v1}, Landroid/support/v7/a/ah;->f(Landroid/support/v7/a/ah;)V

    .line 2114
    :goto_1
    return v0

    .line 3123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2114
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/ContentFrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 2119
    invoke-virtual {p0}, Landroid/support/v7/a/as;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/b/a/b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/a/as;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2120
    return-void
.end method
