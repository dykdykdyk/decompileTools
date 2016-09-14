.class final Landroid/support/v7/widget/bj;
.super Landroid/support/v7/widget/cz;
.source "AppCompatSpinner.java"


# instance fields
.field a:Ljava/lang/CharSequence;

.field final synthetic b:Landroid/support/v7/widget/bg;

.field private n:Landroid/widget/ListAdapter;

.field private final o:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/bg;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 699
    iput-object p1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    .line 700
    invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/cz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 697
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bj;->o:Landroid/graphics/Rect;

    .line 1461
    iput-object p1, p0, Landroid/support/v7/widget/cz;->i:Landroid/view/View;

    .line 703
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->f()V

    .line 2306
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/cz;->h:I

    .line 706
    new-instance v0, Landroid/support/v7/widget/bk;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/bk;-><init>(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/bg;)V

    .line 2591
    iput-object v0, p0, Landroid/support/v7/widget/cz;->j:Landroid/widget/AdapterView$OnItemClickListener;

    .line 717
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/bj;)Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/bj;->n:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/bj;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 6825
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->o:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 694
    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/bj;)V
    .locals 0

    .prologue
    .line 694
    invoke-super {p0}, Landroid/support/v7/widget/cz;->b()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 735
    .line 3414
    iget-object v1, p0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 739
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    move v1, v0

    .line 745
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getPaddingLeft()I

    move-result v3

    .line 746
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getPaddingRight()I

    move-result v4

    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getWidth()I

    move-result v5

    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->c(Landroid/support/v7/widget/bg;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_2

    .line 749
    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    iget-object v0, p0, Landroid/support/v7/widget/bj;->n:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/SpinnerAdapter;

    .line 4414
    iget-object v6, p0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 749
    invoke-static {v2, v0, v6}, Landroid/support/v7/widget/bg;->a(Landroid/support/v7/widget/bg;Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 751
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 752
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v6, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v6}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v6}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v6

    .line 753
    if-le v2, v0, :cond_5

    .line 756
    :goto_2
    sub-int v2, v5, v3

    sub-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)V

    .line 763
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/gq;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 764
    sub-int v0, v5, v4

    .line 4525
    iget v2, p0, Landroid/support/v7/widget/cz;->d:I

    .line 764
    sub-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 5477
    :goto_4
    iput v0, p0, Landroid/support/v7/widget/cz;->e:I

    .line 769
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    .line 740
    invoke-static {v0}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_0

    .line 742
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v1}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v2}, Landroid/support/v7/widget/bg;->b(Landroid/support/v7/widget/bg;)Landroid/graphics/Rect;

    move-result-object v2

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move v1, v0

    goto/16 :goto_1

    .line 758
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->c(Landroid/support/v7/widget/bg;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 759
    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)V

    goto :goto_3

    .line 761
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-static {v0}, Landroid/support/v7/widget/bg;->c(Landroid/support/v7/widget/bg;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->b(I)V

    goto :goto_3

    .line 766
    :cond_4
    add-int v0, v1, v3

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    .prologue
    .line 721
    invoke-super {p0, p1}, Landroid/support/v7/widget/cz;->a(Landroid/widget/ListAdapter;)V

    .line 722
    iput-object p1, p0, Landroid/support/v7/widget/bj;->n:Landroid/widget/ListAdapter;

    .line 723
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 772
    .line 5823
    iget-object v0, p0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 774
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->a()V

    .line 776
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->h()V

    .line 777
    invoke-super {p0}, Landroid/support/v7/widget/cz;->b()V

    .line 5909
    iget-object v1, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 779
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 780
    iget-object v1, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v1}, Landroid/support/v7/widget/bg;->getSelectedItemPosition()I

    move-result v1

    .line 6791
    iget-object v2, p0, Landroid/support/v7/widget/cz;->c:Landroid/support/v7/widget/cj;

    .line 6823
    iget-object v3, p0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    .line 6792
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 6793
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/cj;->setListSelectionHidden(Z)V

    .line 6794
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/cj;->setSelection(I)V

    .line 6796
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    .line 6797
    invoke-virtual {v2}, Landroid/support/v7/widget/cj;->getChoiceMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6798
    invoke-virtual {v2, v1, v5}, Landroid/support/v7/widget/cj;->setItemChecked(IZ)V

    .line 782
    :cond_0
    if-eqz v0, :cond_2

    .line 819
    :cond_1
    :goto_0
    return-void

    .line 791
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/bj;->b:Landroid/support/v7/widget/bg;

    invoke-virtual {v0}, Landroid/support/v7/widget/bg;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_1

    .line 793
    new-instance v1, Landroid/support/v7/widget/bl;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bl;-><init>(Landroid/support/v7/widget/bj;)V

    .line 808
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 809
    new-instance v0, Landroid/support/v7/widget/bm;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/bm;-><init>(Landroid/support/v7/widget/bj;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_0
.end method
