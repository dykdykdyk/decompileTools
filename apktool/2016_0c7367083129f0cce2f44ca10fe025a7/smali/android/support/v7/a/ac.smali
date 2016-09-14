.class Landroid/support/v7/a/ac;
.super Landroid/support/v7/a/x;
.source "AppCompatDelegateImplV14.java"


# instance fields
.field final synthetic c:Landroid/support/v7/a/ab;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ab;Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Landroid/support/v7/a/ac;->c:Landroid/support/v7/a/ab;

    .line 257
    invoke-direct {p0, p1, p2}, Landroid/support/v7/a/x;-><init>(Landroid/support/v7/a/v;Landroid/view/Window$Callback;)V

    .line 258
    return-void
.end method


# virtual methods
.method final a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 276
    new-instance v4, Landroid/support/v7/view/h;

    iget-object v0, p0, Landroid/support/v7/a/ac;->c:Landroid/support/v7/a/ab;

    iget-object v0, v0, Landroid/support/v7/a/ab;->b:Landroid/content/Context;

    invoke-direct {v4, v0, p1}, Landroid/support/v7/view/h;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 280
    iget-object v5, p0, Landroid/support/v7/a/ac;->c:Landroid/support/v7/a/ab;

    .line 1684
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 1688
    :cond_0
    new-instance v6, Landroid/support/v7/a/aq;

    invoke-direct {v6, v5, v4}, Landroid/support/v7/a/aq;-><init>(Landroid/support/v7/a/ah;Landroid/support/v7/view/c;)V

    .line 1690
    invoke-virtual {v5}, Landroid/support/v7/a/ah;->a()Landroid/support/v7/a/a;

    move-result-object v0

    .line 1691
    if-eqz v0, :cond_1

    .line 1692
    invoke-virtual {v0, v6}, Landroid/support/v7/a/a;->a(Landroid/support/v7/view/c;)Landroid/support/v7/view/b;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1698
    :cond_1
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    if-nez v0, :cond_6

    .line 1716
    invoke-virtual {v5}, Landroid/support/v7/a/ah;->o()V

    .line 1717
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    if-eqz v0, :cond_2

    .line 1718
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    invoke-virtual {v0}, Landroid/support/v7/view/b;->c()V

    .line 1738
    :cond_2
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    if-nez v0, :cond_3

    .line 1739
    iget-boolean v0, v5, Landroid/support/v7/a/ah;->l:Z

    if-eqz v0, :cond_8

    .line 1741
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 1742
    iget-object v0, v5, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1743
    sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I

    invoke-virtual {v0, v8, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1746
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_7

    .line 1747
    iget-object v8, v5, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 1748
    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1749
    iget v0, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1751
    new-instance v0, Landroid/support/v7/view/e;

    iget-object v9, v5, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    invoke-direct {v0, v9, v2}, Landroid/support/v7/view/e;-><init>(Landroid/content/Context;I)V

    .line 1752
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1757
    :goto_0
    new-instance v8, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    .line 1758
    new-instance v8, Landroid/widget/PopupWindow;

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I

    invoke-direct {v8, v0, v3, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    .line 1760
    iget-object v8, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 1762
    iget-object v8, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    iget-object v9, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1763
    iget-object v8, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1765
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I

    invoke-virtual {v8, v9, v7, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1767
    iget v7, v7, Landroid/util/TypedValue;->data:I

    .line 1768
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1767
    invoke-static {v7, v0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1769
    iget-object v7, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1770
    iget-object v0, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1771
    new-instance v0, Landroid/support/v7/a/am;

    invoke-direct {v0, v5}, Landroid/support/v7/a/am;-><init>(Landroid/support/v7/a/ah;)V

    iput-object v0, v5, Landroid/support/v7/a/ah;->t:Ljava/lang/Runnable;

    .line 1812
    :cond_3
    :goto_1
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_5

    .line 1813
    invoke-virtual {v5}, Landroid/support/v7/a/ah;->o()V

    .line 1814
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->b()V

    .line 1815
    new-instance v7, Landroid/support/v7/view/f;

    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    invoke-direct {v7, v8, v9, v6, v0}, Landroid/support/v7/view/f;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/c;Z)V

    .line 1817
    invoke-virtual {v7}, Landroid/support/v7/view/b;->b()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v6, v7, v0}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1818
    invoke-virtual {v7}, Landroid/support/v7/view/b;->d()V

    .line 1819
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ActionBarContextView;->a(Landroid/support/v7/view/b;)V

    .line 1820
    iput-object v7, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1822
    invoke-virtual {v5}, Landroid/support/v7/a/ah;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1823
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1824
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iput-object v0, v5, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1825
    iget-object v0, v5, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/a/ao;

    invoke-direct {v1, v5}, Landroid/support/v7/a/ao;-><init>(Landroid/support/v7/a/ah;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1853
    :cond_4
    :goto_3
    iget-object v0, v5, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_5

    .line 1854
    iget-object v0, v5, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, v5, Landroid/support/v7/a/ah;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1864
    :cond_5
    :goto_4
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1700
    iput-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1703
    :cond_6
    iget-object v0, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 283
    if-eqz v0, :cond_c

    .line 285
    invoke-virtual {v4, v0}, Landroid/support/v7/view/h;->b(Landroid/support/v7/view/b;)Landroid/view/ActionMode;

    move-result-object v0

    .line 287
    :goto_5
    return-object v0

    .line 1754
    :cond_7
    iget-object v0, v5, Landroid/support/v7/a/ah;->b:Landroid/content/Context;

    goto/16 :goto_0

    .line 1802
    :cond_8
    iget-object v0, v5, Landroid/support/v7/a/ah;->v:Landroid/view/ViewGroup;

    sget v7, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I

    .line 1803
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ViewStubCompat;

    .line 1804
    if-eqz v0, :cond_3

    .line 1806
    invoke-virtual {v5}, Landroid/support/v7/a/ah;->m()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1807
    invoke-virtual {v0}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 1815
    goto :goto_2

    .line 1844
    :cond_a
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0, v10}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 1845
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 1846
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1848
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1849
    iget-object v0, v5, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_3

    .line 1857
    :cond_b
    iput-object v3, v5, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    goto :goto_4

    :cond_c
    move-object v0, v3

    .line 287
    goto :goto_5
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v7/a/ac;->c:Landroid/support/v7/a/ab;

    .line 1079
    iget-boolean v0, v0, Landroid/support/v7/a/ab;->p:Z

    .line 263
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Landroid/support/v7/a/ac;->a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/a/x;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    goto :goto_0
.end method
