.class public final Lcom/nut/blehunter/ui/widget/m;
.super Landroid/widget/PopupWindow;
.source "PopupWindowDelete.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 26
    const v1, 0x7f0300a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 27
    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {p1, v1}, Lcom/nut/blehunter/d/q;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 28
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/m;->setContentView(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/widget/m;->setWidth(I)V

    .line 31
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/widget/m;->setHeight(I)V

    .line 32
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 34
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/widget/m;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual {p0, v6}, Lcom/nut/blehunter/ui/widget/m;->setOutsideTouchable(Z)V

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 38
    const v2, 0x800033

    aget v3, v1, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    aget v1, v1, v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    invoke-virtual {p0, p2, v2, v3, v0}, Lcom/nut/blehunter/ui/widget/m;->showAtLocation(Landroid/view/View;III)V

    .line 42
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1, v0}, Lcom/nut/blehunter/ui/widget/m;->a(Landroid/app/Activity;F)V

    .line 43
    new-instance v0, Lcom/nut/blehunter/ui/widget/n;

    invoke-direct {v0, p0, p1}, Lcom/nut/blehunter/ui/widget/n;-><init>(Lcom/nut/blehunter/ui/widget/m;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/m;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/app/Activity;F)V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 53
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    return-void
.end method
