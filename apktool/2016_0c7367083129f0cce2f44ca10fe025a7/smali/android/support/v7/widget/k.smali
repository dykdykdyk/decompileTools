.class final Landroid/support/v7/widget/k;
.super Landroid/support/v7/view/menu/d;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# instance fields
.field private A:Landroid/support/v7/widget/q;

.field private B:Landroid/support/v7/widget/l;

.field private C:Landroid/support/v7/widget/m;

.field i:Landroid/support/v7/widget/o;

.field j:Landroid/graphics/drawable/Drawable;

.field k:Z

.field l:I

.field m:Z

.field n:Z

.field o:Landroid/support/v7/widget/n;

.field final p:Landroid/support/v7/widget/r;

.field q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:Z

.field private w:Z

.field private x:I

.field private final y:Landroid/util/SparseBooleanArray;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/d;-><init>(Landroid/content/Context;II)V

    .line 74
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/k;->y:Landroid/util/SparseBooleanArray;

    .line 84
    new-instance v0, Landroid/support/v7/widget/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/k;B)V

    iput-object v0, p0, Landroid/support/v7/widget/k;->p:Landroid/support/v7/widget/r;

    .line 89
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/q;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->A:Landroid/support/v7/widget/q;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/widget/k;Landroid/support/v7/widget/q;)Landroid/support/v7/widget/q;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/k;->A:Landroid/support/v7/widget/q;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/n;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/ag;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/l;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/widget/k;)Landroid/support/v7/view/menu/ag;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/n;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v7/widget/k;)Landroid/support/v7/widget/l;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/ag;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    .line 186
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/d;->a(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/ag;

    move-result-object v1

    .line 187
    if-eq v0, v1, :cond_0

    move-object v0, v1

    .line 188
    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/k;)V

    .line 190
    :cond_0
    return-object v1
.end method

.method public final a(Landroid/support/v7/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/d;->a(Landroid/support/v7/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 201
    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    .line 202
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 203
    invoke-virtual {p3, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-static {v1}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    :cond_2
    return-object v0

    .line 199
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/d;->a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 97
    invoke-static {p1}, Landroid/support/v7/view/a;->a(Landroid/content/Context;)Landroid/support/v7/view/a;

    move-result-object v3

    .line 98
    iget-boolean v4, p0, Landroid/support/v7/widget/k;->s:Z

    if-nez v4, :cond_1

    .line 2076
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_6

    .line 99
    :cond_0
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/k;->r:Z

    .line 102
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->w:Z

    if-nez v0, :cond_2

    .line 2084
    iget-object v0, v3, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    .line 103
    iput v0, p0, Landroid/support/v7/widget/k;->t:I

    .line 107
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->m:Z

    if-nez v0, :cond_3

    .line 108
    invoke-virtual {v3}, Landroid/support/v7/view/a;->a()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/k;->l:I

    .line 111
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/k;->t:I

    .line 112
    iget-boolean v3, p0, Landroid/support/v7/widget/k;->r:Z

    if-eqz v3, :cond_7

    .line 113
    iget-object v3, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-nez v3, :cond_5

    .line 114
    new-instance v3, Landroid/support/v7/widget/o;

    iget-object v4, p0, Landroid/support/v7/widget/k;->a:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/k;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    .line 115
    iget-boolean v3, p0, Landroid/support/v7/widget/k;->k:Z

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    iget-object v4, p0, Landroid/support/v7/widget/k;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/o;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iput-object v6, p0, Landroid/support/v7/widget/k;->j:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v1, p0, Landroid/support/v7/widget/k;->k:Z

    .line 120
    :cond_4
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 121
    iget-object v3, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v3, v1, v1}, Landroid/support/v7/widget/o;->measure(II)V

    .line 123
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v1}, Landroid/support/v7/widget/o;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 128
    :goto_1
    iput v0, p0, Landroid/support/v7/widget/k;->u:I

    .line 130
    const/high16 v0, 0x42600000    # 56.0f

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/k;->x:I

    .line 133
    iput-object v6, p0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    .line 134
    return-void

    .line 2079
    :cond_6
    iget-object v4, v3, Landroid/support/v7/view/a;->a:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 125
    :cond_7
    iput-object v6, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 0

    .prologue
    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->e()Z

    .line 565
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/d;->a(Landroid/support/v7/view/menu/o;Z)V

    .line 566
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/s;Landroid/support/v7/view/menu/ah;)V
    .locals 2

    .prologue
    .line 211
    invoke-interface {p2, p1}, Landroid/support/v7/view/menu/ah;->a(Landroid/support/v7/view/menu/s;)V

    .line 213
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 214
    check-cast p2, Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 215
    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/q;)V

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/k;->C:Landroid/support/v7/widget/m;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/support/v7/widget/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/m;-><init>(Landroid/support/v7/widget/k;B)V

    iput-object v0, p0, Landroid/support/v7/widget/k;->C:Landroid/support/v7/widget/m;

    .line 220
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/k;->C:Landroid/support/v7/widget/m;

    invoke-virtual {p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/c;)V

    .line 221
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    .prologue
    .line 602
    iput-object p1, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    .line 5626
    iput-object v0, p1, Landroid/support/v7/widget/ActionMenuView;->a:Landroid/support/v7/view/menu/o;

    .line 604
    return-void
.end method

.method public final a(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 230
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 234
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/d;->a(Z)V

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 238
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    .line 2171
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->i()V

    .line 2172
    iget-object v4, v0, Landroid/support/v7/view/menu/o;->d:Ljava/util/ArrayList;

    .line 240
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 241
    :goto_0
    if-ge v3, v5, :cond_1

    .line 242
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 241
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 249
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    .line 250
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    .line 253
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/k;->r:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 254
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 255
    if-ne v3, v1, :cond_8

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/s;->isActionViewExpanded()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    move v2, v0

    .line 262
    :cond_2
    :goto_3
    if-eqz v2, :cond_a

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-nez v0, :cond_3

    .line 264
    new-instance v0, Landroid/support/v7/widget/o;

    iget-object v1, p0, Landroid/support/v7/widget/k;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/k;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    .line 266
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 267
    iget-object v1, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    if-eq v0, v1, :cond_5

    .line 268
    if-eqz v0, :cond_4

    .line 269
    iget-object v1, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 271
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 272
    iget-object v1, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->a()Landroid/support/v7/widget/u;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    :cond_5
    :goto_4
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Landroid/support/v7/widget/k;->r:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 279
    return-void

    .line 250
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    move v0, v2

    .line 256
    goto :goto_2

    .line 258
    :cond_8
    if-lez v3, :cond_9

    :goto_5
    move v2, v1

    goto :goto_3

    :cond_9
    move v1, v2

    goto :goto_5

    .line 274
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    if-ne v0, v1, :cond_5

    .line 275
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4
.end method

.method public final a()Z
    .locals 19

    .prologue
    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eqz v2, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    invoke-virtual {v2}, Landroid/support/v7/view/menu/o;->h()Ljava/util/ArrayList;

    move-result-object v3

    .line 425
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v2

    move-object v6, v3

    .line 431
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/k;->l:I

    .line 432
    move-object/from16 v0, p0

    iget v11, v0, Landroid/support/v7/widget/k;->u:I

    .line 433
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v2, Landroid/view/ViewGroup;

    .line 436
    const/4 v8, 0x0

    .line 437
    const/4 v7, 0x0

    .line 438
    const/4 v10, 0x0

    .line 439
    const/4 v4, 0x0

    .line 440
    const/4 v3, 0x0

    move v12, v3

    :goto_1
    if-ge v12, v5, :cond_3

    .line 441
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/s;

    .line 442
    invoke-virtual {v3}, Landroid/support/v7/view/menu/s;->g()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 443
    add-int/lit8 v8, v8, 0x1

    .line 449
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/support/v7/widget/k;->n:Z

    if-eqz v13, :cond_1f

    invoke-virtual {v3}, Landroid/support/v7/view/menu/s;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 452
    const/4 v3, 0x0

    .line 440
    :goto_3
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    move v9, v3

    goto :goto_1

    .line 427
    :cond_0
    const/4 v3, 0x0

    .line 428
    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/view/menu/s;->f()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 445
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 447
    :cond_2
    const/4 v4, 0x1

    goto :goto_2

    .line 457
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/k;->r:Z

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    add-int v3, v8, v7

    if-le v3, v9, :cond_5

    .line 459
    :cond_4
    add-int/lit8 v9, v9, -0x1

    .line 461
    :cond_5
    sub-int v12, v9, v8

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/k;->y:Landroid/util/SparseBooleanArray;

    move-object/from16 v16, v0

    .line 464
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseBooleanArray;->clear()V

    .line 466
    const/4 v3, 0x0

    .line 467
    const/4 v4, 0x0

    .line 468
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/support/v7/widget/k;->v:Z

    if-eqz v7, :cond_1e

    .line 469
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/k;->x:I

    div-int v4, v11, v3

    .line 470
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v7/widget/k;->x:I

    rem-int v3, v11, v3

    .line 471
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/k;->x:I

    div-int/2addr v3, v4

    add-int/2addr v3, v7

    move v7, v3

    move v3, v4

    .line 475
    :goto_4
    const/4 v4, 0x0

    move v9, v10

    move v13, v4

    move v8, v3

    :goto_5
    if-ge v13, v5, :cond_19

    .line 476
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/support/v7/view/menu/s;

    .line 478
    invoke-virtual {v4}, Landroid/support/v7/view/menu/s;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 479
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    if-nez v3, :cond_6

    .line 481
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    .line 483
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/k;->v:Z

    if-eqz v3, :cond_8

    .line 484
    const/4 v3, 0x0

    invoke-static {v10, v7, v8, v15, v3}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v3

    sub-int v3, v8, v3

    .line 489
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 490
    sub-int v10, v11, v8

    .line 491
    if-nez v9, :cond_1d

    .line 494
    :goto_7
    invoke-virtual {v4}, Landroid/support/v7/view/menu/s;->getGroupId()I

    move-result v9

    .line 495
    if-eqz v9, :cond_7

    .line 496
    const/4 v11, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 498
    :cond_7
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/support/v7/view/menu/s;->c(Z)V

    move v4, v10

    move v9, v12

    .line 475
    :goto_8
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    move v11, v4

    move v12, v9

    move v9, v8

    move v8, v3

    goto :goto_5

    .line 487
    :cond_8
    invoke-virtual {v10, v15, v15}, Landroid/view/View;->measure(II)V

    move v3, v8

    goto :goto_6

    .line 499
    :cond_9
    invoke-virtual {v4}, Landroid/support/v7/view/menu/s;->f()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 502
    invoke-virtual {v4}, Landroid/support/v7/view/menu/s;->getGroupId()I

    move-result v17

    .line 503
    invoke-virtual/range {v16 .. v17}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v18

    .line 504
    if-gtz v12, :cond_a

    if-eqz v18, :cond_10

    :cond_a
    if-lez v11, :cond_10

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/k;->v:Z

    if-eqz v3, :cond_b

    if-lez v8, :cond_10

    :cond_b
    const/4 v3, 0x1

    .line 507
    :goto_9
    if-eqz v3, :cond_1c

    .line 508
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v2}, Landroid/support/v7/widget/k;->a(Landroid/support/v7/view/menu/s;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    if-nez v14, :cond_c

    .line 510
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/support/v7/widget/k;->z:Landroid/view/View;

    .line 512
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/support/v7/widget/k;->v:Z

    if-eqz v14, :cond_11

    .line 513
    const/4 v14, 0x0

    invoke-static {v10, v7, v8, v15, v14}, Landroid/support/v7/widget/ActionMenuView;->a(Landroid/view/View;IIII)I

    move-result v14

    .line 515
    sub-int/2addr v8, v14

    .line 516
    if-nez v14, :cond_d

    .line 517
    const/4 v3, 0x0

    .line 522
    :cond_d
    :goto_a
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 523
    sub-int/2addr v11, v10

    .line 524
    if-nez v9, :cond_e

    move v9, v10

    .line 528
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/support/v7/widget/k;->v:Z

    if-eqz v10, :cond_13

    .line 529
    if-ltz v11, :cond_12

    const/4 v10, 0x1

    :goto_b
    and-int/2addr v3, v10

    move v14, v3

    move v10, v8

    .line 536
    :goto_c
    if-eqz v14, :cond_15

    if-eqz v17, :cond_15

    .line 537
    const/4 v3, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move v3, v12

    .line 551
    :goto_d
    if-eqz v14, :cond_f

    add-int/lit8 v3, v3, -0x1

    .line 553
    :cond_f
    invoke-virtual {v4, v14}, Landroid/support/v7/view/menu/s;->c(Z)V

    move v8, v9

    move v4, v11

    move v9, v3

    move v3, v10

    .line 554
    goto :goto_8

    .line 504
    :cond_10
    const/4 v3, 0x0

    goto :goto_9

    .line 520
    :cond_11
    invoke-virtual {v10, v15, v15}, Landroid/view/View;->measure(II)V

    goto :goto_a

    .line 529
    :cond_12
    const/4 v10, 0x0

    goto :goto_b

    .line 532
    :cond_13
    add-int v10, v11, v9

    if-lez v10, :cond_14

    const/4 v10, 0x1

    :goto_e
    and-int/2addr v3, v10

    move v14, v3

    move v10, v8

    goto :goto_c

    :cond_14
    const/4 v10, 0x0

    goto :goto_e

    .line 538
    :cond_15
    if-eqz v18, :cond_1b

    .line 540
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 541
    const/4 v3, 0x0

    move v8, v12

    move v12, v3

    :goto_f
    if-ge v12, v13, :cond_1a

    .line 542
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/s;

    .line 543
    invoke-virtual {v3}, Landroid/support/v7/view/menu/s;->getGroupId()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_17

    .line 545
    invoke-virtual {v3}, Landroid/support/v7/view/menu/s;->e()Z

    move-result v18

    if-eqz v18, :cond_16

    add-int/lit8 v8, v8, 0x1

    .line 546
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/s;->c(Z)V

    .line 541
    :cond_17
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_f

    .line 556
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v7/view/menu/s;->c(Z)V

    move v3, v8

    move v4, v11

    move v8, v9

    move v9, v12

    goto/16 :goto_8

    .line 559
    :cond_19
    const/4 v2, 0x1

    return v2

    :cond_1a
    move v3, v8

    goto :goto_d

    :cond_1b
    move v3, v12

    goto :goto_d

    :cond_1c
    move v14, v3

    move v10, v8

    goto :goto_c

    :cond_1d
    move v8, v9

    goto/16 :goto_7

    :cond_1e
    move v7, v3

    move v3, v4

    goto/16 :goto_4

    :cond_1f
    move v3, v9

    goto/16 :goto_3
.end method

.method public final a(Landroid/support/v7/view/menu/an;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/view/menu/an;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v4

    :cond_1
    move-object v0, p1

    .line 3065
    :goto_1
    iget-object v1, v0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    .line 291
    iget-object v2, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eq v1, v2, :cond_2

    .line 4065
    iget-object v0, v0, Landroid/support/v7/view/menu/an;->l:Landroid/support/v7/view/menu/o;

    .line 292
    check-cast v0, Landroid/support/v7/view/menu/an;

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/view/menu/an;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    .line 4324
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/ViewGroup;

    .line 4325
    if-eqz v0, :cond_4

    .line 4327
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v4

    .line 4328
    :goto_2
    if-ge v5, v7, :cond_4

    .line 4329
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4330
    instance-of v1, v2, Landroid/support/v7/view/menu/ah;

    if-eqz v1, :cond_3

    move-object v1, v2

    check-cast v1, Landroid/support/v7/view/menu/ah;

    .line 4331
    invoke-interface {v1}, Landroid/support/v7/view/menu/ah;->getItemData()Landroid/support/v7/view/menu/s;

    move-result-object v1

    if-ne v1, v6, :cond_3

    .line 295
    :goto_3
    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/support/v7/view/menu/an;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/k;->q:I

    .line 306
    invoke-virtual {p1}, Landroid/support/v7/view/menu/an;->size()I

    move-result v1

    move v0, v4

    .line 307
    :goto_4
    if-ge v0, v1, :cond_7

    .line 308
    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/an;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 309
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    move v0, v3

    .line 315
    :goto_5
    new-instance v1, Landroid/support/v7/widget/l;

    iget-object v4, p0, Landroid/support/v7/widget/k;->b:Landroid/content/Context;

    invoke-direct {v1, p0, v4, p1, v2}, Landroid/support/v7/widget/l;-><init>(Landroid/support/v7/widget/k;Landroid/content/Context;Landroid/support/v7/view/menu/an;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    .line 316
    iget-object v1, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/l;->a(Z)V

    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    .line 5137
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ac;->b()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5138
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4328
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    .line 4335
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 307
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 319
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v7/view/menu/d;->a(Landroid/support/v7/view/menu/an;)Z

    move v4, v3

    .line 320
    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_5
.end method

.method public final a(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->e()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/ViewGroup;I)Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/d;->a(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroid/support/v7/widget/k;->r:Z

    .line 153
    iput-boolean v0, p0, Landroid/support/v7/widget/k;->s:Z

    .line 154
    return-void
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 343
    iget-boolean v0, p0, Landroid/support/v7/widget/k;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/k;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    .line 344
    invoke-virtual {v0}, Landroid/support/v7/view/menu/o;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/support/v7/widget/q;

    iget-object v1, p0, Landroid/support/v7/widget/k;->b:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    iget-object v3, p0, Landroid/support/v7/widget/k;->i:Landroid/support/v7/widget/o;

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v7/widget/q;-><init>(Landroid/support/v7/widget/k;Landroid/content/Context;Landroid/support/v7/view/menu/o;Landroid/view/View;)V

    .line 346
    new-instance v1, Landroid/support/v7/widget/n;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/n;-><init>(Landroid/support/v7/widget/k;Landroid/support/v7/widget/q;)V

    iput-object v1, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 352
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/d;->a(Landroid/support/v7/view/menu/an;)Z

    .line 354
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 365
    iget-object v0, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Landroid/support/v7/widget/k;->g:Landroid/support/v7/view/menu/ag;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/k;->o:Landroid/support/v7/widget/n;

    move v0, v1

    .line 376
    :goto_0
    return v0

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/k;->A:Landroid/support/v7/widget/q;

    .line 372
    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/support/v7/view/menu/ac;->c()V

    move v0, v1

    .line 374
    goto :goto_0

    .line 376
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Z
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->d()Z

    move-result v0

    .line 385
    invoke-virtual {p0}, Landroid/support/v7/widget/k;->f()Z

    move-result v1

    or-int/2addr v0, v1

    .line 386
    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Landroid/support/v7/widget/k;->B:Landroid/support/v7/widget/l;

    invoke-virtual {v0}, Landroid/support/v7/widget/l;->c()V

    .line 397
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/k;->A:Landroid/support/v7/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/k;->A:Landroid/support/v7/widget/q;

    invoke-virtual {v0}, Landroid/support/v7/widget/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onSubUiVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 593
    if-eqz p1, :cond_1

    .line 595
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/view/menu/d;->a(Landroid/support/v7/view/menu/an;)Z

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/k;->c:Landroid/support/v7/view/menu/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->a(Z)V

    goto :goto_0
.end method
