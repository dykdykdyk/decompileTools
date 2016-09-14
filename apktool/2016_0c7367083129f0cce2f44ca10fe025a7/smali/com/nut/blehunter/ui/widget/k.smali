.class public final Lcom/nut/blehunter/ui/widget/k;
.super Landroid/widget/PopupWindow;
.source "PopupTrackerShare.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 29
    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    const v1, 0x7f0d0180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->a:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    const v1, 0x7f0d018a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->b:Landroid/widget/ImageView;

    .line 34
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/k;->setContentView(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/widget/k;->setWidth(I)V

    .line 41
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/widget/k;->setHeight(I)V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/k;->setFocusable(Z)V

    .line 45
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/k;->setAnimationStyle(I)V

    .line 47
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x7d000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    new-instance v1, Lcom/nut/blehunter/ui/widget/l;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/widget/l;-><init>(Lcom/nut/blehunter/ui/widget/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/k;)Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/k;->c:Landroid/view/View;

    return-object v0
.end method
