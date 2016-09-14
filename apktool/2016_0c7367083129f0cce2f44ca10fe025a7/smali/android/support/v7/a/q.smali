.class public final Landroid/support/v7/a/q;
.super Landroid/support/v7/a/av;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private final a:Landroid/support/v7/a/d;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 95
    invoke-static {p1, p2}, Landroid/support/v7/a/q;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/a/av;-><init>(Landroid/content/Context;I)V

    .line 96
    new-instance v0, Landroid/support/v7/a/d;

    invoke-virtual {p0}, Landroid/support/v7/a/q;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v7/a/q;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Landroid/support/v7/a/d;-><init>(Landroid/content/Context;Landroid/support/v7/a/av;Landroid/view/Window;)V

    iput-object v0, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    .line 97
    return-void
.end method

.method static synthetic a(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 70
    invoke-static {p0, p1}, Landroid/support/v7/a/q;->b(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/v7/a/q;)Landroid/support/v7/a/d;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    return-object v0
.end method

.method private static b(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 107
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 112
    :goto_0
    return p1

    .line 110
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->alertDialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 112
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/support/v7/a/av;->onCreate(Landroid/os/Bundle;)V

    .line 257
    iget-object v4, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    .line 1219
    iget v0, v4, Landroid/support/v7/a/d;->G:I

    if-eqz v0, :cond_b

    .line 1222
    iget v0, v4, Landroid/support/v7/a/d;->L:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1223
    iget v0, v4, Landroid/support/v7/a/d;->G:I

    .line 1214
    :goto_0
    iget-object v1, v4, Landroid/support/v7/a/d;->b:Landroid/support/v7/a/av;

    invoke-virtual {v1, v0}, Landroid/support/v7/a/av;->setContentView(I)V

    .line 1444
    iget-object v0, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1445
    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1446
    sget v1, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1447
    sget v1, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1451
    sget v1, Landroid/support/v7/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1596
    iget-object v1, v4, Landroid/support/v7/a/d;->g:Landroid/view/View;

    if-eqz v1, :cond_c

    .line 1597
    iget-object v1, v4, Landroid/support/v7/a/d;->g:Landroid/view/View;

    move-object v2, v1

    .line 1605
    :goto_1
    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 1606
    :goto_2
    if-eqz v1, :cond_0

    invoke-static {v2}, Landroid/support/v7/a/d;->a(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1607
    :cond_0
    iget-object v7, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    const/high16 v8, 0x20000

    const/high16 v9, 0x20000

    invoke-virtual {v7, v8, v9}, Landroid/view/Window;->setFlags(II)V

    .line 1611
    :cond_1
    if-eqz v1, :cond_f

    .line 1612
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v7, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v1, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 1613
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    iget-boolean v2, v4, Landroid/support/v7/a/d;->m:Z

    if-eqz v2, :cond_2

    .line 1616
    iget v2, v4, Landroid/support/v7/a/d;->i:I

    iget v7, v4, Landroid/support/v7/a/d;->j:I

    iget v8, v4, Landroid/support/v7/a/d;->k:I

    iget v9, v4, Landroid/support/v7/a/d;->l:I

    invoke-virtual {v1, v2, v7, v8, v9}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1620
    :cond_2
    iget-object v1, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_3

    .line 1621
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1454
    :cond_3
    :goto_3
    sget v1, Landroid/support/v7/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1455
    sget v2, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1456
    sget v7, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1459
    invoke-static {v1, v3}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 1460
    invoke-static {v2, v5}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 1461
    invoke-static {v7, v6}, Landroid/support/v7/a/d;->a(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    .line 1675
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/NestedScrollView;

    iput-object v1, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    .line 1676
    iget-object v1, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 1677
    iget-object v1, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 1680
    const v1, 0x102000b

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    .line 1681
    iget-object v1, v4, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 1685
    iget-object v1, v4, Landroid/support/v7/a/d;->e:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    .line 1686
    iget-object v1, v4, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    iget-object v2, v4, Landroid/support/v7/a/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    :cond_4
    :goto_4
    const/4 v2, 0x0

    .line 1719
    const v1, 0x1020019

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    .line 1720
    iget-object v1, v4, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    iget-object v7, v4, Landroid/support/v7/a/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1722
    iget-object v1, v4, Landroid/support/v7/a/d;->o:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1723
    iget-object v1, v4, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1730
    :goto_5
    const v1, 0x102001a

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    .line 1731
    iget-object v1, v4, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    iget-object v7, v4, Landroid/support/v7/a/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1733
    iget-object v1, v4, Landroid/support/v7/a/d;->r:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1734
    iget-object v1, v4, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1742
    :goto_6
    const v1, 0x102001b

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    .line 1743
    iget-object v1, v4, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    iget-object v7, v4, Landroid/support/v7/a/d;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1745
    iget-object v1, v4, Landroid/support/v7/a/d;->u:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1746
    iget-object v1, v4, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1754
    :goto_7
    if-eqz v2, :cond_15

    const/4 v1, 0x1

    .line 1755
    :goto_8
    if-nez v1, :cond_5

    .line 1756
    const/16 v1, 0x8

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2629
    :cond_5
    iget-object v1, v4, Landroid/support/v7/a/d;->C:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 2631
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v7, -0x2

    invoke-direct {v1, v2, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2634
    iget-object v2, v4, Landroid/support/v7/a/d;->C:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2637
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2638
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1467
    :goto_9
    if-eqz v0, :cond_1b

    .line 1468
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1b

    const/4 v0, 0x1

    move v2, v0

    .line 1469
    :goto_a
    if-eqz v3, :cond_1c

    .line 1470
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    move v1, v0

    .line 1471
    :goto_b
    if-eqz v6, :cond_1d

    .line 1472
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1d

    const/4 v0, 0x1

    move v3, v0

    .line 1475
    :goto_c
    if-nez v3, :cond_6

    .line 1476
    if-eqz v5, :cond_6

    .line 1477
    sget v0, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1478
    if-eqz v0, :cond_6

    .line 1479
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1484
    :cond_6
    if-eqz v1, :cond_7

    .line 1486
    iget-object v0, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_7

    .line 1487
    iget-object v0, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    .line 1492
    :cond_7
    if-nez v2, :cond_9

    .line 1493
    iget-object v0, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    if-eqz v0, :cond_1e

    iget-object v0, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    move-object v2, v0

    .line 1494
    :goto_d
    if-eqz v2, :cond_9

    .line 1495
    if-eqz v1, :cond_1f

    const/4 v0, 0x1

    move v1, v0

    :goto_e
    if-eqz v3, :cond_20

    const/4 v0, 0x2

    :goto_f
    or-int v3, v1, v0

    .line 3516
    iget-object v0, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v1, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3517
    iget-object v0, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v6, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3519
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_21

    .line 3521
    const/4 v6, 0x3

    invoke-static {v2, v3, v6}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    .line 3523
    if-eqz v1, :cond_8

    .line 3524
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3526
    :cond_8
    if-eqz v0, :cond_9

    .line 3527
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1502
    :cond_9
    :goto_10
    iget-object v0, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    .line 1503
    if-eqz v0, :cond_a

    iget-object v1, v4, Landroid/support/v7/a/d;->D:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_a

    .line 1504
    iget-object v1, v4, Landroid/support/v7/a/d;->D:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1505
    iget v1, v4, Landroid/support/v7/a/d;->E:I

    .line 1506
    if-ltz v1, :cond_a

    .line 1507
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1508
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 258
    :cond_a
    return-void

    .line 1225
    :cond_b
    iget v0, v4, Landroid/support/v7/a/d;->F:I

    goto/16 :goto_0

    .line 1598
    :cond_c
    iget v1, v4, Landroid/support/v7/a/d;->h:I

    if-eqz v1, :cond_d

    .line 1599
    iget-object v1, v4, Landroid/support/v7/a/d;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1600
    iget v2, v4, Landroid/support/v7/a/d;->h:I

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1601
    goto/16 :goto_1

    .line 1602
    :cond_d
    const/4 v1, 0x0

    move-object v2, v1

    goto/16 :goto_1

    .line 1605
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1624
    :cond_f
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 1688
    :cond_10
    iget-object v1, v4, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1689
    iget-object v1, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, v4, Landroid/support/v7/a/d;->B:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    .line 1691
    iget-object v1, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    if-eqz v1, :cond_11

    .line 1692
    iget-object v1, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1693
    iget-object v2, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1694
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1695
    iget-object v7, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 1698
    :cond_11
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    .line 1725
    :cond_12
    iget-object v1, v4, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    iget-object v2, v4, Landroid/support/v7/a/d;->o:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    iget-object v1, v4, Landroid/support/v7/a/d;->n:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1727
    const/4 v1, 0x1

    move v2, v1

    goto/16 :goto_5

    .line 1736
    :cond_13
    iget-object v1, v4, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    iget-object v7, v4, Landroid/support/v7/a/d;->r:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1737
    iget-object v1, v4, Landroid/support/v7/a/d;->q:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1739
    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_6

    .line 1748
    :cond_14
    iget-object v1, v4, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    iget-object v7, v4, Landroid/support/v7/a/d;->u:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1749
    iget-object v1, v4, Landroid/support/v7/a/d;->t:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 1751
    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_7

    .line 1754
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_8

    .line 2640
    :cond_16
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    .line 2642
    iget-object v1, v4, Landroid/support/v7/a/d;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    .line 2643
    :goto_11
    if-eqz v1, :cond_1a

    .line 2645
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v4, Landroid/support/v7/a/d;->A:Landroid/widget/TextView;

    .line 2646
    iget-object v1, v4, Landroid/support/v7/a/d;->A:Landroid/widget/TextView;

    iget-object v2, v4, Landroid/support/v7/a/d;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2651
    iget v1, v4, Landroid/support/v7/a/d;->x:I

    if-eqz v1, :cond_18

    .line 2652
    iget-object v1, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    iget v2, v4, Landroid/support/v7/a/d;->x:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 2642
    :cond_17
    const/4 v1, 0x0

    goto :goto_11

    .line 2653
    :cond_18
    iget-object v1, v4, Landroid/support/v7/a/d;->y:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 2654
    iget-object v1, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    iget-object v2, v4, Landroid/support/v7/a/d;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 2658
    :cond_19
    iget-object v1, v4, Landroid/support/v7/a/d;->A:Landroid/widget/TextView;

    iget-object v2, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    iget-object v7, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    .line 2659
    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v7

    iget-object v8, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    .line 2660
    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v8

    iget-object v9, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    .line 2661
    invoke-virtual {v9}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v9

    .line 2658
    invoke-virtual {v1, v2, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2662
    iget-object v1, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 2666
    :cond_1a
    iget-object v1, v4, Landroid/support/v7/a/d;->c:Landroid/view/Window;

    sget v2, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2667
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2668
    iget-object v1, v4, Landroid/support/v7/a/d;->z:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2669
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 1468
    :cond_1b
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_a

    .line 1470
    :cond_1c
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_b

    .line 1472
    :cond_1d
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_c

    .line 1493
    :cond_1e
    iget-object v0, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    move-object v2, v0

    goto/16 :goto_d

    .line 1495
    :cond_1f
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_e

    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 3531
    :cond_21
    if-eqz v1, :cond_22

    and-int/lit8 v2, v3, 0x1

    if-nez v2, :cond_22

    .line 3532
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3533
    const/4 v1, 0x0

    .line 3535
    :cond_22
    if-eqz v0, :cond_23

    and-int/lit8 v2, v3, 0x2

    if-nez v2, :cond_23

    .line 3536
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3537
    const/4 v0, 0x0

    .line 3540
    :cond_23
    if-nez v1, :cond_24

    if-eqz v0, :cond_9

    .line 3544
    :cond_24
    iget-object v2, v4, Landroid/support/v7/a/d;->e:Ljava/lang/CharSequence;

    if-eqz v2, :cond_25

    .line 3546
    iget-object v2, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/a/f;

    invoke-direct {v3, v4, v1, v0}, Landroid/support/v7/a/f;-><init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    .line 3556
    iget-object v2, v4, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    new-instance v3, Landroid/support/v7/a/g;

    invoke-direct {v3, v4, v1, v0}, Landroid/support/v7/a/g;-><init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    .line 3562
    :cond_25
    iget-object v2, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    .line 3564
    iget-object v2, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/a/h;

    invoke-direct {v3, v4, v1, v0}, Landroid/support/v7/a/h;-><init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3575
    iget-object v2, v4, Landroid/support/v7/a/d;->f:Landroid/widget/ListView;

    new-instance v3, Landroid/support/v7/a/i;

    invoke-direct {v3, v4, v1, v0}, Landroid/support/v7/a/i;-><init>(Landroid/support/v7/a/d;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_10

    .line 3583
    :cond_26
    if-eqz v1, :cond_27

    .line 3584
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3586
    :cond_27
    if-eqz v0, :cond_9

    .line 3587
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_10
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-object v1, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    .line 4399
    iget-object v2, v1, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 262
    :goto_0
    if-eqz v1, :cond_1

    .line 265
    :goto_1
    return v0

    .line 4399
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/a/av;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 270
    iget-object v1, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    .line 4404
    iget-object v2, v1, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v7/a/d;->w:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 270
    :goto_0
    if-eqz v1, :cond_1

    .line 273
    :goto_1
    return v0

    .line 4404
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 273
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/a/av;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v7/a/av;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/a/q;->a:Landroid/support/v7/a/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/a/d;->a(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method
