.class final Lcom/nut/blehunter/ui/eu;
.super Landroid/support/v4/view/PagerAdapter;
.source "RegisterActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;

.field private final b:[Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    iput-object p1, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 498
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v3, 0x7f060196

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v3, 0x7f060195

    invoke-virtual {v2, v3}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nut/blehunter/ui/eu;->b:[Ljava/lang/String;

    .line 503
    iput-object p2, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    .line 504
    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 541
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const v3, 0x7f0d01d6

    .line 523
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 526
    packed-switch p2, :pswitch_data_0

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1544
    :pswitch_0
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d01a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1545
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nut/blehunter/ui/widget/ClearEditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Lcom/nut/blehunter/ui/widget/ClearEditText;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    .line 1546
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1547
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1548
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1549
    iget-object v1, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/RegisterActivity;->d(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1552
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/RegisterActivity;->e(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1553
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/RegisterActivity;->e(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v3}, Lcom/nut/blehunter/d/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1555
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v3, 0x7f0d01da

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v2, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1556
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1557
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1559
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->f(Lcom/nut/blehunter/ui/RegisterActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    new-instance v2, Lcom/nut/blehunter/ui/ev;

    invoke-direct {v2, p0}, Lcom/nut/blehunter/ui/ev;-><init>(Lcom/nut/blehunter/ui/eu;)V

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/widget/ClearEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1584
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->j(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1585
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->k(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1586
    iget-object v0, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->c(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 1590
    :pswitch_1
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->c(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1591
    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const v1, 0x7f0d023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->d(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 1592
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1594
    iget-object v1, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/RegisterActivity;->l(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1595
    iget-object v1, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/RegisterActivity;->m(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1596
    iget-object v1, p0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->c(Lcom/nut/blehunter/ui/RegisterActivity;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 513
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
